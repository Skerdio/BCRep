page 50028 "Change Account No"
{
    Caption = 'Change Account No.';
    PageType = Card;
    PromotedActionCategories = 'Process';
    SaveValues = false;
    Permissions = TableData "Purch. Inv. Header" = rimd, tabledata "G/L Entry" = rimd, tabledata "VAT Entry" = rimd,
    tabledata "Vendor Ledger Entry" = rimd, tabledata "Detailed Vendor Ledg. Entry" = rimd, tabledata "G/L Entry - VAT Entry Link" = rimd,
    tabledata "Purch. Inv. Line" = rimd, tabledata "Sales Invoice Line" = rimd, tabledata "Sales Invoice header" = rimd;
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Tipo Movimento"; EntryType)
                {
                    Caption = 'Entry Type';
                    OptionCaption = ' ,Purchase,Sale,Settlement';
                    Editable = gEntryTypeEdit;
                    ApplicationArea = all;
                }
                field("Tipo Documento"; DocType)
                {
                    Caption = 'Document Type';
                    Editable = gDocTypeEdit;
                    OptionCaption = ' ,Invoice,Credit Memo';
                    ApplicationArea = all;
                }
                field("Nr. Documento"; DocNo)
                {
                    Caption = 'Document No.';
                    Editable = gDocNoEdit;
                    ApplicationArea = all;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DocNo := '';

                        if EntryType = EntryType::" " then Error(Text000);
                        if DocType = DocType::" " then Error(Text001);

                        if EntryType = EntryType::Sale then begin
                            if DocType = DocType::Invoice then begin
                                gSaleInvHeader.Reset;
                                if gSaleInvHeader.FindFirst then;
                                if PAGE.RunModal(PAGE::"Posted Sales Invoices", gSaleInvHeader) = ACTION::LookupOK then
                                    DocNo := gSaleInvHeader."No.";
                            end else
                                if DocType = DocType::"Credit Memo" then begin
                                    gSaleCrMemoHeader.Reset;
                                    if gSaleCrMemoHeader.FindFirst then;
                                    if PAGE.RunModal(PAGE::"Posted Sales Credit Memos", gSaleCrMemoHeader) = ACTION::LookupOK then
                                        DocNo := gSaleCrMemoHeader."No.";
                                end;
                        end else
                            if EntryType = EntryType::Purchase then begin
                                if DocType = DocType::Invoice then begin
                                    gPurchInvHeader.Reset;
                                    if gPurchInvHeader.FindFirst then;
                                    if PAGE.RunModal(PAGE::"Posted Purchase Invoices", gPurchInvHeader) = ACTION::LookupOK then
                                        DocNo := gPurchInvHeader."No.";
                                end else
                                    if DocType = DocType::"Credit Memo" then begin
                                        gPurchCrMemoHeader.Reset;
                                        if gPurchCrMemoHeader.FindFirst then;
                                        if PAGE.RunModal(PAGE::"Posted Purchase Credit Memos", gPurchCrMemoHeader) = ACTION::LookupOK then
                                            DocNo := gPurchCrMemoHeader."No.";
                                    end;
                            end;
                    end;

                    trigger OnValidate()
                    begin
                        if DocNo <> '' then begin

                            if EntryType = EntryType::" " then Error(Text000);
                            if DocType = DocType::" " then Error(Text001);

                            if EntryType = EntryType::Sale then begin
                                if DocType = DocType::Invoice then begin
                                    gSaleInvHeader.Get(DocNo);
                                end else
                                    if DocType = DocType::"Credit Memo" then begin
                                        gSaleCrMemoHeader.Get(DocNo);
                                    end;
                            end else
                                if EntryType = EntryType::Purchase then begin
                                    if DocType = DocType::Invoice then begin
                                        gPurchInvHeader.Get(DocNo);
                                    end else
                                        if DocType = DocType::"Credit Memo" then begin
                                            gPurchCrMemoHeader.Get(DocNo);
                                        end;
                                end;

                        end;
                    end;
                }
                field("Conto da Modificare"; OldAccNo)
                {
                    Caption = 'Account to be Modified';
                    Editable = gOldAccNoEdit;
                    ApplicationArea = all;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        OldAccNo := '';
                        Linefound := false;

                        if EntryType = EntryType::" " then Error(Text000);
                        if DocType = DocType::" " then Error(Text001);
                        if DocNo = '' then Error(Text002);

                        if EntryType = EntryType::Sale then begin
                            if DocType = DocType::Invoice then begin
                                gSaleInvLine.Reset;
                                gSaleInvLine.SetRange("Document No.", DocNo);
                                gSaleInvLine.SetRange(Type, gSaleInvLine.Type::"G/L Account");
                                if gSaleInvLine.FindFirst then;
                                if PAGE.RunModal(PAGE::"Posted Sales Invoice Lines", gSaleInvLine) = ACTION::LookupOK then begin
                                    OldAccNo := gSaleInvLine."No.";
                                    Linefound := true;
                                end;
                            end else
                                if DocType = DocType::"Credit Memo" then begin
                                    gSaleCrMemoLine.Reset;
                                    gSaleCrMemoLine.SetRange("Document No.", DocNo);
                                    gSaleCrMemoLine.SetRange(Type, gSaleCrMemoLine.Type::"G/L Account");
                                    if gSaleCrMemoLine.FindFirst then;
                                    if PAGE.RunModal(PAGE::"Posted Sales Credit Memo Lines", gSaleCrMemoLine) = ACTION::LookupOK then begin
                                        OldAccNo := gSaleCrMemoLine."No.";
                                        Linefound := true;
                                    end;
                                end;
                        end else
                            if EntryType = EntryType::Purchase then begin
                                if DocType = DocType::Invoice then begin
                                    gPurchInvLine.Reset;
                                    gPurchInvLine.SetRange("Document No.", DocNo);
                                    gPurchInvLine.SetRange(Type, gPurchInvLine.Type::"G/L Account");
                                    if gPurchInvLine.FindFirst then;
                                    if PAGE.RunModal(PAGE::"Posted Purchase Invoice Lines", gPurchInvLine) = ACTION::LookupOK then begin
                                        OldAccNo := gPurchInvLine."No.";
                                        Linefound := true;
                                    end;
                                end else
                                    if DocType = DocType::"Credit Memo" then begin
                                        gPurchCrMemoLine.Reset;
                                        gPurchCrMemoLine.SetRange("Document No.", DocNo);
                                        gPurchCrMemoLine.SetRange(Type, gPurchCrMemoLine.Type::"G/L Account");
                                        if gPurchCrMemoLine.FindFirst then;
                                        if PAGE.RunModal(PAGE::"Posted Purchase Cr. Memo Lines", gPurchCrMemoLine) = ACTION::LookupOK then begin
                                            OldAccNo := gPurchCrMemoLine."No.";
                                            Linefound := true;
                                        end;
                                    end;
                            end;

                        if not Linefound then
                            Error(Text008);

                        if CheckAccLines(OldAccNo) > 1 then begin
                            if not Confirm(Text005, false, OldAccNo) then
                                Error(Text009);
                        end;
                    end;

                    trigger OnValidate()
                    begin
                        Linefound := false;

                        if OldAccNo <> '' then begin

                            if EntryType = EntryType::" " then Error(Text000);
                            if DocType = DocType::" " then Error(Text001);
                            if DocNo = '' then Error(Text002);

                            if EntryType = EntryType::Sale then begin
                                if DocType = DocType::Invoice then begin
                                    gSaleInvLine.Reset;
                                    gSaleInvLine.SetRange("Document No.", DocNo);
                                    gSaleInvLine.SetRange(Type, gSaleInvLine.Type::"G/L Account");
                                    gSaleInvLine.SetRange("No.", OldAccNo);
                                    if gSaleInvLine.FindFirst then
                                        Linefound := true;
                                end else
                                    if DocType = DocType::"Credit Memo" then begin
                                        gSaleCrMemoLine.Reset;
                                        gSaleCrMemoLine.SetRange("Document No.", DocNo);
                                        gSaleCrMemoLine.SetRange(Type, gSaleCrMemoLine.Type::"G/L Account");
                                        gSaleCrMemoLine.SetRange("No.", OldAccNo);
                                        if gSaleCrMemoLine.FindFirst then
                                            Linefound := true;
                                    end;
                            end else
                                if EntryType = EntryType::Purchase then begin
                                    if DocType = DocType::Invoice then begin
                                        gPurchInvLine.Reset;
                                        gPurchInvLine.SetRange("Document No.", DocNo);
                                        gPurchInvLine.SetRange(Type, gPurchInvLine.Type::"G/L Account");
                                        gPurchInvLine.SetRange("No.", OldAccNo);
                                        if gPurchInvLine.FindFirst then
                                            Linefound := true;
                                    end else
                                        if DocType = DocType::"Credit Memo" then begin
                                            gPurchCrMemoLine.Reset;
                                            gPurchCrMemoLine.SetRange("Document No.", DocNo);
                                            gPurchCrMemoLine.SetRange(Type, gPurchCrMemoLine.Type::"G/L Account");
                                            gPurchCrMemoLine.SetRange("No.", OldAccNo);
                                            if gPurchCrMemoLine.FindFirst then
                                                Linefound := true;
                                        end;
                                end;

                            if not Linefound then
                                Error(Text008);

                            if CheckAccLines(OldAccNo) > 1 then begin
                                if not Confirm(Text005, false, OldAccNo) then
                                    Error(Text009);
                            end;

                        end;
                    end;
                }
                field("Nuovo Conto"; NewAccNo)
                {
                    Caption = 'New Account No.';
                    ApplicationArea = all;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        NewAccNo := '';

                        if EntryType = EntryType::" " then Error(Text000);
                        if DocType = DocType::" " then Error(Text001);
                        if DocNo = '' then Error(Text002);
                        if OldAccNo = '' then Error(Text003);

                        GLAcc.Reset;
                        if GLAcc.FindFirst then;
                        if PAGE.RunModal(PAGE::"Chart of Accounts", GLAcc) = ACTION::LookupOK then
                            NewAccNo := GLAcc."No.";

                        if NewAccNo <> '' then begin
                            GLAcc.Get(NewAccNo);
                            GLAcc.TestField("Direct Posting", true);
                            if CheckAccLines(NewAccNo) > 1 then
                                Error(Err001, NewAccNo);
                        end;
                    end;

                    trigger OnValidate()
                    begin
                        if NewAccNo <> '' then begin
                            if EntryType = EntryType::" " then Error(Text000);
                            if DocType = DocType::" " then Error(Text001);
                            if DocNo = '' then Error(Text002);
                            if OldAccNo = '' then Error(Text003);

                            GLAcc.Get(NewAccNo);
                            GLAcc.TestField("Direct Posting", true);
                            if CheckAccLines(NewAccNo) > 1 then
                                Error(Err001, NewAccNo);
                        end;
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            group(Process)
            {
                Caption = 'Process';
                action(Modifica)
                {
                    Caption = 'Update';
                    ApplicationArea = all;
                    Image = UpdateDescription;
                    Promoted = true;
                    PromotedCategory = Process;

                    trigger OnAction()
                    begin
                        if DoCheck then
                            Update;

                        Message(Text006);
                    end;
                }
            }
        }
    }

    var
        EntryType: Option " ",Purchase,Sale;
        DocType: Option " ",Invoice,"Credit Memo";
        DocNo: Code[20];
        OldAccNo: Code[20];
        NewAccNo: Code[20];
        gSaleInvHeader: Record "Sales Invoice Header";
        gSaleInvLine: Record "Sales Invoice Line";
        gSaleCrMemoHeader: Record "Sales Cr.Memo Header";
        gSaleCrMemoLine: Record "Sales Cr.Memo Line";
        gPurchInvHeader: Record "Purch. Inv. Header";
        gPurchInvLine: Record "Purch. Inv. Line";
        gPurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        gPurchCrMemoLine: Record "Purch. Cr. Memo Line";
        GLEntry: Record "G/L Entry";
        //AX-s
        // gPostingDate: Date;
        gEntryNo: Integer;
        gEntryTypeEdit: Boolean;
        gDocTypeEdit: Boolean;
        gDocNoEdit: Boolean;
        gOldAccNoEdit: Boolean;
        //AX-e
        Text000: Label 'Please Insert Entry Type';
        Text001: Label 'Please Insert Document Type';
        Text002: Label 'Please Insert Document No.';
        Text003: Label 'Please Insert Account No.to be modified';
        Text004: Label 'Please Insert New Account No.';
        Linefound: Boolean;
        GLAcc: Record "G/L Account";
        Text005: Label 'Account No. %1 is used more than one time in this invoice. Do You want to modify all lines';
        Text006: Label 'Modification Completed';
        Text008: Label 'There are no lines to be changed';
        Text009: Label 'Operation Interrupted';
        CostEntry: Record "Cost Entry";
        gCostType: Record "Cost Type";
        gGLAcc: Record "G/L Account";
        Err001: Label 'Account No. %1 is already used in the document. You cannot do this operation.';

    procedure DoCheck(): Boolean
    begin
        if EntryType = EntryType::" " then Error(Text000);
        if DocType = DocType::" " then Error(Text001);
        if DocNo = '' then Error(Text002);
        if OldAccNo = '' then Error(Text003);
        if NewAccNo = '' then Error(Text004);

        exit(true);
    end;

    procedure Update()
    begin
        GLAcc.Get(NewAccNo);
        //Main Tables
        if EntryType = EntryType::Sale then begin
            if DocType = DocType::Invoice then begin
                gSaleInvLine.Reset;
                gSaleInvLine.SetRange("Document No.", DocNo);
                if gSaleInvLine.FindSet then
                    repeat
                        if ((gSaleInvLine.Type = gSaleInvLine.Type::"G/L Account") and (gSaleInvLine."No." = OldAccNo)) then begin
                            gSaleInvLine."No." := NewAccNo;
                            gSaleInvLine.Description := GLAcc.Name;
                            gSaleInvLine.Modify;
                        end;
                    until gSaleInvLine.Next = 0;
            end else
                if DocType = DocType::"Credit Memo" then begin
                    gSaleCrMemoLine.Reset;
                    gSaleCrMemoLine.SetRange("Document No.", DocNo);
                    if gSaleCrMemoLine.FindSet then
                        repeat
                            if ((gSaleCrMemoLine.Type = gSaleCrMemoLine.Type::"G/L Account") and (gSaleCrMemoLine."No." = OldAccNo)) then begin
                                gSaleCrMemoLine."No." := NewAccNo;
                                gSaleCrMemoLine.Description := GLAcc.Name;
                                gSaleCrMemoLine.Modify;
                            end;
                        until gSaleCrMemoLine.Next = 0;
                end;
        end else
            if EntryType = EntryType::Purchase then begin
                if DocType = DocType::Invoice then begin
                    gPurchInvLine.Reset;
                    gPurchInvLine.SetRange("Document No.", DocNo);
                    if gPurchInvLine.FindSet then
                        repeat
                            if ((gPurchInvLine.Type = gPurchInvLine.Type::"G/L Account") and (gPurchInvLine."No." = OldAccNo)) then begin
                                gPurchInvLine."No." := NewAccNo;
                                gPurchInvLine.Description := GLAcc.Name;
                                gPurchInvLine.Modify;
                            end;
                        until gPurchInvLine.Next = 0;
                end else
                    if DocType = DocType::"Credit Memo" then begin
                        gPurchCrMemoLine.Reset;
                        gPurchCrMemoLine.SetRange("Document No.", DocNo);
                        if gPurchCrMemoLine.FindSet then
                            repeat
                                if ((gPurchCrMemoLine.Type = gPurchCrMemoLine.Type::"G/L Account") and (gPurchCrMemoLine."No." = OldAccNo)) then begin
                                    gPurchCrMemoLine."No." := NewAccNo;
                                    gPurchCrMemoLine.Description := GLAcc.Name;
                                    gPurchCrMemoLine.Modify;
                                end;
                            until gPurchCrMemoLine.Next = 0;
                    end;
            end;

        //GL Entry
        GLEntry.Reset;
        GLEntry.SetCurrentKey("Document No.", "Posting Date");
        GLEntry.SetRange("Document No.", DocNo);
        // if gPostingDate <> 0D then
        //     GLEntry.SetRange("Posting Date", gPostingDate);
        if GLEntry.FindSet then
            repeat
                if GLEntry."G/L Account No." = OldAccNo then begin
                    GLEntry."G/L Account No." := NewAccNo;
                    GLEntry.Description := GLAcc.Name;
                    GLEntry.Modify;
                end;
            until GLEntry.Next = 0;



    end;

    procedure CheckAccLines(pAccNo: Code[20]): Integer
    begin
        if EntryType = EntryType::Sale then begin
            if DocType = DocType::Invoice then begin
                gSaleInvLine.Reset;
                gSaleInvLine.SetRange("Document No.", DocNo);
                gSaleInvLine.SetRange(Type, gSaleInvLine.Type::"G/L Account");
                gSaleInvLine.SetRange("No.", pAccNo);
                exit(gSaleInvLine.Count);
            end else
                if DocType = DocType::"Credit Memo" then begin
                    gSaleCrMemoLine.Reset;
                    gSaleCrMemoLine.SetRange("Document No.", DocNo);
                    gSaleCrMemoLine.SetRange(Type, gSaleCrMemoLine.Type::"G/L Account");
                    gSaleCrMemoLine.SetRange("No.", pAccNo);
                    exit(gSaleCrMemoLine.Count);
                end;
        end else
            if EntryType = EntryType::Purchase then begin
                if DocType = DocType::Invoice then begin
                    gPurchInvLine.Reset;
                    gPurchInvLine.SetRange("Document No.", DocNo);
                    gPurchInvLine.SetRange(Type, gPurchInvLine.Type::"G/L Account");
                    gPurchInvLine.SetRange("No.", pAccNo);
                    exit(gPurchInvLine.Count);
                end else
                    if DocType = DocType::"Credit Memo" then begin
                        gPurchCrMemoLine.Reset;
                        gPurchCrMemoLine.SetRange("Document No.", DocNo);
                        gPurchCrMemoLine.SetRange(Type, gPurchCrMemoLine.Type::"G/L Account");
                        gPurchCrMemoLine.SetRange("No.", pAccNo);
                        exit(gPurchCrMemoLine.Count);
                    end;
            end;
    end;

    //AX-s
    procedure SetRec(pEntryType: Option; pDocType: Option; pDocNo: Code[20]; pAccNo: Code[20])
    begin
        EntryType := pEntryType;
        DocType := pDocType;
        DocNo := pDocNo;
        OldAccNo := pAccNo;
        // gPostingDate := 0D;
        gEntryTypeEdit := false;
        gDocTypeEdit := false;
        gDocNoEdit := false;
        gOldAccNoEdit := false;
    end;

    // procedure SetGLE(pPostingDate: Date; pDocNo: Code[20]; pAccNo: Code[20]; pEntryNo: Integer)
    // begin
    //     DocNo := pDocNo;
    //     gPostingDate := pPostingDate;
    //     OldAccNo := pAccNo;
    //     gEntryNo := pEntryNo;
    //     gEntryTypeEdit := false;
    //     gDocTypeEdit := false;
    //     gDocNoEdit := false;
    //     gOldAccNoEdit := false;
    // end;

    trigger OnInit()
    begin
        gDocNoEdit := DocNo = '';
        gDocTypeEdit := DocType = DocType::" ";
        gEntryTypeEdit := EntryType < 0;
        gOldAccNoEdit := OldAccNo = '';
    end;
    //AX-e
}