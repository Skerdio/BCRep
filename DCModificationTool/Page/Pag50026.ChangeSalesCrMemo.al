page 50026 "Change Sales Cr Memo"
{
    Caption = 'Change Sales Cr. Memo';
    PromotedActionCategories = 'Process';
    SaveValues = false;
    DeleteAllowed = false;
    Editable = true;
    InsertAllowed = false;
    ModifyAllowed = true;
    PageType = Card;
    ShowFilter = false;
    SourceTable = "Sales Cr.Memo Header";
    SourceTableTemporary = true;
    Permissions = TableData "Sales Cr.Memo Header" = rimd, tabledata "G/L Entry" = rimd, tabledata "VAT Entry" = rimd, tabledata "Cust. Ledger Entry" = rimd,
                    tabledata "Detailed Cust. Ledg. Entry" = rimd, tabledata "G/L Entry - VAT Entry Link" = rimd;

    layout
    {
        area(content)
        {
            group("Information selection")
            {
            }
            group(General)
            {
                Caption = 'General';
                Editable = false;

                field("No."; Rec."No.")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                    ToolTip = 'Specifies the number of the record.';
                }
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Customer';
                    Editable = false;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
            group("Modify")
            {
                Caption = 'Modify';

                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    Editable = true;
                    Visible = false;
                }
                field("Posting Description"; Rec."Posting Description")
                {
                    ApplicationArea = All;
                    Editable = true;
                    Visible = false;
                }
                field("Posting Date1"; Rec."Posting Date")
                {
                    Caption = 'New Posting Date';
                    ApplicationArea = All;
                }
            }
            group("Data Scadenze")
            {
                //     Caption = 'Due Date';
                //     field("Vecchia Data Scadenza 1"; OldDueDate[1])
                //     {
                //         Caption = 'Old Due Date 1';
                //         Editable = false;
                //         ApplicationArea = all;
                //     }
                //     field("Vecchia Data Scadenza 2"; OldDueDate[2])
                //     {
                //         Caption = 'Old Due Date 2';
                //         Editable = false;
                //         ApplicationArea = all;
                //     }
                //     field("Vecchia Data Scadenza 3"; OldDueDate[3])
                //     {
                //         Caption = 'Old Due Date 3';
                //         Editable = false;
                //         ApplicationArea = all;
                //     }
                //     field("Vecchia Data Scadenza 4"; OldDueDate[4])
                //     {
                //         Caption = 'Old Due Date 4';
                //         Editable = false;
                //         ApplicationArea = all;
                //     }
                //     field("Nuova Data Scadenza 1"; NewDueDate[1])
                //     {
                //         Caption = 'New Due Date 1';
                //         Editable = true;
                //         ApplicationArea = all;
                //     }
                //     field("Nuova Data Scadenza 2"; NewDueDate[2])
                //     {
                //         Caption = 'New Due Date 2';
                //         Editable = true;
                //         ApplicationArea = all;
                //     }
                //     field("Nuova Data Scadenza 3"; NewDueDate[3])
                //     {
                //         Caption = 'New Due Date 3';
                //         Editable = true;
                //         ApplicationArea = all;
                //     }
                //     field("Nuova Data Scadenza 4"; NewDueDate[4])
                //     {
                //         Caption = 'New Due Date 4';
                //         Editable = true;
                //         ApplicationArea = all;
                //     }
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

                // action(Modifica)
                // {
                //     Caption = 'Update';
                //     ApplicationArea = all;
                //     Image = UpdateDescription;
                //     Promoted = true;
                //     PromotedCategory = Process;

                //     trigger OnAction()
                //     begin
                //         if DoCheck then
                //             Update;

                //         Message(Text006);
                //         CurrPage.Close;
                //     end;
                // }
            }
        }
    }

    // trigger OnOpenPage()
    // begin
    //     DocNo := '';
    //     OldDocDate := 0D;
    //     for i := 1 to 4 do begin
    //         OldDueDate[i] := 0D;
    //         CVLedgEntrNo[i] := 0;
    //         NewDueDate[i] := 0D;
    //     end;
    // end;
    trigger OnInit()
    begin
        DocNo := '';
        OldDocDate := 0D;
        for i := 1 to 4 do begin
            OldDueDate[i] := 0D;
            CVLedgEntrNo[i] := 0;
            NewDueDate[i] := 0D;
        end;
    end;

    //AX-s
    trigger OnOpenPage()
    begin
        xRecSCH := Rec;
    end;

    trigger OnAfterGetRecord()
    begin
        CalcOldDueDate(122, Rec."No.");
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        lcu: Codeunit "Purch Invoice Header Mod";
    begin
        if CloseAction = ACTION::LookupOK then
            if (Rec."Posting Date" <> xRecSCH."Posting Date") or
                (Rec."Document Date" <> xRecSCH."Document Date") or
                (Rec."Posting Description" <> xRecSCH."Posting Description")
            then begin
                if DoCheck() then begin
                    // Update();
                    //UpdateNew(lrec); //AX-n
                    //Rec := lrec;
                    //Rec.Modify();
                    //PRJ500-s
                    //CODEUNIT.Run(CODEUNIT::"Purch Invoice Header Mod", Rec);
                    lcu.SetDocumentDate(xRecSCH."Document Date", xRecSCH."Posting Date", Date2DMY(xRecSCH."Posting Date", 3));
                    lcu.ChangeSalesCrMemo(Rec);
                    //PRJ500-e
                    Message(Text006);
                end;
            end;
    end;
    //AX-e

    var
        EntryType: Option " ",Sale,Purchase;
        DocType: Option " ",Invoice,"Credit Memo";
        DocNo: Code[20];
        OldDocDate: Date;
        // NewDocDate: Date;
        GLEntry: Record "G/L Entry";
        Text000: Label 'Please Insert Entry Type';
        Text001: Label 'Please Insert Document Type';
        Text002: Label 'Please Insert Document No.';
        Text003: Label 'Please Insert New Document Date';
        Text004: Label 'You cannot assign new numbers from the number series %1 on a date before %2.';
        Text006: Label 'Modification Completed';
        Text007: Label 'Posting Date must be greater than Document Date!';
        VATEntry: Record "VAT Entry";
        CustLedgEntry: Record "Cust. Ledger Entry";
        DtldCustledgEntry: Record "Detailed Cust. Ledg. Entry";
        OldDueDate: array[4] of Date;
        CVLedgEntrNo: array[4] of Integer;
        NewDueDate: array[4] of Date;
        //AX-s
        EmplLedgEntry: Record "Employee Ledger Entry";
        DtldEmplLedgEntry: Record "Detailed Employee Ledger Entry";
        ItemLedgEntry: Record "Item Ledger Entry";
        PhysInvtLedgEntry: Record "Phys. Inventory Ledger Entry";
        ResLedgEntry: Record "Res. Ledger Entry";
        JobLedgEntry: Record "Job Ledger Entry";
        JobWIPEntry: Record "Job WIP Entry";
        JobWIPGLEntry: Record "Job WIP G/L Entry";
        ValueEntry: Record "Value Entry";
        BankAccLedgEntry: Record "Bank Account Ledger Entry";
        CheckLedgEntry: Record "Check Ledger Entry";
        ReminderEntry: Record "Reminder/Fin. Charge Entry";
        FALedgEntry: Record "FA Ledger Entry";
        MaintenanceLedgEntry: Record "Maintenance Ledger Entry";
        InsuranceCovLedgEntry: Record "Ins. Coverage Ledger Entry";
        CapacityLedgEntry: Record "Capacity Ledger Entry";
        ServLedgerEntry: Record "Service Ledger Entry";
        WarrantyLedgerEntry: Record "Warranty Ledger Entry";
        WhseEntry: Record "Warehouse Entry";
        CostEntry: Record "Cost Entry";
        IncomingDocument: Record "Incoming Document";
        xRecSCH: Record "Sales Cr.Memo Header";
        OldExtDocNo: Code[35];
        OldDescr: Text;
        gEntryTypeEdit: Boolean;
        gDocTypeEdit: Boolean;
        gDocNoEdit: Boolean;
        gOldDocDateEdit: Boolean;
        //AX-e
        i: Integer;

    procedure DoCheck(): Boolean
    begin
        if EntryType = EntryType::" " then Error(Text000);
        if DocType = DocType::" " then Error(Text001);
        if DocNo = '' then Error(Text002);
        Rec.TestField("Document Date");
        Rec.TestField("Posting Description");
        Rec.TestField("Posting Date"); //PRJ501-n
        exit(true);
    end;

    procedure CalcOldDueDate(lTableID: Integer; lDocNo: Code[20])
    var
        lCLE: Record "Cust. Ledger Entry";
        lVLE: Record "Vendor Ledger Entry";
        index: Integer;
    begin
        index := 0;
        if ((lTableID = 112) or (lTableID = 114)) then begin
            lCLE.Reset;
            lCLE.SetCurrentKey("Document Type", "Document No.");
            if (lTableID = 112) then
                lCLE.SetRange("Document Type", lCLE."Document Type"::Invoice)
            else
                lCLE.SetRange("Document Type", lCLE."Document Type"::"Credit Memo");
            lCLE.SetRange("Document No.", lDocNo);
            if lCLE.FindSet then
                repeat
                    index += 1;
                    OldDueDate[index] := lCLE."Due Date";
                    CVLedgEntrNo[index] := lCLE."Entry No.";
                until lCLE.Next = 0;
        end else
            if ((lTableID = 122) or (lTableID = 124)) then begin
                lVLE.Reset;
                lVLE.SetCurrentKey("Document Type", "Document No.", "Vendor No.");
                if (lTableID = 122) then
                    lVLE.SetRange("Document Type", lVLE."Document Type"::Invoice)
                else
                    lVLE.SetRange("Document Type", lVLE."Document Type"::"Credit Memo");
                lVLE.SetRange("Document No.", lDocNo);
                if lVLE.FindSet then
                    repeat
                        index += 1;
                        OldDueDate[index] := lVLE."Due Date";
                        CVLedgEntrNo[index] := lVLE."Entry No.";
                    until lVLE.Next = 0;
            end;
    end;
    //AX-s
    procedure SetDoc(pEntryType: Option; pDocType: Option; pSIH: Record "Sales Cr.Memo Header")
    begin
        EntryType := pEntryType;
        DocType := pDocType;
        DocNo := pSIH."No.";
        OldDocDate := pSIH."Document Date";
        OldDescr := pSIH."Posting Description";
        Rec := pSIH;
        Rec.Insert();
        gEntryTypeEdit := false;
        gDocTypeEdit := false;
        gDocNoEdit := false;
        gOldDocDateEdit := false;
    end;
    //AX-e
    // local procedure AllowChange(lPurchaseInv: Record 122)
    // var
    //     lPurchNoSeries: Record "No. Series Line Purchase";
    //     lNoSeries: Record "No. Series";
    // begin
    //     lPurchaseInv.SetCurrentKey("No.");
    //     lPurchaseInv.Ascending(false);
    //     //lPurchaseInv.SetFilter("Document Date" '');

    //     lPurchNoSeries.Reset();
    //     lPurchNoSeries.SetFilter("Starting No.", '<=%1&<>%2', Rec."No.", '');
    //     lPurchNoSeries.SetFilter("Starting Date", '<=%1', lPurchaseInv."Document Date");
    //     lPurchNoSeries.SetCurrentKey("Starting No.", "Starting Date");
    //     if lPurchNoSeries.FindLast() then begin
    //         lNoSeries.Get(lPurchNoSeries."Series Code");
    //         IF lNoSeries."Date Order" AND (lPurchaseInv."No." < lPurchNoSeries."Last No. Used") THEN
    //             ERROR(Text004, lNoSeries.Code, lPurchNoSeries."Last Date Used");
    //     end;
    // end;
}
