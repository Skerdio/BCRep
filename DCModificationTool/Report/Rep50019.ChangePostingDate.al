report 50019 "ChangePostingDateGLE"
{
    ProcessingOnly = true;
    Permissions = TableData "Sales Shipment Header" = rimd, TableData "Sales Invoice Header" = rimd,
    TableData "Return Receipt Header" = rimd, TableData "Sales Cr.Memo Header" = rimd,
    TableData "Service Shipment Header" = rimd, TableData "Service Invoice Header" = rimd,
     TableData "Service Cr.Memo Header" = rimd, TableData "Issued Reminder Header" = rimd,
      TableData "Issued Fin. Charge Memo Header" = rimd, TableData "Purch. Rcpt. Header" = rimd,
       TableData "Purch. Inv. Header" = rimd, TableData "Return Shipment Header" = rimd,
        TableData "Purch. Cr. Memo Hdr." = rimd, TableData "Production Order" = rimd,
        TableData "Posted Assembly Header" = rimd, TableData "Transfer Shipment Header" = rimd,
         TableData "Transfer Receipt Header" = rimd, TableData "Posted Whse. Receipt Line" = rimd,
          TableData "Posted Whse. Shipment Line" = rimd, TableData "Pstd. Phys. Invt. Order Hdr" = rimd,
           TableData "G/L Entry" = rimd, TableData "VAT Entry" = rimd, TableData "Cust. Ledger Entry" = rimd,
           TableData "Detailed Cust. Ledg. Entry" = rimd, TableData "Vendor Ledger Entry" = rimd,
            TableData "Detailed Vendor Ledg. Entry" = rimd, TableData "Employee Ledger Entry" = rimd,
            TableData "Detailed Employee Ledger Entry" = rimd, TableData "Item Ledger Entry" = rimd,
             TableData "Phys. Inventory Ledger Entry" = rimd, TableData "Res. Ledger Entry" = rimd,
              TableData "Job Ledger Entry" = rimd, TableData "Job WIP Entry" = rimd,
               TableData "Job WIP G/L Entry" = rimd, TableData "Value Entry" = rimd,
                TableData "Bank Account Ledger Entry" = rimd, TableData "Check Ledger Entry" = rimd,
                TableData "Reminder/Fin. Charge Entry" = rimd, TableData "FA Ledger Entry" = rimd,
                 TableData "Maintenance Ledger Entry" = rimd, TableData "Ins. Coverage Ledger Entry" = rimd,
                 TableData "Capacity Ledger Entry" = rimd, TableData "Service Ledger Entry" = rimd,
                 TableData "Warranty Ledger Entry" = rimd, TableData "Warehouse Entry" = rimd,
                 TableData "Cost Entry" = rimd, TableData "Incoming Document" = rimd,
                 tabledata "Dimension Set Entry" = rimd;

    dataset
    {
        dataitem(GLEntry1; "G/L Entry")
        {
            trigger OnAfterGetRecord()
            begin
                if NewPostingDate <> 0D then begin
                    oldPostingDate := GLEntry1."Posting Date";
                    TransactionNo := GLEntry1."Transaction No.";
                    DocNo := GLEntry1."Document No.";
                    DoModification;
                    LogEMTUpdate.InsertUpdate1(17, GLEntry1."Document No.", 4, '', GLEntry1.FieldCaption("Account Id"), Format(oldPostingDate), Format(NewPostingDate));
                end;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                    field("Nuova Data Registrazione"; NewPostingDate)
                    {
                        Caption = 'New Posting Date';
                        ApplicationArea = all;
                    }
                }
            }
        }
    }
    var
        GLEntry: Record "G/L Entry";
        CLE: Record "Cust. Ledger Entry";
        DetCLE: Record "Detailed Cust. Ledg. Entry";
        VLE: Record "Vendor Ledger Entry";
        DetVLE: Record "Detailed Vendor Ledg. Entry";
        BankLedgerEntry: Record "Bank Account Ledger Entry";
        CostEntry: Record "Cost Entry";
        JobLedgentry: Record "Job Ledger Entry";
        NewPostingDate: Date;
        TransactionNo: Integer;
        DocNo: Code[20];
        Text005: Label 'Modification Completed';
        LogEMTUpdate: Record "Log EMT Update";
        oldPostingDate: Date;

    trigger OnPostReport()
    begin
        Message(Text005);
    end;

    procedure DoModification()
    begin
        //G/L Entry
        CostEntry.Reset;
        CostEntry.SetCurrentKey("G/L Entry No.");
        GLEntry.Reset;
        GLEntry.SetCurrentKey("Transaction No.");
        GLEntry.SetRange("Transaction No.", TransactionNo);
        GLEntry.SetRange("Document No.", DocNo);
        if GLEntry.FindSet then
            repeat
                GLEntry."Posting Date" := NewPostingDate;
                GLEntry."Document Date" := NewPostingDate;
                GLEntry.Modify;
                CostEntry.SetRange("G/L Entry No.", GLEntry."Entry No.");
                if CostEntry.FindFirst then begin
                    CostEntry."Posting Date" := NewPostingDate;
                    CostEntry.Modify;
                end;
            until GLEntry.Next = 0;

        //Customer Ledger Entries
        CLE.Reset;
        CLE.SetCurrentKey("Transaction No.");
        CLE.SetRange("Transaction No.", TransactionNo);
        CLE.SetRange("Document No.", DocNo);
        if CLE.FindSet then
            repeat
                CLE."Posting Date" := NewPostingDate;
                CLE."Document Date" := NewPostingDate;
                CLE.Modify;
            until CLE.Next = 0;
        //Detail Customer Ledger Entries
        DetCLE.Reset;
        DetCLE.SetCurrentKey("Transaction No.", "Customer No.", "Entry Type");
        DetCLE.SetRange("Transaction No.", TransactionNo);
        DetCLE.SetRange("Document No.", DocNo);
        if DetCLE.FindSet then
            repeat
                DetCLE."Posting Date" := NewPostingDate;
                DetCLE.Modify;
            until DetCLE.Next = 0;
        //Vendor Ledger Entries
        VLE.Reset;
        VLE.SetCurrentKey("Transaction No.");
        VLE.SetRange("Transaction No.", TransactionNo);
        VLE.SetRange("Document No.", DocNo);
        if VLE.FindSet then
            repeat
                VLE."Posting Date" := NewPostingDate;
                VLE."Document Date" := NewPostingDate;
                VLE.Modify;
            until VLE.Next = 0;
        //Detail Vendor Ledger Entries
        DetVLE.Reset;
        DetVLE.SetCurrentKey("Transaction No.", "Vendor No.", "Entry Type");
        DetVLE.SetRange("Transaction No.", TransactionNo);
        DetVLE.SetRange("Document No.", DocNo);
        if DetVLE.FindSet then
            repeat
                DetVLE."Posting Date" := NewPostingDate;
                DetVLE.Modify;
            until DetVLE.Next = 0;
        //Bank Ledger Entries
        BankLedgerEntry.Reset;
        BankLedgerEntry.SetCurrentKey("Transaction No.");
        BankLedgerEntry.SetRange("Transaction No.", TransactionNo);
        BankLedgerEntry.SetRange("Document No.", DocNo);
        if BankLedgerEntry.FindSet then
            repeat
                BankLedgerEntry."Posting Date" := NewPostingDate;
                BankLedgerEntry."Document Date" := NewPostingDate;
                BankLedgerEntry.Modify;
            until BankLedgerEntry.Next = 0;
        //AOT-s
        //Job Ledger Entry
        // JobLedgentry.Reset;
        // JobLedgentry.SetCurrentKey("Document No.", "Posting Date");
        // JobLedgentry.SetRange("Document No.", DocNo);
        // JobLedgentry.SetRange("Source Code", 'REGGENCOM');
        // if JobLedgentry.FindSet then
        //     repeat
        //         JobLedgentry."Posting Date" := NewPostingDate;
        //         JobLedgentry."Document Date" := NewPostingDate;
        //         JobLedgentry.Modify;
        //     until JobLedgentry.Next = 0;
        //AOT-e
    end;
}
