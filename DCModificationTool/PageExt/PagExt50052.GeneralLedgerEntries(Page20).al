pageextension 50052 PagExtGLE extends "General Ledger Entries"
{
    actions
    {
        addlast(processing)
        {
            action(ChangeAccNo)
            {
                ApplicationArea = All;
                Caption = 'Change Account No.';
                Image = Change;
                Ellipsis = true;
                Promoted = true;
                PromotedCategory = Process;
                Scope = Repeater;
                Visible = false;

                trigger OnAction()
                var
                    lGLE: Record "G/L Entry";
                    // lPageChangeAccNo: Page "Change Account No";
                    lErr: Label 'You can not change account of document type %1.';
                begin
                    if not (Rec."Document Type" in [Rec."Document Type"::" ",
                                                     Rec."Document Type"::Payment])
                    then
                        Error(StrSubstNo(lErr, Rec."Document Type"));
                    lGLE := Rec;
                    CurrPage.SETSELECTIONFILTER(lGLE);
                    REPORT.RUN(REPORT::"Change G/L Account", true, FALSE, lGLE);
                    // lPageChangeAccNo.SetGLE(Rec."Posting Date", Rec."Document No.", Rec."G/L Account No.", Rec."Entry No.");
                    // lPageChangeAccNo.RunModal();
                end;
            }
            Action(ModifiedAccount)
            {
                Caption = 'Modify G/L Account';
                Image = UpdateDescription;
                Promoted = true;
                PromotedCategory = Process;
                Visible = gVisibleAction;
                ApplicationArea = All;
                trigger OnAction()
                var
                    ModifyAccount: Report "Modified G/L Entry-Account";
                    GLRegister: Record "G/L Register";
                    Text1000000001: Label 'It''s Impossible to select posting having VAT entries';
                    lErr: Label 'You can not change account of document type %1.';
                begin
                    if not (Rec."Document Type" in [Rec."Document Type"::" ",
                                                    Rec."Document Type"::Payment])
                   then
                        Error(StrSubstNo(lErr, Rec."Document Type"));

                    GLRegister.SETFILTER("From Entry No.", '<=%1', Rec."Entry No.");
                    GLRegister.SETFILTER("To Entry No.", '>=%1', Rec."Entry No.");
                    GLRegister.FINDFIRST;

                    IF (GLRegister."From VAT Entry No." < GLRegister."To VAT Entry No.") then
                        ERROR(Text1000000001);


                    ModifyAccount.GetEntryNo(Rec."Entry No.");
                    ModifyAccount.RUNMODAL;
                end;
            }
            // action(UpdateBankAccount)
            // {
            //     Caption = 'Update Bank Account';
            //     Image = UpdateDescription;
            //     Promoted = true;
            //     PromotedCategory = Process;
            //     Visible = false;
            //     ApplicationArea = All;

            //     trigger OnAction()
            //     var
            //         ModifyBankAccount: Report 61674;
            //     begin
            //         ModifyBankAccount.GetEntryNo("Entry No.");
            //         ModifyBankAccount.RUNMODAL;
            //     END;
            // }
            action(DeleteEntry)
            {
                ApplicationArea = All;
                Caption = 'Delete Entry';
                Image = DeleteQtyToHandle;
                Promoted = true;
                PromotedCategory = Process;
                Visible = gVisibleAction;

                trigger OnAction()
                var
                    lDelete: Page "Delete";
                    lErr: Label 'You can not delete entries with document type %1.';
                begin
                    if not (Rec."Document Type" in [Rec."Document Type"::" ",
                                                     Rec."Document Type"::Payment])
                                                    //Rec."Document Type"::"Credit Memo",
                                                    //Rec."Document Type"::Invoice
                                                    then
                        Error(StrSubstNo(lErr, Rec."Document Type"));
                    gCreateRec := false;
                    SetGeneralLedgTemp(Rec."Posting Date", Rec."Document No.");
                    lDelete.SetGLE(Rec."Posting Date", Rec."Document No.", Rec."Entry No.");
                    lDelete.RunModal();
                    GetGeneralLedgTemp()
                end;
            }
            Action(ChangePostingDate1)
            {
                Caption = 'Change Posting Date';
                Image = Change;
                Promoted = true;
                PromotedCategory = Process;
                Visible = gVisibleAction;
                ApplicationArea = All;
                trigger OnAction()
                var
                    lGLE: Record "G/L Entry";
                    lErr: Label 'You can not change account of document type %1.';
                begin
                    if not (Rec."Document Type" in [Rec."Document Type"::" ",
                                                    Rec."Document Type"::Payment])
                   then
                        Error(StrSubstNo(lErr, Rec."Document Type"));

                    lGLE := Rec;
                    CurrPage.SETSELECTIONFILTER(lGLE);
                    REPORT.RUN(REPORT::"ChangePostingDateGLE", true, FALSE, lGLE);

                end;
            }
        }
    }

    var
        gModifyDocTool: Codeunit "Modify Documents Tool";
        gVisibleAction: Boolean;
        GenerLedgTemp: Record "Gen. Journal Line" temporary;
        GenLedgerSetup: Record "General Ledger Setup";
        gCreateRec: Boolean;

    trigger OnOpenPage()
    var
        lUserSetup: Record "User Setup";
    begin
        gVisibleAction := lUserSetup.CheckVisibilityModifyDocPageActions();
    end;


    local procedure SetGeneralLedgTemp(PostingDate: Date; DocNo: Code[20])
    var
        lGlEntry: Record "G/L Entry";
        LineNo: Integer;
        lconfirm: Label 'Do you want to save the records in General Journal Lines?';
    begin
        if Not Confirm(lconfirm) then
            exit;

        GenLedgerSetup.get;
        GenLedgerSetup.TestField("Default Gen. Jnl Tempalate");
        GenLedgerSetup.TestField("Default Gen. Jnl Batch");
        gCreateRec := true;
        Clear(GenerLedgTemp);
        LineNo := 0;
        lGlEntry.Reset();
        lGlEntry.SetRange("Document No.", DocNo);
        lGlEntry.SetRange("Posting Date", PostingDate);
        if lGlEntry.FindSet() then
            repeat
                GenerLedgTemp.Init();
                GenerLedgTemp."Journal Template Name" := GenLedgerSetup."Default Gen. Jnl Tempalate";
                GenerLedgTemp."Journal Batch Name" := GenLedgerSetup."Default Gen. Jnl Batch";
                if LineNo = 0 then
                    GenerLedgTemp."Line No." := LastLineNo(GenerLedgTemp."Journal Template Name", GenerLedgTemp."Journal Batch Name")
                else
                    GenerLedgTemp."Line No." := LineNo + 10000;
                LineNo := GenerLedgTemp."Line No.";
                GenerLedgTemp."Document No." := lGlEntry."Document No.";
                GenerLedgTemp."Posting Date" := lGlEntry."Posting Date";
                GenerLedgTemp."Account Type" := GenerLedgTemp."Account Type"::"G/L Account";
                GenerLedgTemp."Account No." := lGlEntry."G/L Account No.";
                GenerLedgTemp.Amount := lGlEntry.Amount;
                // GenerLedgTemp."Bal. Account Type" := lGlEntry."Bal. Account Type";
                // GenerLedgTemp."Bal. Account No." := lGlEntry."Bal. Account No.";
                GenerLedgTemp."Shortcut Dimension 1 Code" := lGlEntry."Global Dimension 1 Code";
                GenerLedgTemp."Shortcut Dimension 2 Code" := lGlEntry."Global Dimension 2 Code";
                GenerLedgTemp.Insert();
            until lGlEntry.Next() = 0;
    end;


    local procedure GetGeneralLedgTemp()
    var
        GenJournalLine: Record "Gen. Journal Line";
    begin
        if not gCreateRec then
            exit;
        GenLedgerSetup.get;
        GenLedgerSetup.TestField("Default Gen. Jnl Tempalate");
        GenLedgerSetup.TestField("Default Gen. Jnl Batch");
        if GenerLedgTemp.Find('-') then
            repeat


                GenJournalLine.Init();
                GenJournalLine."Journal Template Name" := GenLedgerSetup."Default Gen. Jnl Tempalate";
                GenJournalLine."Journal Batch Name" := GenLedgerSetup."Default Gen. Jnl Batch";
                GenJournalLine."Line No." := LastLineNo(GenJournalLine."Journal Template Name", GenJournalLine."Journal Batch Name");
                GenJournalLine."Document No." := GenerLedgTemp."Document No.";
                GenJournalLine."Posting Date" := GenerLedgTemp."Posting Date";
                GenJournalLine."Account Type" := GenerLedgTemp."Account Type"::"G/L Account";
                GenJournalLine.validate("Account No.", GenerLedgTemp."Account No.");
                GenJournalLine.validate(Amount, GenerLedgTemp.Amount);
                // GenJournalLine."Bal. Account Type" := GenerLedgTemp."Bal. Account Type";
                // GenJournalLine.validate("Bal. Account No.", GenerLedgTemp."Bal. Account No.");
                GenJournalLine."Shortcut Dimension 1 Code" := GenerLedgTemp."Shortcut Dimension 1 Code";
                GenJournalLine."Shortcut Dimension 2 Code" := GenerLedgTemp."Shortcut Dimension 1 Code";
                GenJournalLine.Insert();
            until GenerLedgTemp.Next() = 0;
    end;

    local procedure LastLineNo(TemplateName: Code[10]; BatchName: code[10]): Integer
    var
        GenJournalLine: Record "Gen. Journal Line";
    begin
        GenJournalLine.Reset();
        GenJournalLine.SetRange("Journal Template Name", TemplateName);
        GenJournalLine.SetRange("Journal Batch Name", BatchName);
        if GenJournalLine.FindLast() then
            exit(GenJournalLine."Line No." + 10000)
        else
            exit(10000)
    end;
}