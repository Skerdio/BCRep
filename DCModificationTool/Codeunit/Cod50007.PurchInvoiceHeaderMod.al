codeunit 50007 "Purch Invoice Header Mod"
{
    Permissions = TableData "Sales Shipment Header" = rimd,
                    TableData "Sales Invoice Header" = rimd,
                    TableData "Sales Invoice Line" = rimd,
                    TableData "Return Receipt Header" = rimd,
                    TableData "Sales Cr.Memo Header" = rimd,
                    TableData "Sales Cr.Memo Line" = rimd,
                    TableData "Service Shipment Header" = rimd,
                    TableData "Service Invoice Header" = rimd,
                    TableData "Service Cr.Memo Header" = rimd,
                    TableData "Issued Reminder Header" = rimd,
                    TableData "Issued Fin. Charge Memo Header" = rimd,
                    TableData "Purch. Rcpt. Header" = rimd,
                    TableData "Purch. Inv. Header" = rimd,
                    TableData "Purch. Inv. Line" = rimd,
                    TableData "Return Shipment Header" = rimd,
                    TableData "Purch. Cr. Memo Hdr." = rimd,
                    TableData "Purch. Cr. Memo Line" = rimd,
                    TableData "Production Order" = rimd,
                    TableData "Posted Assembly Header" = rimd,
                    TableData "Transfer Shipment Header" = rimd,
                    TableData "Transfer Receipt Header" = rimd,
                    TableData "Posted Whse. Receipt Line" = rimd,
                    TableData "Posted Whse. Shipment Line" = rimd,
                    TableData "Pstd. Phys. Invt. Order Hdr" = rimd,
                    TableData "G/L Entry" = rimd,
                    TableData "VAT Entry" = rimd,
                    TableData "Cust. Ledger Entry" = rimd,
                    TableData "Detailed Cust. Ledg. Entry" = rimd,
                    TableData "Vendor Ledger Entry" = rimd,
                    TableData "Detailed Vendor Ledg. Entry" = rimd,
                    TableData "Employee Ledger Entry" = rimd,
                    TableData "Detailed Employee Ledger Entry" = rimd,
                    TableData "Item Ledger Entry" = rimd,
                    TableData "Phys. Inventory Ledger Entry" = rimd,
                    TableData "Res. Ledger Entry" = rimd,
                    TableData "Job Ledger Entry" = rimd,
                    TableData "Job WIP Entry" = rimd,
                    TableData "Job WIP G/L Entry" = rimd,
                    TableData "Value Entry" = rimd,
                    TableData "Bank Account Ledger Entry" = rimd,
                    TableData "Check Ledger Entry" = rimd,
                    TableData "Reminder/Fin. Charge Entry" = rimd,
                    TableData "FA Ledger Entry" = rimd,
                    TableData "Maintenance Ledger Entry" = rimd,
                    TableData "Ins. Coverage Ledger Entry" = rimd,
                    TableData "Capacity Ledger Entry" = rimd,
                    TableData "Service Ledger Entry" = rimd,
                    TableData "Warranty Ledger Entry" = rimd,
                    TableData "Warehouse Entry" = rimd,
                    TableData "Cost Entry" = rimd,
                    TableData "Incoming Document" = rimd,
                    tabledata "Dimension Set Entry" = rimd;

    trigger OnRun()
    var
    begin
    end;

    procedure ChangePurchInv(var RecPurch: Record "Purch. Inv. Header")
    var
        lPurchInvoiceHeader: Record "Purch. Inv. Header";
        lVatEntry: Record "VAT Entry";
        lReverseVatEntry: record "VAT Entry";
    begin
        lPurchInvoiceHeader := RecPurch;
        lPurchInvoiceHeader.LockTable();
        lPurchInvoiceHeader.Find();
        CheckPeriodoContabileChiuso(RecPurch."Posting Date");
        lPurchInvoiceHeader."Posting Date" := RecPurch."Posting Date";
        CheckDocumentNo(RecPurch."Document Date", RecPurch."Posting Date");
        //Find reverse charge
        lVatEntry.Reset();
        lVatEntry.SetRange("Document No.", lPurchInvoiceHeader."No.");
        lVatEntry.SetRange("Posting Date", goldPostingDate);
        lVatEntry.SetRange(Type, lVatEntry.Type::Purchase);
        if lVatEntry.FindFirst() then begin
            lReverseVatEntry.Reset();
            lReverseVatEntry.SetRange("Transaction No.", lVatEntry."Transaction No.");
            lReverseVatEntry.SetRange(Type, lReverseVatEntry.Type::Sale);
            if lReverseVatEntry.FindFirst() then
                AllowChangePostingDate(3, lReverseVatEntry."Posting Date", RecPurch."Posting Date", lReverseVatEntry."Document No.", lReverseVatEntry."No. Series");
        end;
        lPurchInvoiceHeader."Document Date" := RecPurch."Document Date";
        lPurchInvoiceHeader."Vendor Invoice No." := RecPurch."Vendor Invoice No.";
        lPurchInvoiceHeader."Posting Description" := RecPurch."Posting Description";
        lPurchInvoiceHeader."Posting Date" := RecPurch."Posting Date";
        UpdatePurchInv(lPurchInvoiceHeader);
        lPurchInvoiceHeader.Modify();
        RecPurch := lPurchInvoiceHeader;
        LogEMTUpdate.InsertUpdate1(122, lPurchInvoiceHeader."No.", 2, '', RecPurch.FieldCaption("Document Date"), Format(gOldDocumentDate), Format(RecPurch."Document Date"));
    end;

    procedure ChangePurchCRMemo(var RecPurch: Record "Purch. Cr. Memo Hdr.")
    var
        lPurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        lVatEntry: Record "VAT Entry";
        lReverseVatEntry: record "VAT Entry";
    begin
        lPurchCrMemoHeader := RecPurch;
        lPurchCrMemoHeader.LockTable();
        lPurchCrMemoHeader.Find();
        CheckPeriodoContabileChiuso(RecPurch."Posting Date");
        lPurchCrMemoHeader."Posting Date" := RecPurch."Posting Date";
        CheckDocumentNo(RecPurch."Document Date", RecPurch."Posting Date");
        //Find reverse charge
        lVatEntry.Reset();
        lVatEntry.SetRange("Document No.", lPurchCrMemoHeader."No.");
        lVatEntry.SetRange("Posting Date", goldPostingDate);
        lVatEntry.SetRange(Type, lVatEntry.Type::Purchase);
        if lVatEntry.FindFirst() then begin
            lReverseVatEntry.Reset();
            lReverseVatEntry.SetRange("Transaction No.", lVatEntry."Transaction No.");
            lReverseVatEntry.SetRange(Type, lReverseVatEntry.Type::Sale);
            if lReverseVatEntry.FindFirst() then
                AllowChangePostingDate(3, lReverseVatEntry."Posting Date", RecPurch."Posting Date", lReverseVatEntry."Document No.", lReverseVatEntry."No. Series");
        end;
        lPurchCrMemoHeader."Document Date" := RecPurch."Document Date";
        lPurchCrMemoHeader."Posting Description" := RecPurch."Posting Description";
        lPurchCrMemoHeader."Posting Date" := RecPurch."Posting Date";
        UpdatePurchCr(lPurchCrMemoHeader);
        lPurchCrMemoHeader.Modify();
        RecPurch := lPurchCrMemoHeader;
        LogEMTUpdate.InsertUpdate1(122, lPurchCrMemoHeader."No.", 2, '', RecPurch.FieldCaption("Document Date"), Format(gOldDocumentDate), Format(RecPurch."Document Date"));
    end;

    procedure ChangeSalesInv(var RecSales: Record "Sales Invoice Header")
    var
        lSalesInvoiceHeader: Record "Sales Invoice Header";
    begin
        lSalesInvoiceHeader := RecSales;
        lSalesInvoiceHeader.LockTable();
        lSalesInvoiceHeader.Find();
        //lSalesInvoiceHeader."Posting Date" := RecSales."Posting Date";
        CheckPeriodoContabileChiuso(RecSales."Posting Date");
        //CheckDocumentNo(RecSales."Document Date", RecSales."Posting Date");
        lSalesInvoiceHeader."Document Date" := RecSales."Posting Date";
        lSalesInvoiceHeader."Posting Description" := RecSales."Posting Description";
        lSalesInvoiceHeader."Posting Date" := RecSales."Posting Date";
        UpdateSalesInv(lSalesInvoiceHeader);
        lSalesInvoiceHeader.Modify();
        RecSales := lSalesInvoiceHeader;
        LogEMTUpdate.InsertUpdate1(122, lSalesInvoiceHeader."No.", 2, '', RecSales.FieldCaption("Document Date"), Format(gOldDocumentDate), Format(RecSales."Document Date"));
    end;

    procedure ChangeSalesCrMemo(var RecSales: Record "Sales Cr.Memo Header")
    var
        lSalesCrHeader: Record "Sales Cr.Memo Header";
    begin
        lSalesCrHeader := RecSales;
        lSalesCrHeader.LockTable();
        lSalesCrHeader.Find();
        CheckPeriodoContabileChiuso(RecSales."Posting Date");
        //lSalesInvoiceHeader."Posting Date" := RecSales."Posting Date";
        //CheckDocumentNo(RecSales."Document Date", RecSales."Posting Date");
        lSalesCrHeader."Document Date" := RecSales."Posting Date";
        lSalesCrHeader."Posting Description" := RecSales."Posting Description";
        lSalesCrHeader."Posting Date" := RecSales."Posting Date";
        UpdateSalesCrMemo(lSalesCrHeader);
        lSalesCrHeader.Modify();
        RecSales := lSalesCrHeader;
        LogEMTUpdate.InsertUpdate1(122, lSalesCrHeader."No.", 2, '', RecSales.FieldCaption("Document Date"), Format(gOldDocumentDate), Format(RecSales."Document Date"));
    end;

    procedure SetDocumentDate(oldDocumentDate: Date; oldPostingDate: date; year: integer)
    begin
        gOldDocumentDate := oldDocumentDate;
        goldPostingDate := oldPostingDate;
        // gEntryType := pEntryType;
        // gDocType := pDocType;
        gyear := year;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnRunOnBeforeSalesInvoiceHeaderModify(var SalesInvoiceHeader: Record "Sales Invoice Header"; FromSalesInvoiceHeader: Record "Sales Invoice Header")
    begin
    end;

    local procedure UpdatePurchInv(var lrec: Record "Purch. Inv. Header")
    var
        lReverseVatEntry: Record "VAT Entry";
    begin
        PurchInvLine.Reset();
        PurchInvLine.SetRange("Document No.", lrec."No.");
        if PurchInvLine.FindSet() then
            repeat
                PurchInvLine."Posting Date" := lrec."Posting Date";
                PurchInvLine.Modify();
            until PurchInvLine.Next() = 0;
        GLEntry.Reset();
        GLEntry.SetRange("Document No.", lrec."No.");
        if GLEntry.findset then
            repeat
                GLEntry."Document Date" := lrec."Document Date";
                GLEntry."Posting Date" := lrec."Posting Date";
                GLEntry."External Document No." := lrec."Vendor Invoice No.";
                GLEntry.Description := lrec."Posting Description";
                GLEntry.Modify();
            until GLEntry.Next() = 0;
        VATEntry.Reset();
        VATEntry.SetRange("Document No.", lrec."No.");
        VATEntry.SetRange(Type, VATEntry.Type::Purchase);
        if VATEntry.findset then
            repeat
                VATEntry."Document Date" := lrec."Document Date";
                VATEntry."Posting Date" := lrec."Posting Date";
                VATEntry."External Document No." := lrec."Vendor Invoice No.";
                VATEntry.Modify();
                lReverseVatEntry.Reset();
                lReverseVatEntry.SetRange("Transaction No.", VATEntry."Transaction No.");
                lReverseVatEntry.SetRange(Type, lReverseVatEntry.Type::Sale);
                if lReverseVatEntry.FindFirst() then begin
                    lReverseVatEntry."Posting Date" := lrec."Posting Date";
                    lReverseVatEntry."Document Date" := lrec."Document Date";
                    lReverseVatEntry.Modify();
                end;
            until VATEntry.Next() = 0;
        VendLedgEntry.Reset();
        VendLedgEntry.SetRange("Document No.", lrec."No.");
        if VendLedgEntry.findset then repeat VendLedgEntry."Document Date" := lrec."Document Date"; VendLedgEntry."Posting Date" := lrec."Posting Date"; VendLedgEntry."External Document No." := lrec."Vendor Invoice No."; VendLedgEntry.Description := lrec."Posting Description"; VendLedgEntry.Modify(); until VendLedgEntry.Next() = 0;
        DtldVendLedgEntry.Reset();
        DtldVendLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldVendLedgEntry.findset then repeat DtldVendLedgEntry."Posting Date" := lrec."Posting Date"; DtldVendLedgEntry.Modify(); until DtldVendLedgEntry.Next() = 0;
        EmplLedgEntry.Reset();
        EmplLedgEntry.SetRange("Document No.", lrec."No.");
        if EmplLedgEntry.findset then repeat EmplLedgEntry."Posting Date" := lrec."Posting Date"; EmplLedgEntry.Description := lrec."Posting Description"; EmplLedgEntry.Modify(); until EmplLedgEntry.Next() = 0;
        DtldEmplLedgEntry.Reset();
        DtldEmplLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldEmplLedgEntry.findset then repeat DtldEmplLedgEntry."Posting Date" := lrec."Posting Date"; DtldEmplLedgEntry.Modify(); until DtldEmplLedgEntry.Next() = 0;
        ItemLedgEntry.Reset();
        ItemLedgEntry.SetRange("Document No.", lrec."No.");
        if ItemLedgEntry.findset then repeat ItemLedgEntry."Document Date" := lrec."Document Date"; ItemLedgEntry."Posting Date" := lrec."Posting Date"; ItemLedgEntry."External Document No." := lrec."Vendor Invoice No."; ItemLedgEntry.Description := lrec."Posting Description"; ItemLedgEntry.Modify(); until ItemLedgEntry.Next() = 0;
        PhysInvtLedgEntry.Reset();
        PhysInvtLedgEntry.SetRange("Document No.", lrec."No.");
        if PhysInvtLedgEntry.findset then repeat PhysInvtLedgEntry."Document Date" := lrec."Document Date"; PhysInvtLedgEntry."Posting Date" := lrec."Posting Date"; PhysInvtLedgEntry."External Document No." := lrec."Vendor Invoice No."; PhysInvtLedgEntry.Description := lrec."Posting Description"; PhysInvtLedgEntry.Modify(); until PhysInvtLedgEntry.Next() = 0;
        ResLedgEntry.Reset();
        ResLedgEntry.SetRange("Document No.", lrec."No.");
        if ResLedgEntry.findset then repeat ResLedgEntry."Document Date" := lrec."Document Date"; ResLedgEntry."Posting Date" := lrec."Posting Date"; ResLedgEntry."External Document No." := lrec."Vendor Invoice No."; ResLedgEntry.Description := lrec."Posting Description"; ResLedgEntry.Modify(); until ResLedgEntry.Next() = 0;
        JobLedgEntry.Reset();
        JobLedgEntry.SetRange("Document No.", lrec."No.");
        if JobLedgEntry.findset then repeat JobLedgEntry."Document Date" := lrec."Document Date"; JobLedgEntry."Posting Date" := lrec."Posting Date"; JobLedgEntry."External Document No." := lrec."Vendor Invoice No."; JobLedgEntry.Description := lrec."Posting Description"; JobLedgEntry.Modify(); until JobLedgEntry.Next() = 0;
        JobWIPGLEntry.Reset();
        JobWIPGLEntry.SetRange("Document No.", lrec."No.");
        if JobWIPGLEntry.findset then repeat JobWIPGLEntry."Posting Date" := lrec."Posting Date"; JobWIPGLEntry.Description := lrec."Posting Description"; JobWIPGLEntry.Modify(); until JobWIPGLEntry.Next() = 0;
        ValueEntry.Reset();
        ValueEntry.SetRange("Document No.", lrec."No.");
        if ValueEntry.findset then repeat ValueEntry."Document Date" := lrec."Document Date"; ValueEntry."Posting Date" := lrec."Posting Date"; ValueEntry."External Document No." := lrec."Vendor Invoice No."; ValueEntry.Description := lrec."Posting Description"; ValueEntry.Modify(); until ValueEntry.Next() = 0;
        BankAccLedgEntry.Reset();
        BankAccLedgEntry.SetRange("Document No.", lrec."No.");
        if BankAccLedgEntry.findset then repeat BankAccLedgEntry."Document Date" := lrec."Document Date"; BankAccLedgEntry."Posting Date" := lrec."Posting Date"; BankAccLedgEntry."External Document No." := lrec."Vendor Invoice No."; BankAccLedgEntry.Description := lrec."Posting Description"; BankAccLedgEntry.Modify(); until BankAccLedgEntry.Next() = 0;
        CheckLedgEntry.Reset();
        CheckLedgEntry.SetRange("Document No.", lrec."No.");
        if CheckLedgEntry.findset then repeat CheckLedgEntry."Posting Date" := lrec."Posting Date"; CheckLedgEntry."External Document No." := lrec."Vendor Invoice No."; CheckLedgEntry.Description := lrec."Posting Description"; CheckLedgEntry.Modify(); until CheckLedgEntry.Next() = 0;
        ReminderEntry.Reset();
        ReminderEntry.SetRange("Document No.", lrec."No.");
        if ReminderEntry.findset then repeat ReminderEntry."Document Date" := lrec."Document Date"; ReminderEntry."Posting Date" := lrec."Posting Date"; ReminderEntry.Modify(); until ReminderEntry.Next() = 0;
        FALedgEntry.Reset();
        FALedgEntry.SetRange("Document No.", lrec."No.");
        if FALedgEntry.findset then repeat FALedgEntry."Document Date" := lrec."Document Date"; FALedgEntry."Posting Date" := lrec."Posting Date"; FALedgEntry."External Document No." := lrec."Vendor Invoice No."; FALedgEntry.Description := lrec."Posting Description"; FALedgEntry.Modify(); until FALedgEntry.Next() = 0;
        MaintenanceLedgEntry.Reset();
        MaintenanceLedgEntry.SetRange("Document No.", lrec."No.");
        if MaintenanceLedgEntry.findset then repeat MaintenanceLedgEntry."Document Date" := lrec."Document Date"; MaintenanceLedgEntry."Posting Date" := lrec."Posting Date"; MaintenanceLedgEntry."External Document No." := lrec."Vendor Invoice No."; MaintenanceLedgEntry.Description := lrec."Posting Description"; MaintenanceLedgEntry.Modify(); until MaintenanceLedgEntry.Next() = 0;
        InsuranceCovLedgEntry.Reset();
        InsuranceCovLedgEntry.SetRange("Document No.", lrec."No.");
        if InsuranceCovLedgEntry.findset then repeat InsuranceCovLedgEntry."Document Date" := lrec."Document Date"; InsuranceCovLedgEntry."Posting Date" := lrec."Posting Date"; InsuranceCovLedgEntry."External Document No." := lrec."Vendor Invoice No."; InsuranceCovLedgEntry.Description := lrec."Posting Description"; InsuranceCovLedgEntry.Modify(); until InsuranceCovLedgEntry.Next() = 0;
        CapacityLedgEntry.Reset();
        CapacityLedgEntry.SetRange("Document No.", lrec."No.");
        if CapacityLedgEntry.findset then repeat CapacityLedgEntry."Document Date" := lrec."Document Date"; CapacityLedgEntry."Posting Date" := lrec."Posting Date"; CapacityLedgEntry."External Document No." := lrec."Vendor Invoice No."; CapacityLedgEntry.Description := lrec."Posting Description"; CapacityLedgEntry.Modify(); until CapacityLedgEntry.Next() = 0;
        ServLedgerEntry.Reset();
        ServLedgerEntry.SetRange("Document No.", lrec."No.");
        if ServLedgerEntry.findset then repeat ServLedgerEntry."Posting Date" := lrec."Posting Date"; ServLedgerEntry.Description := lrec."Posting Description"; ServLedgerEntry.Modify(); until ServLedgerEntry.Next() = 0;
        WarrantyLedgerEntry.Reset();
        WarrantyLedgerEntry.SetRange("Document No.", lrec."No.");
        if WarrantyLedgerEntry.findset then repeat WarrantyLedgerEntry."Posting Date" := lrec."Posting Date"; WarrantyLedgerEntry.Description := lrec."Posting Description"; WarrantyLedgerEntry.Modify(); until WarrantyLedgerEntry.Next() = 0;
        CostEntry.Reset();
        CostEntry.SetRange("Document No.", lrec."No.");
        if CostEntry.findset then repeat CostEntry."Posting Date" := lrec."Posting Date"; CostEntry.Description := lrec."Posting Description"; CostEntry.Modify(); until CostEntry.Next() = 0;

        IncomingDocument.Reset();
        IncomingDocument.SetRange("Document No.", lrec."No.");
        if IncomingDocument.findset then repeat IncomingDocument."Document Date" := lrec."Document Date"; IncomingDocument."Posting Date" := lrec."Posting Date"; IncomingDocument.Description := lrec."Posting Description"; IncomingDocument.Modify(); until IncomingDocument.Next() = 0;
    end;

    local procedure UpdatePurchCr(var lrec: Record "Purch. Cr. Memo Hdr.")
    var
        lReverseVatEntry: Record "VAT Entry";
    //   lReverseVatBookEntry: record "VAT Book Entry";
    begin
        PurchCrLine.Reset();
        PurchCrLine.SetRange("Document No.", lrec."No.");
        if PurchCrLine.FindSet() then
            repeat
                PurchCrLine."Posting Date" := lrec."Posting Date";
                PurchCrLine.Modify();
            until PurchCrLine.Next() = 0;
        GLEntry.Reset();
        GLEntry.SetRange("Document No.", lrec."No.");
        if GLEntry.findset then
            repeat
                GLEntry."Document Date" := lrec."Document Date";
                GLEntry."Posting Date" := lrec."Posting Date";
                GLEntry.Description := lrec."Posting Description";
                GLEntry.Modify();
            until GLEntry.Next() = 0;
        VATEntry.Reset();
        VATEntry.SetRange("Document No.", lrec."No.");
        VATEntry.SetRange(Type, VATEntry.Type::Purchase);
        if VATEntry.findset then
            repeat
                VATEntry."Document Date" := lrec."Document Date";
                VATEntry."Posting Date" := lrec."Posting Date";
                VATEntry.Modify();
                lReverseVatEntry.Reset();
                lReverseVatEntry.SetRange("Transaction No.", VATEntry."Transaction No.");
                lReverseVatEntry.SetRange(Type, lReverseVatEntry.Type::Sale);
                if lReverseVatEntry.FindFirst() then begin
                    lReverseVatEntry."Posting Date" := lrec."Posting Date";
                    lReverseVatEntry."Document Date" := lrec."Document Date";
                    lReverseVatEntry.Modify();
                end;
            until VATEntry.Next() = 0;
        VendLedgEntry.Reset();
        VendLedgEntry.SetRange("Document No.", lrec."No.");
        if VendLedgEntry.findset then repeat VendLedgEntry."Document Date" := lrec."Document Date"; VendLedgEntry."Posting Date" := lrec."Posting Date"; VendLedgEntry.Description := lrec."Posting Description"; VendLedgEntry.Modify(); until VendLedgEntry.Next() = 0;
        DtldVendLedgEntry.Reset();
        DtldVendLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldVendLedgEntry.findset then repeat DtldVendLedgEntry."Posting Date" := lrec."Posting Date"; DtldVendLedgEntry.Modify(); until DtldVendLedgEntry.Next() = 0;
        EmplLedgEntry.Reset();
        EmplLedgEntry.SetRange("Document No.", lrec."No.");
        if EmplLedgEntry.findset then repeat EmplLedgEntry."Posting Date" := lrec."Posting Date"; EmplLedgEntry.Description := lrec."Posting Description"; EmplLedgEntry.Modify(); until EmplLedgEntry.Next() = 0;
        DtldEmplLedgEntry.Reset();
        DtldEmplLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldEmplLedgEntry.findset then repeat DtldEmplLedgEntry."Posting Date" := lrec."Posting Date"; DtldEmplLedgEntry.Modify(); until DtldEmplLedgEntry.Next() = 0;
        ItemLedgEntry.Reset();
        ItemLedgEntry.SetRange("Document No.", lrec."No.");
        if ItemLedgEntry.findset then repeat ItemLedgEntry."Document Date" := lrec."Document Date"; ItemLedgEntry."Posting Date" := lrec."Posting Date"; ItemLedgEntry.Description := lrec."Posting Description"; ItemLedgEntry.Modify(); until ItemLedgEntry.Next() = 0;
        PhysInvtLedgEntry.Reset();
        PhysInvtLedgEntry.SetRange("Document No.", lrec."No.");
        if PhysInvtLedgEntry.findset then repeat PhysInvtLedgEntry."Document Date" := lrec."Document Date"; PhysInvtLedgEntry."Posting Date" := lrec."Posting Date"; PhysInvtLedgEntry.Description := lrec."Posting Description"; PhysInvtLedgEntry.Modify(); until PhysInvtLedgEntry.Next() = 0;
        ResLedgEntry.Reset();
        ResLedgEntry.SetRange("Document No.", lrec."No.");
        if ResLedgEntry.findset then repeat ResLedgEntry."Document Date" := lrec."Document Date"; ResLedgEntry."Posting Date" := lrec."Posting Date"; ResLedgEntry.Description := lrec."Posting Description"; ResLedgEntry.Modify(); until ResLedgEntry.Next() = 0;
        JobLedgEntry.Reset();
        JobLedgEntry.SetRange("Document No.", lrec."No.");
        if JobLedgEntry.findset then repeat JobLedgEntry."Document Date" := lrec."Document Date"; JobLedgEntry."Posting Date" := lrec."Posting Date"; JobLedgEntry.Description := lrec."Posting Description"; JobLedgEntry.Modify(); until JobLedgEntry.Next() = 0;
        JobWIPGLEntry.Reset();
        JobWIPGLEntry.SetRange("Document No.", lrec."No.");
        if JobWIPGLEntry.findset then repeat JobWIPGLEntry."Posting Date" := lrec."Posting Date"; JobWIPGLEntry.Description := lrec."Posting Description"; JobWIPGLEntry.Modify(); until JobWIPGLEntry.Next() = 0;
        ValueEntry.Reset();
        ValueEntry.SetRange("Document No.", lrec."No.");
        if ValueEntry.findset then repeat ValueEntry."Document Date" := lrec."Document Date"; ValueEntry."Posting Date" := lrec."Posting Date"; ValueEntry.Description := lrec."Posting Description"; ValueEntry.Modify(); until ValueEntry.Next() = 0;
        BankAccLedgEntry.Reset();
        BankAccLedgEntry.SetRange("Document No.", lrec."No.");
        if BankAccLedgEntry.findset then repeat BankAccLedgEntry."Document Date" := lrec."Document Date"; BankAccLedgEntry."Posting Date" := lrec."Posting Date"; BankAccLedgEntry.Description := lrec."Posting Description"; BankAccLedgEntry.Modify(); until BankAccLedgEntry.Next() = 0;
        CheckLedgEntry.Reset();
        CheckLedgEntry.SetRange("Document No.", lrec."No.");
        if CheckLedgEntry.findset then repeat CheckLedgEntry."Posting Date" := lrec."Posting Date"; CheckLedgEntry.Description := lrec."Posting Description"; CheckLedgEntry.Modify(); until CheckLedgEntry.Next() = 0;
        ReminderEntry.Reset();
        ReminderEntry.SetRange("Document No.", lrec."No.");
        if ReminderEntry.findset then repeat ReminderEntry."Document Date" := lrec."Document Date"; ReminderEntry."Posting Date" := lrec."Posting Date"; ReminderEntry.Modify(); until ReminderEntry.Next() = 0;
        FALedgEntry.Reset();
        FALedgEntry.SetRange("Document No.", lrec."No.");
        if FALedgEntry.findset then repeat FALedgEntry."Document Date" := lrec."Document Date"; FALedgEntry."Posting Date" := lrec."Posting Date"; FALedgEntry.Description := lrec."Posting Description"; FALedgEntry.Modify(); until FALedgEntry.Next() = 0;
        MaintenanceLedgEntry.Reset();
        MaintenanceLedgEntry.SetRange("Document No.", lrec."No.");
        if MaintenanceLedgEntry.findset then repeat MaintenanceLedgEntry."Document Date" := lrec."Document Date"; MaintenanceLedgEntry."Posting Date" := lrec."Posting Date"; MaintenanceLedgEntry.Description := lrec."Posting Description"; MaintenanceLedgEntry.Modify(); until MaintenanceLedgEntry.Next() = 0;
        InsuranceCovLedgEntry.Reset();
        InsuranceCovLedgEntry.SetRange("Document No.", lrec."No.");
        if InsuranceCovLedgEntry.findset then repeat InsuranceCovLedgEntry."Document Date" := lrec."Document Date"; InsuranceCovLedgEntry."Posting Date" := lrec."Posting Date"; InsuranceCovLedgEntry.Description := lrec."Posting Description"; InsuranceCovLedgEntry.Modify(); until InsuranceCovLedgEntry.Next() = 0;
        CapacityLedgEntry.Reset();
        CapacityLedgEntry.SetRange("Document No.", lrec."No.");
        if CapacityLedgEntry.findset then repeat CapacityLedgEntry."Document Date" := lrec."Document Date"; CapacityLedgEntry."Posting Date" := lrec."Posting Date"; CapacityLedgEntry.Description := lrec."Posting Description"; CapacityLedgEntry.Modify(); until CapacityLedgEntry.Next() = 0;
        ServLedgerEntry.Reset();
        ServLedgerEntry.SetRange("Document No.", lrec."No.");
        if ServLedgerEntry.findset then repeat ServLedgerEntry."Posting Date" := lrec."Posting Date"; ServLedgerEntry.Description := lrec."Posting Description"; ServLedgerEntry.Modify(); until ServLedgerEntry.Next() = 0;
        WarrantyLedgerEntry.Reset();
        WarrantyLedgerEntry.SetRange("Document No.", lrec."No.");
        if WarrantyLedgerEntry.findset then repeat WarrantyLedgerEntry."Posting Date" := lrec."Posting Date"; WarrantyLedgerEntry.Description := lrec."Posting Description"; WarrantyLedgerEntry.Modify(); until WarrantyLedgerEntry.Next() = 0;
        CostEntry.Reset();
        CostEntry.SetRange("Document No.", lrec."No.");
        if CostEntry.findset then repeat CostEntry."Posting Date" := lrec."Posting Date"; CostEntry.Description := lrec."Posting Description"; CostEntry.Modify(); until CostEntry.Next() = 0;

        IncomingDocument.Reset();
        IncomingDocument.SetRange("Document No.", lrec."No.");
        if IncomingDocument.findset then repeat IncomingDocument."Document Date" := lrec."Document Date"; IncomingDocument."Posting Date" := lrec."Posting Date"; IncomingDocument.Description := lrec."Posting Description"; IncomingDocument.Modify(); until IncomingDocument.Next() = 0;
    end;

    local procedure UpdateSalesInv(var lrec: Record "Sales Invoice Header")
    begin
        SalesInvLine.Reset();
        SalesInvLine.SetRange("Document No.", lrec."No.");
        if SalesInvLine.FindSet() then
            repeat
                SalesInvLine."Posting Date" := lrec."Posting Date";
                SalesInvLine.Modify();
            until SalesInvLine.Next() = 0;
        GLEntry.Reset();
        GLEntry.SetRange("Document No.", lrec."No.");
        if GLEntry.findset then repeat GLEntry."Document Date" := lrec."Document Date"; GLEntry."Posting Date" := lrec."Posting Date"; GLEntry.Description := lrec."Posting Description"; GLEntry.Modify(); until GLEntry.Next() = 0;
        VATEntry.Reset();
        VATEntry.SetRange("Document No.", lrec."No.");
        if VATEntry.findset then repeat VATEntry."Document Date" := lrec."Document Date"; VATEntry."Posting Date" := lrec."Posting Date"; VATEntry.Modify(); until VATEntry.Next() = 0;
        CustledgEntry.Reset();
        CustledgEntry.SetRange("Document No.", lrec."No.");
        if CustledgEntry.findset then repeat CustledgEntry."Document Date" := lrec."Document Date"; CustledgEntry."Posting Date" := lrec."Posting Date"; CustledgEntry.Description := lrec."Posting Description"; CustledgEntry.Modify(); until CustledgEntry.Next() = 0;
        DtldCustLedgEntry.Reset();
        DtldCustLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldCustLedgEntry.findset then repeat DtldCustLedgEntry."Posting Date" := lrec."Posting Date"; DtldCustLedgEntry.Modify(); until DtldCustLedgEntry.Next() = 0;
        EmplLedgEntry.Reset();
        EmplLedgEntry.SetRange("Document No.", lrec."No.");
        if EmplLedgEntry.findset then repeat EmplLedgEntry."Posting Date" := lrec."Posting Date"; EmplLedgEntry.Description := lrec."Posting Description"; EmplLedgEntry.Modify(); until EmplLedgEntry.Next() = 0;
        DtldEmplLedgEntry.Reset();
        DtldEmplLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldEmplLedgEntry.findset then repeat DtldEmplLedgEntry."Posting Date" := lrec."Posting Date"; DtldEmplLedgEntry.Modify(); until DtldEmplLedgEntry.Next() = 0;
        ItemLedgEntry.Reset();
        ItemLedgEntry.SetRange("Document No.", lrec."No.");
        if ItemLedgEntry.findset then repeat ItemLedgEntry."Document Date" := lrec."Document Date"; ItemLedgEntry."Posting Date" := lrec."Posting Date"; ItemLedgEntry.Description := lrec."Posting Description"; ItemLedgEntry.Modify(); until ItemLedgEntry.Next() = 0;
        PhysInvtLedgEntry.Reset();
        PhysInvtLedgEntry.SetRange("Document No.", lrec."No.");
        if PhysInvtLedgEntry.findset then repeat PhysInvtLedgEntry."Document Date" := lrec."Document Date"; PhysInvtLedgEntry."Posting Date" := lrec."Posting Date"; PhysInvtLedgEntry.Description := lrec."Posting Description"; PhysInvtLedgEntry.Modify(); until PhysInvtLedgEntry.Next() = 0;
        ResLedgEntry.Reset();
        ResLedgEntry.SetRange("Document No.", lrec."No.");
        if ResLedgEntry.findset then repeat ResLedgEntry."Document Date" := lrec."Document Date"; ResLedgEntry."Posting Date" := lrec."Posting Date"; ResLedgEntry.Description := lrec."Posting Description"; ResLedgEntry.Modify(); until ResLedgEntry.Next() = 0;
        JobLedgEntry.Reset();
        JobLedgEntry.SetRange("Document No.", lrec."No.");
        if JobLedgEntry.findset then repeat JobLedgEntry."Document Date" := lrec."Document Date"; JobLedgEntry."Posting Date" := lrec."Posting Date"; JobLedgEntry.Description := lrec."Posting Description"; JobLedgEntry.Modify(); until JobLedgEntry.Next() = 0;
        JobWIPGLEntry.Reset();
        JobWIPGLEntry.SetRange("Document No.", lrec."No.");
        if JobWIPGLEntry.findset then repeat JobWIPGLEntry."Posting Date" := lrec."Posting Date"; JobWIPGLEntry.Description := lrec."Posting Description"; JobWIPGLEntry.Modify(); until JobWIPGLEntry.Next() = 0;
        ValueEntry.Reset();
        ValueEntry.SetRange("Document No.", lrec."No.");
        if ValueEntry.findset then repeat ValueEntry."Document Date" := lrec."Document Date"; ValueEntry."Posting Date" := lrec."Posting Date"; ValueEntry.Description := lrec."Posting Description"; ValueEntry.Modify(); until ValueEntry.Next() = 0;
        BankAccLedgEntry.Reset();
        BankAccLedgEntry.SetRange("Document No.", lrec."No.");
        if BankAccLedgEntry.findset then repeat BankAccLedgEntry."Document Date" := lrec."Document Date"; BankAccLedgEntry."Posting Date" := lrec."Posting Date"; BankAccLedgEntry.Description := lrec."Posting Description"; BankAccLedgEntry.Modify(); until BankAccLedgEntry.Next() = 0;
        CheckLedgEntry.Reset();
        CheckLedgEntry.SetRange("Document No.", lrec."No.");
        if CheckLedgEntry.findset then repeat CheckLedgEntry."Posting Date" := lrec."Posting Date"; CheckLedgEntry.Description := lrec."Posting Description"; CheckLedgEntry.Modify(); until CheckLedgEntry.Next() = 0;
        ReminderEntry.Reset();
        ReminderEntry.SetRange("Document No.", lrec."No.");
        if ReminderEntry.findset then repeat ReminderEntry."Document Date" := lrec."Document Date"; ReminderEntry."Posting Date" := lrec."Posting Date"; ReminderEntry.Modify(); until ReminderEntry.Next() = 0;
        FALedgEntry.Reset();
        FALedgEntry.SetRange("Document No.", lrec."No.");
        if FALedgEntry.findset then repeat FALedgEntry."Document Date" := lrec."Document Date"; FALedgEntry."Posting Date" := lrec."Posting Date"; FALedgEntry.Description := lrec."Posting Description"; FALedgEntry.Modify(); until FALedgEntry.Next() = 0;
        MaintenanceLedgEntry.Reset();
        MaintenanceLedgEntry.SetRange("Document No.", lrec."No.");
        if MaintenanceLedgEntry.findset then repeat MaintenanceLedgEntry."Document Date" := lrec."Document Date"; MaintenanceLedgEntry."Posting Date" := lrec."Posting Date"; MaintenanceLedgEntry.Description := lrec."Posting Description"; MaintenanceLedgEntry.Modify(); until MaintenanceLedgEntry.Next() = 0;
        InsuranceCovLedgEntry.Reset();
        InsuranceCovLedgEntry.SetRange("Document No.", lrec."No.");
        if InsuranceCovLedgEntry.findset then repeat InsuranceCovLedgEntry."Document Date" := lrec."Document Date"; InsuranceCovLedgEntry."Posting Date" := lrec."Posting Date"; InsuranceCovLedgEntry.Description := lrec."Posting Description"; InsuranceCovLedgEntry.Modify(); until InsuranceCovLedgEntry.Next() = 0;
        CapacityLedgEntry.Reset();
        CapacityLedgEntry.SetRange("Document No.", lrec."No.");
        if CapacityLedgEntry.findset then repeat CapacityLedgEntry."Document Date" := lrec."Document Date"; CapacityLedgEntry."Posting Date" := lrec."Posting Date"; CapacityLedgEntry.Description := lrec."Posting Description"; CapacityLedgEntry.Modify(); until CapacityLedgEntry.Next() = 0;
        ServLedgerEntry.Reset();
        ServLedgerEntry.SetRange("Document No.", lrec."No.");
        if ServLedgerEntry.findset then repeat ServLedgerEntry."Posting Date" := lrec."Posting Date"; ServLedgerEntry.Description := lrec."Posting Description"; ServLedgerEntry.Modify(); until ServLedgerEntry.Next() = 0;
        WarrantyLedgerEntry.Reset();
        WarrantyLedgerEntry.SetRange("Document No.", lrec."No.");
        if WarrantyLedgerEntry.findset then repeat WarrantyLedgerEntry."Posting Date" := lrec."Posting Date"; WarrantyLedgerEntry.Description := lrec."Posting Description"; WarrantyLedgerEntry.Modify(); until WarrantyLedgerEntry.Next() = 0;
        CostEntry.Reset();
        CostEntry.SetRange("Document No.", lrec."No.");
        if CostEntry.findset then repeat CostEntry."Posting Date" := lrec."Posting Date"; CostEntry.Description := lrec."Posting Description"; CostEntry.Modify(); until CostEntry.Next() = 0;

        IncomingDocument.Reset();
        IncomingDocument.SetRange("Document No.", lrec."No.");
        if IncomingDocument.findset then repeat IncomingDocument."Document Date" := lrec."Document Date"; IncomingDocument."Posting Date" := lrec."Posting Date"; IncomingDocument.Description := lrec."Posting Description"; IncomingDocument.Modify(); until IncomingDocument.Next() = 0;
    end;

    local procedure UpdateSalesCrMemo(var lrec: Record "Sales Cr.Memo Header")
    begin
        SalesCrLine.Reset();
        SalesCrLine.SetRange("Document No.", lrec."No.");
        if SalesCrLine.FindSet() then
            repeat
                SalesCrLine."Posting Date" := lrec."Posting Date";
                SalesCrLine.Modify();
            until SalesCrLine.Next() = 0;
        GLEntry.Reset();
        GLEntry.SetRange("Document No.", lrec."No.");
        if GLEntry.findset then repeat GLEntry."Document Date" := lrec."Document Date"; GLEntry."Posting Date" := lrec."Posting Date"; GLEntry.Description := lrec."Posting Description"; GLEntry.Modify(); until GLEntry.Next() = 0;
        VATEntry.Reset();
        VATEntry.SetRange("Document No.", lrec."No.");
        if VATEntry.findset then repeat VATEntry."Document Date" := lrec."Document Date"; VATEntry."Posting Date" := lrec."Posting Date"; VATEntry.Modify(); until VATEntry.Next() = 0;
        CustledgEntry.Reset();
        CustledgEntry.SetRange("Document No.", lrec."No.");
        if CustledgEntry.findset then repeat CustledgEntry."Document Date" := lrec."Document Date"; CustledgEntry."Posting Date" := lrec."Posting Date"; CustledgEntry.Description := lrec."Posting Description"; CustledgEntry.Modify(); until CustledgEntry.Next() = 0;
        DtldCustLedgEntry.Reset();
        DtldCustLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldCustLedgEntry.findset then repeat DtldCustLedgEntry."Posting Date" := lrec."Posting Date"; DtldCustLedgEntry.Modify(); until DtldCustLedgEntry.Next() = 0;
        EmplLedgEntry.Reset();
        EmplLedgEntry.SetRange("Document No.", lrec."No.");
        if EmplLedgEntry.findset then repeat EmplLedgEntry."Posting Date" := lrec."Posting Date"; EmplLedgEntry.Description := lrec."Posting Description"; EmplLedgEntry.Modify(); until EmplLedgEntry.Next() = 0;
        DtldEmplLedgEntry.Reset();
        DtldEmplLedgEntry.SetRange("Document No.", lrec."No.");
        if DtldEmplLedgEntry.findset then repeat DtldEmplLedgEntry."Posting Date" := lrec."Posting Date"; DtldEmplLedgEntry.Modify(); until DtldEmplLedgEntry.Next() = 0;
        ItemLedgEntry.Reset();
        ItemLedgEntry.SetRange("Document No.", lrec."No.");
        if ItemLedgEntry.findset then repeat ItemLedgEntry."Document Date" := lrec."Document Date"; ItemLedgEntry."Posting Date" := lrec."Posting Date"; ItemLedgEntry.Description := lrec."Posting Description"; ItemLedgEntry.Modify(); until ItemLedgEntry.Next() = 0;
        PhysInvtLedgEntry.Reset();
        PhysInvtLedgEntry.SetRange("Document No.", lrec."No.");
        if PhysInvtLedgEntry.findset then repeat PhysInvtLedgEntry."Document Date" := lrec."Document Date"; PhysInvtLedgEntry."Posting Date" := lrec."Posting Date"; PhysInvtLedgEntry.Description := lrec."Posting Description"; PhysInvtLedgEntry.Modify(); until PhysInvtLedgEntry.Next() = 0;
        ResLedgEntry.Reset();
        ResLedgEntry.SetRange("Document No.", lrec."No.");
        if ResLedgEntry.findset then repeat ResLedgEntry."Document Date" := lrec."Document Date"; ResLedgEntry."Posting Date" := lrec."Posting Date"; ResLedgEntry.Description := lrec."Posting Description"; ResLedgEntry.Modify(); until ResLedgEntry.Next() = 0;
        JobLedgEntry.Reset();
        JobLedgEntry.SetRange("Document No.", lrec."No.");
        if JobLedgEntry.findset then repeat JobLedgEntry."Document Date" := lrec."Document Date"; JobLedgEntry."Posting Date" := lrec."Posting Date"; JobLedgEntry.Description := lrec."Posting Description"; JobLedgEntry.Modify(); until JobLedgEntry.Next() = 0;
        JobWIPGLEntry.Reset();
        JobWIPGLEntry.SetRange("Document No.", lrec."No.");
        if JobWIPGLEntry.findset then repeat JobWIPGLEntry."Posting Date" := lrec."Posting Date"; JobWIPGLEntry.Description := lrec."Posting Description"; JobWIPGLEntry.Modify(); until JobWIPGLEntry.Next() = 0;
        ValueEntry.Reset();
        ValueEntry.SetRange("Document No.", lrec."No.");
        if ValueEntry.findset then repeat ValueEntry."Document Date" := lrec."Document Date"; ValueEntry."Posting Date" := lrec."Posting Date"; ValueEntry.Description := lrec."Posting Description"; ValueEntry.Modify(); until ValueEntry.Next() = 0;
        BankAccLedgEntry.Reset();
        BankAccLedgEntry.SetRange("Document No.", lrec."No.");
        if BankAccLedgEntry.findset then repeat BankAccLedgEntry."Document Date" := lrec."Document Date"; BankAccLedgEntry."Posting Date" := lrec."Posting Date"; BankAccLedgEntry.Description := lrec."Posting Description"; BankAccLedgEntry.Modify(); until BankAccLedgEntry.Next() = 0;
        CheckLedgEntry.Reset();
        CheckLedgEntry.SetRange("Document No.", lrec."No.");
        if CheckLedgEntry.findset then repeat CheckLedgEntry."Posting Date" := lrec."Posting Date"; CheckLedgEntry.Description := lrec."Posting Description"; CheckLedgEntry.Modify(); until CheckLedgEntry.Next() = 0;
        ReminderEntry.Reset();
        ReminderEntry.SetRange("Document No.", lrec."No.");
        if ReminderEntry.findset then repeat ReminderEntry."Document Date" := lrec."Document Date"; ReminderEntry."Posting Date" := lrec."Posting Date"; ReminderEntry.Modify(); until ReminderEntry.Next() = 0;
        FALedgEntry.Reset();
        FALedgEntry.SetRange("Document No.", lrec."No.");
        if FALedgEntry.findset then repeat FALedgEntry."Document Date" := lrec."Document Date"; FALedgEntry."Posting Date" := lrec."Posting Date"; FALedgEntry.Description := lrec."Posting Description"; FALedgEntry.Modify(); until FALedgEntry.Next() = 0;
        MaintenanceLedgEntry.Reset();
        MaintenanceLedgEntry.SetRange("Document No.", lrec."No.");
        if MaintenanceLedgEntry.findset then repeat MaintenanceLedgEntry."Document Date" := lrec."Document Date"; MaintenanceLedgEntry."Posting Date" := lrec."Posting Date"; MaintenanceLedgEntry.Description := lrec."Posting Description"; MaintenanceLedgEntry.Modify(); until MaintenanceLedgEntry.Next() = 0;
        InsuranceCovLedgEntry.Reset();
        InsuranceCovLedgEntry.SetRange("Document No.", lrec."No.");
        if InsuranceCovLedgEntry.findset then repeat InsuranceCovLedgEntry."Document Date" := lrec."Document Date"; InsuranceCovLedgEntry."Posting Date" := lrec."Posting Date"; InsuranceCovLedgEntry.Description := lrec."Posting Description"; InsuranceCovLedgEntry.Modify(); until InsuranceCovLedgEntry.Next() = 0;
        CapacityLedgEntry.Reset();
        CapacityLedgEntry.SetRange("Document No.", lrec."No.");
        if CapacityLedgEntry.findset then repeat CapacityLedgEntry."Document Date" := lrec."Document Date"; CapacityLedgEntry."Posting Date" := lrec."Posting Date"; CapacityLedgEntry.Description := lrec."Posting Description"; CapacityLedgEntry.Modify(); until CapacityLedgEntry.Next() = 0;
        ServLedgerEntry.Reset();
        ServLedgerEntry.SetRange("Document No.", lrec."No.");
        if ServLedgerEntry.findset then repeat ServLedgerEntry."Posting Date" := lrec."Posting Date"; ServLedgerEntry.Description := lrec."Posting Description"; ServLedgerEntry.Modify(); until ServLedgerEntry.Next() = 0;
        WarrantyLedgerEntry.Reset();
        WarrantyLedgerEntry.SetRange("Document No.", lrec."No.");
        if WarrantyLedgerEntry.findset then repeat WarrantyLedgerEntry."Posting Date" := lrec."Posting Date"; WarrantyLedgerEntry.Description := lrec."Posting Description"; WarrantyLedgerEntry.Modify(); until WarrantyLedgerEntry.Next() = 0;
        CostEntry.Reset();
        CostEntry.SetRange("Document No.", lrec."No.");
        if CostEntry.findset then repeat CostEntry."Posting Date" := lrec."Posting Date"; CostEntry.Description := lrec."Posting Description"; CostEntry.Modify(); until CostEntry.Next() = 0;

        IncomingDocument.Reset();
        IncomingDocument.SetRange("Document No.", lrec."No.");
        if IncomingDocument.findset then repeat IncomingDocument."Document Date" := lrec."Document Date"; IncomingDocument."Posting Date" := lrec."Posting Date"; IncomingDocument.Description := lrec."Posting Description"; IncomingDocument.Modify(); until IncomingDocument.Next() = 0;
    end;

    local procedure CheckPeriodoContabileChiuso(DataRegistrazione: Date)
    var
        lAccountingPeriod: Record "Accounting Period";
    begin
        lAccountingPeriod.SetFilter("Starting Date", '..%1', DataRegistrazione);
        if lAccountingPeriod.FindLast then
            if (lAccountingPeriod.Closed = true) then
                Error(Err000001);
    end;

    var
        //PurchInvoiceHeader: Record "Purch. Inv. Header";
        GLEntry: Record "G/L Entry";
        Text000: Label 'Please Insert Entry Type';
        Text001: Label 'Please Insert Document Type';
        Text002: Label 'Please Insert Document No.';
        Text003: Label 'Please Insert New Document Date';
        Text004: Label 'You cannot assign new numbers from the number series %1 on a date before %2.';
        Text006: Label 'Modification Completed';
        Text007: Label 'Document Date cannot be greater than Posting Date';
        Text008: label 'Can not change Posting Date';
        Err000001: Label 'The period is closed!';
        VATEntry: Record "VAT Entry";
        VendLedgEntry: Record "Vendor Ledger Entry";
        DtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry";

        CustledgEntry: Record "Cust. Ledger Entry";
        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
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

        xRecPIH: Record "Purch. Inv. Header";
        OldDescr: Text;
        gEntryTypeEdit: Boolean;
        gDocTypeEdit: Boolean;
        gOldDocDateEdit: Boolean;
        //AX-e
        i: Integer;
        CLE: Record "Cust. Ledger Entry";
        LogEMTUpdate: record "Log EMT Update";
        gOldDocumentDate: Date;
        gyear: Integer;
        goldPostingDate: date;
        SalesInvLine: Record "Sales Invoice Line";
        SalesCrLine: record "Sales Cr.Memo Line";
        PurchInvLine: Record "Purch. Inv. Line";
        PurchCrLine: Record "Purch. Cr. Memo Line";

    local procedure CheckDocumentNo(pDocNo: Date; pPostingDate: date)
    begin
        if pDocNo > pPostingDate then
            // Error(Text007, pPostingDate);
            Error(Text007);
    end;

    local procedure AllowChangePostingDate(pEntryType: Option " ",Sale,Purchase,"Reverse Charge"; OldPostDate: date; NewPostDate: date; DocNo: code[20]; OpType: Code[20])
    var
        // PurchInvoice: Record 122;
        // lNoSeriesLineSales: Record "No. Series Line Sales";
        lDate: date;
    begin
        if gyear <> Date2DMY(NewPostDate, 3) then
            Error(Text008);

        case pEntryType of
            pEntryType::Purchase:
                begin
                    if IsLastDoc(pEntryType, OldPostDate, DocNo, OpType) then begin
                        if NewPostDate < OldPostDate then begin
                            lDate := FindPreviewsDoc(pEntryType, OpType, DocNo);
                            if (Not (NewPostDate >= lDate)) and (lDate <> 0D) then
                                Error(Text008);
                        end;
                        //Change Last date Used
                        //?
                        //     lNoSeriesLinePurchase.Reset();
                        //     lNoSeriesLinePurchase.SetRange("Series Code", OpType);
                        //     lNoSeriesLinePurchase.SetRange("Last No. Used", DocNo);
                        //     if lNoSeriesLinePurchase.FindFirst() then begin
                        //         lNoSeriesLinePurchase."Last Date Used" := NewPostDate;
                        //         lNoSeriesLinePurchase.Modify();
                        //     end;
                    end else begin
                        if NewPostDate > OldPostDate then begin
                            lDate := FindNextDoc(pEntryType, OpType, DocNo);
                            if (not (NewPostDate <= lDate)) And (lDate <> 0D) then
                                Error(Text008)
                        end
                        else begin
                            lDate := FindPreviewsDoc(pEntryType, OpType, DocNo);
                            if (Not (NewPostDate >= lDate)) and (lDate <> 0D) then
                                Error(Text008);
                        end;
                    end;
                end;
            pEntryType::Sale:
                begin
                    if IsLastDoc(pEntryType, OldPostDate, DocNo, OpType) then begin
                        if NewPostDate < OldPostDate then begin
                            lDate := FindPreviewsDoc(pEntryType, OpType, DocNo);
                            if (Not (NewPostDate >= lDate)) and (lDate <> 0D) then
                                Error(Text008);
                        end;

                        //Change Last date Used
                        //?
                        //     lNoSeriesLineSales.Reset();
                        //     lNoSeriesLineSales.SetRange("Series Code", OpType);
                        //     lNoSeriesLineSales.SetRange("Last No. Used", DocNo);
                        //     if lNoSeriesLineSales.FindFirst() then begin
                        //         lNoSeriesLineSales."Last Date Used" := NewPostDate;
                        //         lNoSeriesLineSales.Modify();
                        // end;
                    end else begin
                        if NewPostDate > OldPostDate then begin
                            lDate := FindNextDoc(pEntryType, OpType, DocNo);
                            if (not (NewPostDate <= lDate)) and (lDate <> 0D) then
                                Error(Text008)
                        end
                        else begin
                            lDate := FindPreviewsDoc(pEntryType, OpType, DocNo);
                            if (Not (NewPostDate >= lDate)) and (lDate <> 0D) then
                                Error(Text008);
                        end;
                    end;
                end;
            pEntryType::"Reverse Charge":
                begin
                    if IsLastDoc(1, OldPostDate, DocNo, OpType) then begin
                        if NewPostDate < OldPostDate then begin
                            lDate := FindPreviewsDoc(pEntryType, OpType, DocNo);
                            if (Not (NewPostDate >= lDate)) and (lDate <> 0D) then
                                Error(Text008);
                        end;
                        //Change Last date Used
                        //?
                        //     lNoSeriesLineSales.Reset();
                        //     lNoSeriesLineSales.SetRange("Series Code", OpType);
                        //     lNoSeriesLineSales.SetRange("Last No. Used", DocNo);
                        //     if lNoSeriesLineSales.FindFirst() then begin
                        //         lNoSeriesLineSales."Last Date Used" := NewPostDate;
                        //         lNoSeriesLineSales.Modify();
                        //     end;
                    end;

                end;
        end;
    end;

    local procedure IsLastDoc(pEntryType: Option " ",Sale,Purchase; OldPostDate: date; DocNo: code[20]; OpType: code[20]): Boolean
    var
        lNoSeries: Record "No. Series";
    // lNoSeriesLineSales: Record "No. Series Line Sales";
    begin
        case pEntryType of
            pEntryType::Purchase:
                begin
                    // //     lNoSeriesLinePurchase.Reset();
                    // //     lNoSeriesLinePurchase.SetRange("Series Code", OpType);
                    // //     lNoSeriesLinePurchase.SetFilter("Starting Date", '<=%1', oldPostDate);
                    // //     lNoSeriesLinePurchase.SetFilter("Last Date Used", '>=%1', OldPostDate);
                    // //     if lNoSeriesLinePurchase.FindFirst() then begin
                    // //         gyear := Date2DMY(lNoSeriesLinePurchase."Starting Date", 3);
                    // //         exit(lNoSeriesLinePurchase."Last No. Used" = DocNo)
                    // //     end;
                end;
            pEntryType::Sale:
                begin
                    // // lNoSeriesLineSales.Reset();
                    // // lNoSeriesLineSales.SetRange("Series Code", OpType);
                    // // lNoSeriesLineSales.SetFilter("Starting Date", '<=%1', oldPostDate);
                    // // lNoSeriesLineSales.SetFilter("Last Date Used", '>=%1', OldPostDate);
                    // // if lNoSeriesLineSales.FindFirst() then begin
                    // //     gyear := Date2DMY(lNoSeriesLineSales."Starting Date", 3);
                    // //     exit(lNoSeriesLineSales."Last No. Used" = DocNo)
                    // // end;
                end;
        end;
    end;

    local procedure FindPreviewsDoc(pEntryType: Option " ",Sale,Purchase,"Reverse Charge"; OpType: Code[20]; DocNo: code[20]): Date
    var
        PurchInvoice: Record "Purch. Inv. Header";
        PurchCrMemo: Record "Purch. Cr. Memo Hdr.";
        SalesInvoice: Record "Sales Invoice Header";
        SalesCrMemo: Record "Sales Cr.Memo Header";
        lVatEntry: Record "VAT Entry";
    begin
        case pEntryType of
            pEntryType::Purchase:
                begin
                    PurchInvoice.Reset();
                    PurchInvoice.SetFilter("No.", '<%1', DocNo);
                    if PurchInvoice.FindLast() then;

                    PurchCrMemo.Reset();
                    PurchCrMemo.SetFilter("No.", '<%1', DocNo);
                    if PurchCrMemo.FindLast() then;

                    if PurchCrMemo."No." > PurchInvoice."No." then
                        exit(PurchCrMemo."Posting Date")
                    else
                        exit(PurchInvoice."Posting Date")
                end;
            pEntryType::Sale:
                begin
                    SalesInvoice.Reset();
                    SalesInvoice.SetFilter("No.", '<%1', DocNo);
                    if SalesInvoice.FindLast() then;

                    SalesCrMemo.Reset();
                    SalesCrMemo.SetFilter("No.", '<%1', DocNo);
                    if SalesCrMemo.FindLast() then;

                    if SalesCrMemo."No." > SalesInvoice."No." then
                        exit(SalesCrMemo."Posting Date")
                    else
                        exit(SalesInvoice."Posting Date")
                end;
            pEntryType::"Reverse Charge":
                begin
                    lVatEntry.Reset();
                    lVatEntry.SetRange("No. Series", OpType);
                    lVatEntry.SetRange(Type, lVatEntry.Type::Sale);
                    lVatEntry.SetFilter("Document No.", '<%1', DocNo);
                    if lVatEntry.FindLast() then;
                end;
        end;
    end;

    local procedure FindNextDoc(pEntryType: Option " ",Sale,Purchase,"Reverse Charge"; OpType: Code[20]; DocNo: code[20]): Date
    var
        PurchInvoice: Record "Purch. Inv. Header";
        PurchCrMemo: Record "Purch. Cr. Memo Hdr.";
        SalesInvoice: Record "Sales Invoice Header";
        SalesCrMemo: Record "Sales Cr.Memo Header";
        lVatEntry: Record "VAT Entry";
    begin
        case pEntryType of
            pEntryType::Purchase:
                begin
                    PurchInvoice.Reset();
                    PurchInvoice.SetFilter("No.", '>%1', DocNo);
                    if PurchInvoice.FindFirst() then;

                    PurchCrMemo.Reset();
                    PurchCrMemo.SetFilter("No.", '>%1', DocNo);
                    if PurchCrMemo.FindFirst() then;

                    if PurchCrMemo."No." > PurchInvoice."No." then
                        exit(PurchCrMemo."Posting Date")
                    else
                        exit(PurchInvoice."Posting Date")
                end;
            pEntryType::Sale:
                begin
                    SalesInvoice.Reset();
                    SalesInvoice.SetFilter("No.", '>%1', DocNo);
                    if SalesInvoice.FindFirst() then;

                    SalesCrMemo.Reset();
                    SalesCrMemo.SetFilter("No.", '>%1', DocNo);
                    if SalesCrMemo.FindFirst() then;

                    if SalesCrMemo."No." > SalesInvoice."No." then
                        exit(SalesCrMemo."Posting Date")
                    else
                        exit(SalesInvoice."Posting Date")
                end;
            pEntryType::"Reverse Charge":
                begin
                    lVatEntry.Reset();
                    lVatEntry.SetRange("No. Series", OpType);
                    lVatEntry.SetRange(Type, lVatEntry.Type::Sale);
                    lVatEntry.SetFilter("Document No.", '>%1', DocNo);
                    if lVatEntry.FindFirst() then;
                end;
        end;
    end;
}