codeunit 50006 "Modify Documents Tool"
{
    Permissions = TableData "Sales Shipment Header" = rimd,
                    TableData "Sales Invoice Header" = rimd,
                    TableData "Return Receipt Header" = rimd,
                    TableData "Sales Cr.Memo Header" = rimd,
                    TableData "Service Shipment Header" = rimd,
                    TableData "Service Invoice Header" = rimd,
                    TableData "Service Cr.Memo Header" = rimd,
                    TableData "Issued Reminder Header" = rimd,
                    TableData "Issued Fin. Charge Memo Header" = rimd,
                    TableData "Purch. Rcpt. Header" = rimd,
                    TableData "Purch. Inv. Header" = rimd,
                    TableData "Return Shipment Header" = rimd,
                    TableData "Purch. Cr. Memo Hdr." = rimd,
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
    begin
        gDocEntry.SetRange(gDocEntry."Document No.", gDocNo);
        gDocEntry.SetRange(gDocEntry."Posting Date", gPostingDate);
        DocNoFilter := gDocEntry.GetFilter(gDocEntry."Document No.");
        PostingDateFilter := gDocEntry.GetFilter(gDocEntry."Posting Date");
        FindRecords;
        LogEMTUpdate.InsertUpdate1(17, gDocNo, 4, '', gEntry.FieldCaption("Account Id"), Format(gPostingDate), Format(gNewPostingDate));
    end;

    var
        gGLSetup: Record "General Ledger Setup";
        gDocEntry: Record "Document Entry" temporary;
        [SecurityFiltering(SecurityFilter::Filtered)]
        Cust: Record Customer;
        [SecurityFiltering(SecurityFilter::Filtered)]
        Vend: Record Vendor;
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesShptHeader: Record "Sales Shipment Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesInvHeader: Record "Sales Invoice Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ReturnRcptHeader: Record "Return Receipt Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ServShptHeader: Record "Service Shipment Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ServInvHeader: Record "Service Invoice Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ServCrMemoHeader: Record "Service Cr.Memo Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        IssuedReminderHeader: Record "Issued Reminder Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        IssuedFinChrgMemoHeader: Record "Issued Fin. Charge Memo Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PurchRcptHeader: Record "Purch. Rcpt. Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PurchInvHeader: Record "Purch. Inv. Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ReturnShptHeader: Record "Return Shipment Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PurchCrMemoHeader: Record "Purch. Cr. Memo Hdr.";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ProductionOrderHeader: Record "Production Order";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PostedAssemblyHeader: Record "Posted Assembly Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        TransShptHeader: Record "Transfer Shipment Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        TransRcptHeader: Record "Transfer Receipt Header";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PostedWhseRcptLine: Record "Posted Whse. Receipt Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PostedWhseShptLine: Record "Posted Whse. Shipment Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PstdPhysInvtOrderHdr: Record "Pstd. Phys. Invt. Order Hdr";
        [SecurityFiltering(SecurityFilter::Filtered)]
        GLEntry: Record "G/L Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        VATEntry: Record "VAT Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        CustLedgEntry: Record "Cust. Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        VendLedgEntry: Record "Vendor Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        DtldVendLedgEntry: Record "Detailed Vendor Ledg. Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        EmplLedgEntry: Record "Employee Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        DtldEmplLedgEntry: Record "Detailed Employee Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ItemLedgEntry: Record "Item Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PhysInvtLedgEntry: Record "Phys. Inventory Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ResLedgEntry: Record "Res. Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        JobLedgEntry: Record "Job Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        JobWIPEntry: Record "Job WIP Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        JobWIPGLEntry: Record "Job WIP G/L Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ValueEntry: Record "Value Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        BankAccLedgEntry: Record "Bank Account Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        CheckLedgEntry: Record "Check Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ReminderEntry: Record "Reminder/Fin. Charge Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        FALedgEntry: Record "FA Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        MaintenanceLedgEntry: Record "Maintenance Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        InsuranceCovLedgEntry: Record "Ins. Coverage Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        CapacityLedgEntry: Record "Capacity Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ServLedgerEntry: Record "Service Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        WarrantyLedgerEntry: Record "Warranty Ledger Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        WhseEntry: Record "Warehouse Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        CostEntry: Record "Cost Entry";
        [SecurityFiltering(SecurityFilter::Filtered)]
        IncomingDocument: Record "Incoming Document";
        PostedSalesInvoiceTxt: Label 'Posted Sales Invoice';
        PostedSalesCreditMemoTxt: Label 'Posted Sales Credit Memo';
        PostedSalesShipmentTxt: Label 'Posted Sales Shipment';
        IssuedReminderTxt: Label 'Issued Reminder';
        IssuedFinanceChargeMemoTxt: Label 'Issued Finance Charge Memo';
        PostedPurchaseInvoiceTxt: Label 'Posted Purchase Invoice';
        PostedPurchaseCreditMemoTxt: Label 'Posted Purchase Credit Memo';
        PostedPurchaseReceiptTxt: Label 'Posted Purchase Receipt';
        PostedReturnReceiptTxt: Label 'Posted Return Receipt';
        PostedReturnShipmentTxt: Label 'Posted Return Shipment';
        PostedTransferShipmentTxt: Label 'Posted Transfer Shipment';
        PostedTransferReceiptTxt: Label 'Posted Transfer Receipt';
        SalesQuoteTxt: Label 'Sales Quote';
        SalesOrderTxt: Label 'Sales Order';
        SalesInvoiceTxt: Label 'Sales Invoice';
        SalesReturnOrderTxt: Label 'Sales Return Order';
        SalesCreditMemoTxt: Label 'Sales Credit Memo';
        PostedAssemblyOrderTxt: Label 'Posted Assembly Order';
        PostedServiceInvoiceTxt: Label 'Posted Service Invoice';
        PostedServiceCreditMemoTxt: Label 'Posted Service Credit Memo';
        PostedServiceShipmentTxt: Label 'Posted Service Shipment';
        ServiceOrderTxt: Label 'Service Order';
        ServiceInvoiceTxt: Label 'Service Invoice';
        ServiceCreditMemoTxt: Label 'Service Credit Memo';
        ProductionOrderTxt: Label 'Production Order';
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesShptLine: Record "Sales Shipment Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesInvLine: Record "Sales Invoice Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ReturnRcptLine: Record "Return Receipt Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        SalesCrMemoLine: Record "Sales Cr.Memo Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ServShptLine: Record "Service Shipment Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ServInvLine: Record "Service Invoice Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ServCrMemoLine: Record "Service Cr.Memo Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PurchRcptLine: Record "Purch. Rcpt. Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PurchInvLine: Record "Purch. Inv. Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ReturnShptLine: Record "Return Shipment Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PurchCrMemoLine: Record "Purch. Cr. Memo Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        ProductionOrderLine: Record "Prod. Order Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PostedAssemblyLine: Record "Posted Assembly Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        TransShptLine: Record "Transfer Shipment Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        TransRcptLine: Record "Transfer Receipt Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        PstdPhysInvtOrderLine: Record "Pstd. Phys. Invt. Order Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        IssuedReminderLine: Record "Issued Reminder Line";
        [SecurityFiltering(SecurityFilter::Filtered)]
        IssuedFinChrgMemoLine: Record "Issued Fin. Charge Memo Line";
        Err000: Label 'This document has to be posted because it has already consumed a posting number from "No. Series"';
        Err002: Label '%1 cannot be changed because it is an entry created by a deleted document';
        Err000001: Label 'The period is closed!';
        Err000012: Label 'G/L Book Register has been already printed';
        Err000013: Label 'VAT Register already printed';
        Err000014: Label 'VAT in the period has already beed settled';
        Err000015: Label 'One or more customer ledger entries are applied.Unapply and try again';
        Err000016: Label 'One or more vendor ledger entries are applied.Unapply and try again';
        Err000018: Label 'One or more bank ledger entries are closed o reconciled';
        Text007: Label 'Document Date cannot be greater than Posting Date';
        text004: Label 'You cannot assign new numbers from the number series %1 on a date before %2.';

    var //ka qen protected var por shfaqte warning
        SQSalesHeader: Record "Sales Header";
        SOSalesHeader: Record "Sales Header";
        SISalesHeader: Record "Sales Header";
        SROSalesHeader: Record "Sales Header";
        SCMSalesHeader: Record "Sales Header";
        SOServHeader: Record "Service Header";
        SIServHeader: Record "Service Header";
        SCMServHeader: Record "Service Header";
        DocNoFilter: Text;
        PostingDateFilter: Text;
        gDocNo: Code[20];
        gPostingDate: Date;
        gNewPostingDate: Date;
        gOldAccountNo: Code[20];
        gNewAccountNo: Code[20];
        gNewAccountDescr: Text;
        LogEMTUpdate: Record "Log EMT Update";
        gEntry: Record 17;

    procedure SetDoc(PostingDate: Date; DocNo: Code[20])
    begin
        gDocNo := DocNo;
        gPostingDate := PostingDate;
    end;

    procedure SetNewPostingDate(pNewPostingDate: Date)
    begin
        gNewPostingDate := pNewPostingDate;
    end;

    procedure SetNewAccountNo(pOldAccountNo: Code[20]; pNewAccountNo: Code[20]; pNewAccountDescr: Text)
    begin
        gOldAccountNo := pOldAccountNo;
        gNewAccountNo := pNewAccountNo;
        gNewAccountDescr := pNewAccountDescr;
    end;

    local procedure FindRecords()
    var
        DocType2: Text[100];
        DocNo2: Code[20];
        SourceType2: Integer;
        SourceNo2: Code[20];
        PostingDate: Date;
        IsSourceUpdated: Boolean;
    begin
        gDocEntry.Reset;
        gDocEntry.DeleteAll();
        gDocEntry."Entry No." := 0;

        FindPostedDocuments;
        FindLedgerEntries;

        if gDocEntry.FindFirst then begin
            if (NoOfRecords(DATABASE::"Cust. Ledger Entry") + NoOfRecords(DATABASE::"Vendor Ledger Entry") <= 1) and
               (GetDocumentCount <= 1)
            then begin
                ModifyDoc();
            end;
        end;

    end;

    local procedure NoOfRecords(TableID: Integer): Integer
    begin
        gDocEntry.SetRange(gDocEntry."Table ID", TableID);
        if not gDocEntry.FindFirst then
            gDocEntry.Init;
        gDocEntry.SetRange(gDocEntry."Table ID");
        exit(gDocEntry."No. of Records");

    end;

    local procedure ModifyDoc()
    begin
        if gNewPostingDate <> 0D then begin
            CheckDocumentNo(GLEntry."Document Date", gNewPostingDate); //PRJ504-n 
            ModifyPostingDate(gNewPostingDate);
        end;
        if gNewAccountNo <> '' then
            ModifyAccountNo(gOldAccountNo, gNewAccountNo, gNewAccountDescr);
    end;

    local procedure ModifyPostingDate(pNewPostingDate: Date)
    begin
        if SalesShptHeader.findset then repeat SalesShptHeader."Posting Date" := pNewPostingDate; SalesShptHeader.Modify(); until SalesShptHeader.Next() = 0;
        if SalesInvHeader.findset then repeat SalesInvHeader."Posting Date" := pNewPostingDate; SalesInvHeader.Modify(); until SalesInvHeader.Next() = 0;
        if ReturnRcptHeader.findset then repeat ReturnRcptHeader."Posting Date" := pNewPostingDate; ReturnRcptHeader.Modify(); until ReturnRcptHeader.Next() = 0;
        if SalesCrMemoHeader.findset then repeat SalesCrMemoHeader."Posting Date" := pNewPostingDate; SalesCrMemoHeader.Modify(); until SalesCrMemoHeader.Next() = 0;
        if ServShptHeader.findset then repeat ServShptHeader."Posting Date" := pNewPostingDate; ServShptHeader.Modify(); until ServShptHeader.Next() = 0;
        if ServInvHeader.findset then repeat ServInvHeader."Posting Date" := pNewPostingDate; ServInvHeader.Modify(); until ServInvHeader.Next() = 0;
        if ServCrMemoHeader.findset then repeat ServCrMemoHeader."Posting Date" := pNewPostingDate; ServCrMemoHeader.Modify(); until ServCrMemoHeader.Next() = 0;
        if IssuedReminderHeader.findset then repeat IssuedReminderHeader."Posting Date" := pNewPostingDate; IssuedReminderHeader.Modify(); until IssuedReminderHeader.Next() = 0;
        if IssuedFinChrgMemoHeader.findset then repeat IssuedFinChrgMemoHeader."Posting Date" := pNewPostingDate; IssuedFinChrgMemoHeader.Modify(); until IssuedFinChrgMemoHeader.Next() = 0;
        if PurchRcptHeader.findset then repeat PurchRcptHeader."Posting Date" := pNewPostingDate; PurchRcptHeader.Modify(); until PurchRcptHeader.Next() = 0;
        if PurchInvHeader.findset then repeat PurchInvHeader."Posting Date" := pNewPostingDate; PurchInvHeader.Modify(); until PurchInvHeader.Next() = 0;
        if ReturnShptHeader.findset then repeat ReturnShptHeader."Posting Date" := pNewPostingDate; ReturnShptHeader.Modify(); until ReturnShptHeader.Next() = 0;
        if PurchCrMemoHeader.findset then repeat PurchCrMemoHeader."Posting Date" := pNewPostingDate; PurchCrMemoHeader.Modify(); until PurchCrMemoHeader.Next() = 0;
        if PostedAssemblyHeader.findset then repeat PostedAssemblyHeader."Posting Date" := pNewPostingDate; PostedAssemblyHeader.Modify(); until PostedAssemblyHeader.Next() = 0;
        if TransShptHeader.findset then repeat TransShptHeader."Posting Date" := pNewPostingDate; TransShptHeader.Modify(); until TransShptHeader.Next() = 0;
        if TransRcptHeader.findset then repeat TransRcptHeader."Posting Date" := pNewPostingDate; TransRcptHeader.Modify(); until TransRcptHeader.Next() = 0;
        if PostedWhseRcptLine.findset then repeat PostedWhseRcptLine."Posting Date" := pNewPostingDate; PostedWhseRcptLine.Modify(); until PostedWhseRcptLine.Next() = 0;
        if PostedWhseShptLine.findset then repeat PostedWhseShptLine."Posting Date" := pNewPostingDate; PostedWhseShptLine.Modify(); until PostedWhseShptLine.Next() = 0;
        if PstdPhysInvtOrderHdr.findset then repeat PstdPhysInvtOrderHdr."Posting Date" := pNewPostingDate; PstdPhysInvtOrderHdr.Modify(); until PstdPhysInvtOrderHdr.Next() = 0;

        if GLEntry.findset then repeat GLEntry."Posting Date" := pNewPostingDate; GLEntry.Modify(); until GLEntry.Next() = 0;
        if VATEntry.findset then repeat VATEntry."Posting Date" := pNewPostingDate; VATEntry.Modify(); until VATEntry.Next() = 0;
        if CustLedgEntry.findset then repeat CustLedgEntry."Posting Date" := pNewPostingDate; CustLedgEntry.Modify(); until CustLedgEntry.Next() = 0;
        if DtldCustLedgEntry.findset then repeat DtldCustLedgEntry."Posting Date" := pNewPostingDate; DtldCustLedgEntry.Modify(); until DtldCustLedgEntry.Next() = 0;
        if VendLedgEntry.findset then repeat VendLedgEntry."Posting Date" := pNewPostingDate; VendLedgEntry.Modify(); until VendLedgEntry.Next() = 0;
        if DtldVendLedgEntry.findset then repeat DtldVendLedgEntry."Posting Date" := pNewPostingDate; DtldVendLedgEntry.Modify(); until DtldVendLedgEntry.Next() = 0;
        if EmplLedgEntry.findset then repeat EmplLedgEntry."Posting Date" := pNewPostingDate; EmplLedgEntry.Modify(); until EmplLedgEntry.Next() = 0;
        if DtldEmplLedgEntry.findset then repeat DtldEmplLedgEntry."Posting Date" := pNewPostingDate; DtldEmplLedgEntry.Modify(); until DtldEmplLedgEntry.Next() = 0;
        if ItemLedgEntry.findset then repeat ItemLedgEntry."Posting Date" := pNewPostingDate; ItemLedgEntry.Modify(); until ItemLedgEntry.Next() = 0;
        if PhysInvtLedgEntry.findset then repeat PhysInvtLedgEntry."Posting Date" := pNewPostingDate; PhysInvtLedgEntry.Modify(); until PhysInvtLedgEntry.Next() = 0;
        if ResLedgEntry.findset then repeat ResLedgEntry."Posting Date" := pNewPostingDate; ResLedgEntry.Modify(); until ResLedgEntry.Next() = 0;
        if JobLedgEntry.findset then repeat JobLedgEntry."Posting Date" := pNewPostingDate; JobLedgEntry.Modify(); until JobLedgEntry.Next() = 0;
        if JobWIPGLEntry.findset then repeat JobWIPGLEntry."Posting Date" := pNewPostingDate; JobWIPGLEntry.Modify(); until JobWIPGLEntry.Next() = 0;
        if ValueEntry.findset then repeat ValueEntry."Posting Date" := pNewPostingDate; ValueEntry.Modify(); until ValueEntry.Next() = 0;
        if BankAccLedgEntry.findset then repeat BankAccLedgEntry."Posting Date" := pNewPostingDate; BankAccLedgEntry.Modify(); until BankAccLedgEntry.Next() = 0;
        if CheckLedgEntry.findset then repeat CheckLedgEntry."Posting Date" := pNewPostingDate; CheckLedgEntry.Modify(); until CheckLedgEntry.Next() = 0;
        if ReminderEntry.findset then repeat ReminderEntry."Posting Date" := pNewPostingDate; ReminderEntry.Modify(); until ReminderEntry.Next() = 0;
        if FALedgEntry.findset then repeat FALedgEntry."Posting Date" := pNewPostingDate; FALedgEntry.Modify(); until FALedgEntry.Next() = 0;
        if MaintenanceLedgEntry.findset then repeat MaintenanceLedgEntry."Posting Date" := pNewPostingDate; MaintenanceLedgEntry.Modify(); until MaintenanceLedgEntry.Next() = 0;
        if InsuranceCovLedgEntry.findset then repeat InsuranceCovLedgEntry."Posting Date" := pNewPostingDate; InsuranceCovLedgEntry.Modify(); until InsuranceCovLedgEntry.Next() = 0;
        if CapacityLedgEntry.findset then repeat CapacityLedgEntry."Posting Date" := pNewPostingDate; CapacityLedgEntry.Modify(); until CapacityLedgEntry.Next() = 0;
        if ServLedgerEntry.findset then repeat ServLedgerEntry."Posting Date" := pNewPostingDate; ServLedgerEntry.Modify(); until ServLedgerEntry.Next() = 0;
        if WarrantyLedgerEntry.findset then repeat WarrantyLedgerEntry."Posting Date" := pNewPostingDate; WarrantyLedgerEntry.Modify(); until WarrantyLedgerEntry.Next() = 0;
        if CostEntry.findset then repeat CostEntry."Posting Date" := pNewPostingDate; CostEntry.Modify(); until CostEntry.Next() = 0;

        if IncomingDocument.findset then repeat IncomingDocument."Posting Date" := pNewPostingDate; IncomingDocument.Modify(); until IncomingDocument.Next() = 0;
    end;

    local procedure ModifyAccountNo(pOldAccountNo: Code[20]; pNewAccountNo: Code[20]; pNewAccountDescr: Text)
    begin
        if SalesShptHeader.FindSet() then
            repeat
                SalesShptLine.Reset();
                SalesShptLine.SetRange("Document No.", SalesShptHeader."No.");
                if SalesShptLine.FindSet() then repeat if (pOldAccountNo = SalesShptLine."No.") and (SalesShptLine."Type" = SalesShptLine."Type"::"G/L Account") then begin SalesShptLine."No." := pNewAccountNo; SalesShptLine.Description := pNewAccountDescr; SalesShptLine.Modify(); end; until SalesShptLine.Next() = 0;
            until SalesShptHeader.Next() = 0;
        if SalesInvHeader.FindSet() then
            repeat
                SalesInvLine.Reset();
                SalesInvLine.SetRange("Document No.", SalesInvHeader."No.");
                if SalesInvLine.FindSet() then repeat if (pOldAccountNo = SalesInvLine."No.") and (SalesInvLine."Type" = SalesInvLine."Type"::"G/L Account") then begin SalesInvLine."No." := pNewAccountNo; SalesInvLine.Description := pNewAccountDescr; SalesInvLine.Modify(); end; until SalesInvLine.Next() = 0;
            until SalesInvHeader.Next() = 0;
        if ReturnRcptHeader.FindSet() then
            repeat
                ReturnRcptLine.Reset();
                ReturnRcptLine.SetRange("Document No.", ReturnRcptHeader."No.");
                if ReturnRcptLine.FindSet() then repeat if (pOldAccountNo = ReturnRcptLine."No.") and (ReturnRcptLine."Type" = ReturnRcptLine."Type"::"G/L Account") then begin ReturnRcptLine."No." := pNewAccountNo; ReturnRcptLine.Description := pNewAccountDescr; ReturnRcptLine.Modify(); end; until ReturnRcptLine.Next() = 0;
            until ReturnRcptHeader.Next() = 0;
        if SalesCrMemoHeader.FindSet() then
            repeat
                SalesCrMemoLine.Reset();
                SalesCrMemoLine.SetRange("Document No.", SalesCrMemoHeader."No.");
                if SalesCrMemoLine.FindSet() then repeat if (pOldAccountNo = SalesCrMemoLine."No.") and (SalesCrMemoLine."Type" = SalesCrMemoLine."Type"::"G/L Account") then begin SalesCrMemoLine."No." := pNewAccountNo; SalesCrMemoLine.Description := pNewAccountDescr; SalesCrMemoLine.Modify(); end; until SalesCrMemoLine.Next() = 0;
            until SalesCrMemoHeader.Next() = 0;
        if ServShptHeader.FindSet() then
            repeat
                ServShptLine.Reset();
                ServShptLine.SetRange("Document No.", ServShptHeader."No.");
                if ServShptLine.FindSet() then repeat if (pOldAccountNo = ServShptLine."No.") and (ServShptLine."Type" = ServShptLine."Type"::"G/L Account") then begin ServShptLine."No." := pNewAccountNo; ServShptLine.Description := pNewAccountDescr; ServShptLine.Modify(); end; until ServShptLine.Next() = 0;
            until ServShptHeader.Next() = 0;
        if ServInvHeader.FindSet() then
            repeat
                ServInvLine.Reset();
                ServInvLine.SetRange("Document No.", ServInvHeader."No.");
                if ServInvLine.FindSet() then repeat if (pOldAccountNo = ServInvLine."No.") and (ServInvLine."Type" = ServInvLine."Type"::"G/L Account") then begin ServInvLine."No." := pNewAccountNo; ServInvLine.Description := pNewAccountDescr; ServInvLine.Modify(); end; until ServInvLine.Next() = 0;
            until ServInvHeader.Next() = 0;
        if ServCrMemoHeader.FindSet() then
            repeat
                ServCrMemoLine.Reset();
                ServCrMemoLine.SetRange("Document No.", ServCrMemoHeader."No.");
                if ServCrMemoLine.FindSet() then repeat if (pOldAccountNo = ServCrMemoLine."No.") and (ServCrMemoLine."Type" = ServCrMemoLine."Type"::"G/L Account") then begin ServCrMemoLine."No." := pNewAccountNo; ServCrMemoLine.Description := pNewAccountDescr; ServCrMemoLine.Modify(); end; until ServCrMemoLine.Next() = 0;
            until ServCrMemoHeader.Next() = 0;

        if IssuedReminderHeader.FindSet() then
            repeat
                IssuedReminderLine.Reset();
                IssuedReminderLine.SetRange("Document No.", ServCrMemoHeader."No.");
                if IssuedReminderLine.FindSet() then repeat if (pOldAccountNo = IssuedReminderLine."No.") and (IssuedReminderLine."Type" = IssuedReminderLine."Type"::"G/L Account") then begin IssuedReminderLine."No." := pNewAccountNo; IssuedReminderLine.Description := pNewAccountDescr; IssuedReminderLine.Modify(); end; until IssuedReminderLine.Next() = 0;
            until IssuedReminderHeader.Next() = 0;
        if IssuedFinChrgMemoHeader.FindSet() then
            repeat
                IssuedFinChrgMemoLine.Reset();
                IssuedFinChrgMemoLine.SetRange("Document No.", ServCrMemoHeader."No.");
                if IssuedFinChrgMemoLine.FindSet() then repeat if (pOldAccountNo = IssuedFinChrgMemoLine."No.") and (IssuedFinChrgMemoLine."Type" = IssuedFinChrgMemoLine."Type"::"G/L Account") then begin IssuedFinChrgMemoLine."No." := pNewAccountNo; IssuedFinChrgMemoLine.Description := pNewAccountDescr; IssuedFinChrgMemoLine.Modify(); end; until IssuedFinChrgMemoLine.Next() = 0;
            until IssuedFinChrgMemoHeader.Next() = 0;

        if PurchRcptHeader.FindSet() then
            repeat
                PurchRcptLine.Reset();
                PurchRcptLine.SetRange("Document No.", PurchRcptHeader."No.");
                if PurchRcptLine.FindSet() then repeat if (pOldAccountNo = PurchRcptLine."No.") and (PurchRcptLine."Type" = PurchRcptLine."Type"::"G/L Account") then begin PurchRcptLine."No." := pNewAccountNo; PurchRcptLine.Description := pNewAccountDescr; PurchRcptLine.Modify(); end; until PurchRcptLine.Next() = 0;
            until PurchRcptHeader.Next() = 0;
        if PurchInvHeader.FindSet() then
            repeat
                PurchInvLine.Reset();
                PurchInvLine.SetRange("Document No.", PurchInvHeader."No.");
                if PurchInvLine.FindSet() then repeat if (pOldAccountNo = PurchInvLine."No.") and (PurchInvLine."Type" = PurchInvLine."Type"::"G/L Account") then begin PurchInvLine."No." := pNewAccountNo; PurchInvLine.Description := pNewAccountDescr; PurchInvLine.Modify(); end; until PurchInvLine.Next() = 0;
            until PurchInvHeader.Next() = 0;
        if ReturnShptHeader.FindSet() then
            repeat
                ReturnShptLine.Reset();
                ReturnShptLine.SetRange("Document No.", ReturnShptHeader."No.");
                if ReturnShptLine.FindSet() then repeat if (pOldAccountNo = ReturnShptLine."No.") and (ReturnShptLine."Type" = ReturnShptLine."Type"::"G/L Account") then begin ReturnShptLine."No." := pNewAccountNo; ReturnShptLine.Description := pNewAccountDescr; ReturnShptLine.Modify(); end; until ReturnShptLine.Next() = 0;
            until ReturnShptHeader.Next() = 0;
        if PurchCrMemoHeader.FindSet() then
            repeat
                PurchCrMemoLine.Reset();
                PurchCrMemoLine.SetRange("Document No.", PurchCrMemoHeader."No.");
                if PurchCrMemoLine.FindSet() then repeat if (pOldAccountNo = PurchCrMemoLine."No.") and (PurchCrMemoLine."Type" = PurchCrMemoLine."Type"::"G/L Account") then begin PurchCrMemoLine."No." := pNewAccountNo; PurchCrMemoLine.Description := pNewAccountDescr; PurchCrMemoLine.Modify(); end; until PurchCrMemoLine.Next() = 0;
            until PurchCrMemoHeader.Next() = 0;
        if GLEntry.findset then
            repeat
                GLEntry."G/L Account No." := pNewAccountNo;
                GLEntry.Description := pNewAccountDescr;
                GLEntry.Modify();
            until GLEntry.Next() = 0;
        if JobWIPGLEntry.findset then
            repeat
                JobWIPGLEntry."G/L Account No." := pNewAccountNo;
                JobWIPGLEntry.Description := pNewAccountDescr;
                JobWIPGLEntry.Modify();
            until JobWIPGLEntry.Next() = 0;
    end;

    local procedure GetDocumentCount() DocCount: Integer
    begin
        DocCount :=
          NoOfRecords(DATABASE::"Sales Invoice Header") + NoOfRecords(DATABASE::"Sales Cr.Memo Header") +
          NoOfRecords(DATABASE::"Sales Shipment Header") + NoOfRecords(DATABASE::"Issued Reminder Header") +
          NoOfRecords(DATABASE::"Issued Fin. Charge Memo Header") + NoOfRecords(DATABASE::"Purch. Inv. Header") +
          NoOfRecords(DATABASE::"Return Shipment Header") + NoOfRecords(DATABASE::"Return Receipt Header") +
          NoOfRecords(DATABASE::"Purch. Cr. Memo Hdr.") + NoOfRecords(DATABASE::"Purch. Rcpt. Header") +
          NoOfRecords(DATABASE::"Service Invoice Header") + NoOfRecords(DATABASE::"Service Cr.Memo Header") +
          NoOfRecords(DATABASE::"Service Shipment Header") +
          NoOfRecords(DATABASE::"Transfer Shipment Header") + NoOfRecords(DATABASE::"Transfer Receipt Header");
    end;

    local procedure FindLedgerEntries()
    begin
        FindGLEntries();
        FindVATEntries();
        FindCustEntries();
        FindReminderEntries();
        FindVendEntries();
        FindInvtEntries();
        FindResEntries();
        FindJobEntries();
        FindBankEntries();
        FindFAEntries();
        FindCapEntries();
        FindWhseEntries();
        FindServEntries();
        FindCostEntries();
    end;

    local procedure FindCustEntries()
    begin
        if CustLedgEntry.ReadPermission then begin
            CustLedgEntry.Reset();
            CustLedgEntry.SetCurrentKey("Document No.");
            CustLedgEntry.SetFilter("Document No.", DocNoFilter);
            CustLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Cust. Ledger Entry", 0, CustLedgEntry.TableCaption, CustLedgEntry.Count);
        end;
        if DtldCustLedgEntry.ReadPermission then begin
            DtldCustLedgEntry.Reset();
            DtldCustLedgEntry.SetCurrentKey("Document No.");
            DtldCustLedgEntry.SetFilter("Document No.", DocNoFilter);
            DtldCustLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Detailed Cust. Ledg. Entry", 0, DtldCustLedgEntry.TableCaption, DtldCustLedgEntry.Count);
        end;
    end;

    local procedure FindVendEntries()
    begin
        if VendLedgEntry.ReadPermission then begin
            VendLedgEntry.Reset();
            VendLedgEntry.SetCurrentKey("Document No.");
            VendLedgEntry.SetFilter("Document No.", DocNoFilter);
            VendLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Vendor Ledger Entry", 0, VendLedgEntry.TableCaption, VendLedgEntry.Count);
        end;
        if DtldVendLedgEntry.ReadPermission then begin
            DtldVendLedgEntry.Reset();
            DtldVendLedgEntry.SetCurrentKey("Document No.");
            DtldVendLedgEntry.SetFilter("Document No.", DocNoFilter);
            DtldVendLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Detailed Vendor Ledg. Entry", 0, DtldVendLedgEntry.TableCaption, DtldVendLedgEntry.Count);
        end;
    end;

    local procedure FindBankEntries()
    begin
        if BankAccLedgEntry.ReadPermission then begin
            BankAccLedgEntry.Reset();
            BankAccLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            BankAccLedgEntry.SetFilter("Document No.", DocNoFilter);
            BankAccLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Bank Account Ledger Entry", 0, BankAccLedgEntry.TableCaption, BankAccLedgEntry.Count);
        end;
        if CheckLedgEntry.ReadPermission then begin
            CheckLedgEntry.Reset();
            CheckLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            CheckLedgEntry.SetFilter("Document No.", DocNoFilter);
            CheckLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Check Ledger Entry", 0, CheckLedgEntry.TableCaption, CheckLedgEntry.Count);
        end;
    end;

    local procedure FindGLEntries()
    begin
        if GLEntry.ReadPermission then begin
            CanChangePostingDate(GLEntry);
            GLEntry.Reset();
            GLEntry.SetCurrentKey("Document No.", "Posting Date");
            GLEntry.SetFilter("Document No.", DocNoFilter);
            GLEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"G/L Entry", 0, GLEntry.TableCaption, GLEntry.Count);
        end;
    end;

    local procedure FindVATEntries()
    begin
        if VATEntry.ReadPermission then begin
            VATEntry.Reset();
            VATEntry.SetCurrentKey("Document No.", "Posting Date");
            VATEntry.SetFilter("Document No.", DocNoFilter);
            VATEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"VAT Entry", 0, VATEntry.TableCaption, VATEntry.Count);
        end;
    end;

    local procedure FindFAEntries()
    begin
        if FALedgEntry.ReadPermission then begin
            FALedgEntry.Reset();
            FALedgEntry.SetCurrentKey("Document No.", "Posting Date");
            FALedgEntry.SetFilter("Document No.", DocNoFilter);
            FALedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"FA Ledger Entry", 0, FALedgEntry.TableCaption, FALedgEntry.Count);
        end;
        if MaintenanceLedgEntry.ReadPermission then begin
            MaintenanceLedgEntry.Reset();
            MaintenanceLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            MaintenanceLedgEntry.SetFilter("Document No.", DocNoFilter);
            MaintenanceLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Maintenance Ledger Entry", 0, MaintenanceLedgEntry.TableCaption, MaintenanceLedgEntry.Count);
        end;
        if InsuranceCovLedgEntry.ReadPermission then begin
            InsuranceCovLedgEntry.Reset();
            InsuranceCovLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            InsuranceCovLedgEntry.SetFilter("Document No.", DocNoFilter);
            InsuranceCovLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(
              gDocEntry, DATABASE::"Ins. Coverage Ledger Entry", 0, InsuranceCovLedgEntry.TableCaption, InsuranceCovLedgEntry.Count);
        end;
    end;

    local procedure FindInvtEntries()
    begin
        if ItemLedgEntry.ReadPermission then begin
            ItemLedgEntry.Reset();
            ItemLedgEntry.SetCurrentKey("Document No.");
            ItemLedgEntry.SetFilter("Document No.", DocNoFilter);
            ItemLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Item Ledger Entry", 0, ItemLedgEntry.TableCaption, ItemLedgEntry.Count);
        end;
        if ValueEntry.ReadPermission then begin
            ValueEntry.Reset();
            ValueEntry.SetCurrentKey("Document No.");
            ValueEntry.SetFilter("Document No.", DocNoFilter);
            ValueEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Value Entry", 0, ValueEntry.TableCaption, ValueEntry.Count);
        end;
        if PhysInvtLedgEntry.ReadPermission then begin
            PhysInvtLedgEntry.Reset();
            PhysInvtLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            PhysInvtLedgEntry.SetFilter("Document No.", DocNoFilter);
            PhysInvtLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Phys. Inventory Ledger Entry", 0, PhysInvtLedgEntry.TableCaption, PhysInvtLedgEntry.Count);
        end;
    end;

    local procedure FindReminderEntries()
    begin
        if ReminderEntry.ReadPermission then begin
            ReminderEntry.Reset();
            ReminderEntry.SetCurrentKey(Type, "No.");
            ReminderEntry.SetFilter("No.", DocNoFilter);
            ReminderEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Reminder/Fin. Charge Entry", 0, ReminderEntry.TableCaption, ReminderEntry.Count);
        end;
    end;

    local procedure FindResEntries()
    begin
        if ResLedgEntry.ReadPermission then begin
            ResLedgEntry.Reset();
            ResLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            ResLedgEntry.SetFilter("Document No.", DocNoFilter);
            ResLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Res. Ledger Entry", 0, ResLedgEntry.TableCaption, ResLedgEntry.Count);
        end;
    end;

    local procedure FindServEntries()
    begin
        if ServLedgerEntry.ReadPermission then begin
            ServLedgerEntry.Reset();
            ServLedgerEntry.SetCurrentKey("Document No.", "Posting Date");
            ServLedgerEntry.SetFilter("Document No.", DocNoFilter);
            ServLedgerEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Service Ledger Entry", 0, ServLedgerEntry.TableCaption, ServLedgerEntry.Count);
        end;
        if WarrantyLedgerEntry.ReadPermission then begin
            WarrantyLedgerEntry.Reset();
            WarrantyLedgerEntry.SetCurrentKey("Document No.", "Posting Date");
            WarrantyLedgerEntry.SetFilter("Document No.", DocNoFilter);
            WarrantyLedgerEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Warranty Ledger Entry", 0, WarrantyLedgerEntry.TableCaption, WarrantyLedgerEntry.Count);
        end;
    end;

    local procedure FindCapEntries()
    begin
        if CapacityLedgEntry.ReadPermission then begin
            CapacityLedgEntry.Reset();
            CapacityLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            CapacityLedgEntry.SetFilter("Document No.", DocNoFilter);
            CapacityLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Capacity Ledger Entry", 0, CapacityLedgEntry.TableCaption, CapacityLedgEntry.Count);
        end;
    end;

    local procedure FindCostEntries()
    begin
        if CostEntry.ReadPermission then begin
            CostEntry.Reset();
            CostEntry.SetCurrentKey("Document No.", "Posting Date");
            CostEntry.SetFilter("Document No.", DocNoFilter);
            CostEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Cost Entry", 0, CostEntry.TableCaption, CostEntry.Count);
        end;
    end;

    local procedure FindWhseEntries()
    begin
        if WhseEntry.ReadPermission then begin
            WhseEntry.Reset();
            WhseEntry.SetCurrentKey("Reference No.", "Registering Date");
            WhseEntry.SetFilter("Reference No.", DocNoFilter);
            WhseEntry.SetFilter("Registering Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Warehouse Entry", 0, WhseEntry.TableCaption, WhseEntry.Count);
        end;
    end;

    local procedure FindJobEntries()
    begin
        if JobLedgEntry.ReadPermission then begin
            JobLedgEntry.Reset();
            JobLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            JobLedgEntry.SetFilter("Document No.", DocNoFilter);
            JobLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Job Ledger Entry", 0, JobLedgEntry.TableCaption, JobLedgEntry.Count);
        end;
        if JobWIPEntry.ReadPermission then begin
            JobWIPEntry.Reset();
            JobWIPEntry.SetFilter("Document No.", DocNoFilter);
            JobWIPEntry.SetFilter("WIP Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Job WIP Entry", 0, JobWIPEntry.TableCaption, JobWIPEntry.Count);
        end;
        if JobWIPGLEntry.ReadPermission then begin
            JobWIPGLEntry.Reset();
            JobWIPGLEntry.SetCurrentKey("Document No.", "Posting Date");
            JobWIPGLEntry.SetFilter("Document No.", DocNoFilter);
            JobWIPGLEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Job WIP G/L Entry", 0, JobWIPGLEntry.TableCaption, JobWIPGLEntry.Count);
        end;
    end;

    local procedure FindPostedDocuments()
    begin
        FindIncomingDocumentRecords();
        FindEmployeeRecords();
        FindSalesShipmentHeader();
        FindSalesInvoiceHeader();
        FindReturnRcptHeader();
        FindSalesCrMemoHeader();
        FindServShipmentHeader();
        FindServInvoiceHeader();
        FindServCrMemoHeader();
        FindIssuedReminderHeader();
        FindIssuedFinChrgMemoHeader();
        FindPurchRcptHeader();
        FindPurchInvoiceHeader();
        FindReturnShptHeader();
        FindPurchCrMemoHeader();
        FindProdOrderHeader();
        FindPostedAssemblyHeader();
        FindTransShptHeader();
        FindTransRcptHeader();
        FindPstdPhysInvtOrderHdr();
        FindPostedWhseShptLine();
        FindPostedWhseRcptLine();
    end;

    local procedure FindIncomingDocumentRecords()
    begin
        if IncomingDocument.ReadPermission then begin
            IncomingDocument.Reset();
            IncomingDocument.SetFilter("Document No.", DocNoFilter);
            IncomingDocument.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Incoming Document", 0, IncomingDocument.TableCaption, IncomingDocument.Count);
        end;
    end;

    local procedure FindSalesShipmentHeader()
    begin
        if SalesShptHeader.ReadPermission then begin
            SalesShptHeader.Reset();
            SalesShptHeader.SetFilter("No.", DocNoFilter);
            SalesShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Sales Shipment Header", 0, PostedSalesShipmentTxt, SalesShptHeader.Count);
        end;
    end;

    local procedure FindSalesInvoiceHeader()
    begin
        if SalesInvHeader.ReadPermission then begin
            SalesInvHeader.Reset();
            SalesInvHeader.SetFilter("No.", DocNoFilter);
            SalesInvHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Sales Invoice Header", 0, PostedSalesInvoiceTxt, SalesInvHeader.Count);
        end;
    end;

    local procedure FindSalesCrMemoHeader()
    begin
        if SalesCrMemoHeader.ReadPermission then begin
            SalesCrMemoHeader.Reset();
            SalesCrMemoHeader.SetFilter("No.", DocNoFilter);
            SalesCrMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Sales Cr.Memo Header", 0, PostedSalesCreditMemoTxt, SalesCrMemoHeader.Count);
        end;
    end;

    local procedure FindReturnRcptHeader()
    begin
        if ReturnRcptHeader.ReadPermission then begin
            ReturnRcptHeader.Reset();
            ReturnRcptHeader.SetFilter("No.", DocNoFilter);
            ReturnRcptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Return Receipt Header", 0, PostedReturnReceiptTxt, ReturnRcptHeader.Count);
        end;
    end;

    local procedure FindServShipmentHeader()
    begin
        if ServShptHeader.ReadPermission then begin
            ServShptHeader.Reset();
            ServShptHeader.SetFilter("No.", DocNoFilter);
            ServShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Service Shipment Header", 0, PostedServiceShipmentTxt, ServShptHeader.Count);
        end;
    end;

    local procedure FindServInvoiceHeader()
    begin
        if ServInvHeader.ReadPermission then begin
            ServInvHeader.Reset();
            ServInvHeader.SetFilter("No.", DocNoFilter);
            ServInvHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Service Invoice Header", 0, PostedServiceInvoiceTxt, ServInvHeader.Count);
        end;
    end;

    local procedure FindServCrMemoHeader()
    begin
        if ServCrMemoHeader.ReadPermission then begin
            ServCrMemoHeader.Reset();
            ServCrMemoHeader.SetFilter("No.", DocNoFilter);
            ServCrMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Service Cr.Memo Header", 0, PostedServiceCreditMemoTxt, ServCrMemoHeader.Count);
        end;
    end;

    local procedure FindEmployeeRecords()
    begin
        if EmplLedgEntry.ReadPermission then begin
            EmplLedgEntry.Reset();
            EmplLedgEntry.SetCurrentKey("Document No.");
            EmplLedgEntry.SetFilter("Document No.", DocNoFilter);
            EmplLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Employee Ledger Entry", 0, EmplLedgEntry.TableCaption, EmplLedgEntry.Count);
        end;
        if DtldEmplLedgEntry.ReadPermission then begin
            DtldEmplLedgEntry.Reset();
            DtldEmplLedgEntry.SetCurrentKey("Document No.");
            DtldEmplLedgEntry.SetFilter("Document No.", DocNoFilter);
            DtldEmplLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Detailed Employee Ledger Entry", 0, DtldEmplLedgEntry.TableCaption, DtldEmplLedgEntry.Count);
        end;
    end;

    local procedure FindIssuedReminderHeader()
    begin
        if IssuedReminderHeader.ReadPermission then begin
            IssuedReminderHeader.Reset();
            IssuedReminderHeader.SetFilter("No.", DocNoFilter);
            IssuedReminderHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Issued Reminder Header", 0, IssuedReminderTxt, IssuedReminderHeader.Count);
        end;
    end;

    local procedure FindIssuedFinChrgMemoHeader()
    begin
        if IssuedFinChrgMemoHeader.ReadPermission then begin
            IssuedFinChrgMemoHeader.Reset();
            IssuedFinChrgMemoHeader.SetFilter("No.", DocNoFilter);
            IssuedFinChrgMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(
                gDocEntry, DATABASE::"Issued Fin. Charge Memo Header", 0, IssuedFinanceChargeMemoTxt, IssuedFinChrgMemoHeader.Count);
        end;
    end;

    local procedure FindPurchRcptHeader()
    begin
        if PurchRcptHeader.ReadPermission then begin
            PurchRcptHeader.Reset();
            PurchRcptHeader.SetFilter("No.", DocNoFilter);
            PurchRcptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Purch. Rcpt. Header", 0, PostedPurchaseReceiptTxt, PurchRcptHeader.Count);
        end;
    end;

    local procedure FindPurchInvoiceHeader()
    begin
        if PurchInvHeader.ReadPermission then begin
            PurchInvHeader.Reset();
            PurchInvHeader.SetFilter("No.", DocNoFilter);
            PurchInvHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Purch. Inv. Header", 0, PostedPurchaseInvoiceTxt, PurchInvHeader.Count);
        end;
    end;

    local procedure FindPurchCrMemoHeader()
    begin
        if PurchCrMemoHeader.ReadPermission then begin
            PurchCrMemoHeader.Reset();
            PurchCrMemoHeader.SetFilter("No.", DocNoFilter);
            PurchCrMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Purch. Cr. Memo Hdr.", 0, PostedPurchaseCreditMemoTxt, PurchCrMemoHeader.Count);
        end;
    end;

    local procedure FindReturnShptHeader()
    begin
        if ReturnShptHeader.ReadPermission then begin
            ReturnShptHeader.Reset();
            ReturnShptHeader.SetFilter("No.", DocNoFilter);
            ReturnShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Return Shipment Header", 0, PostedReturnShipmentTxt, ReturnShptHeader.Count);
        end;
    end;

    local procedure FindProdOrderHeader()
    begin
        if ProductionOrderHeader.ReadPermission then begin
            ProductionOrderHeader.Reset();
            ProductionOrderHeader.SetRange(
              Status,
              ProductionOrderHeader.Status::Released,
              ProductionOrderHeader.Status::Finished);
            ProductionOrderHeader.SetFilter("No.", DocNoFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Production Order", 0, ProductionOrderTxt, ProductionOrderHeader.Count);
        end;
    end;

    local procedure FindPostedAssemblyHeader()
    begin
        if PostedAssemblyHeader.ReadPermission then begin
            PostedAssemblyHeader.Reset();
            PostedAssemblyHeader.SetFilter("No.", DocNoFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Posted Assembly Header", 0, PostedAssemblyOrderTxt, PostedAssemblyHeader.Count);
        end;
    end;

    local procedure FindPostedWhseShptLine()
    begin
        if PostedWhseShptLine.ReadPermission then begin
            PostedWhseShptLine.Reset();
            PostedWhseShptLine.SetCurrentKey("Posted Source No.", "Posting Date");
            PostedWhseShptLine.SetFilter("Posted Source No.", DocNoFilter);
            PostedWhseShptLine.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Posted Whse. Shipment Line", 0,
              PostedWhseShptLine.TableCaption, PostedWhseShptLine.Count);
        end;
    end;

    local procedure FindPostedWhseRcptLine()
    begin
        if PostedWhseRcptLine.ReadPermission then begin
            PostedWhseRcptLine.Reset();
            PostedWhseRcptLine.SetCurrentKey("Posted Source No.", "Posting Date");
            PostedWhseRcptLine.SetFilter("Posted Source No.", DocNoFilter);
            PostedWhseRcptLine.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Posted Whse. Receipt Line", 0,
              PostedWhseRcptLine.TableCaption, PostedWhseRcptLine.Count);
        end;
    end;

    local procedure FindPstdPhysInvtOrderHdr()
    begin
        if PstdPhysInvtOrderHdr.ReadPermission then begin
            PstdPhysInvtOrderHdr.Reset();
            PstdPhysInvtOrderHdr.SetFilter("No.", DocNoFilter);
            PstdPhysInvtOrderHdr.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry,
              DATABASE::"Pstd. Phys. Invt. Order Hdr", 0, PstdPhysInvtOrderHdr.TableCaption, PstdPhysInvtOrderHdr.Count);
        end;
    end;

    local procedure FindTransShptHeader()
    begin
        if TransShptHeader.ReadPermission then begin
            TransShptHeader.Reset();
            TransShptHeader.SetFilter("No.", DocNoFilter);
            TransShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Transfer Shipment Header", 0, PostedTransferShipmentTxt, TransShptHeader.Count);
        end;
    end;

    local procedure FindTransRcptHeader()
    begin
        if TransRcptHeader.ReadPermission then begin
            TransRcptHeader.Reset();
            TransRcptHeader.SetFilter("No.", DocNoFilter);
            TransRcptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(gDocEntry, DATABASE::"Transfer Receipt Header", 0, PostedTransferReceiptTxt, TransRcptHeader.Count);
        end;
    end;

    procedure InsertIntoDocEntry(var TempDocumentEntry: Record "Document Entry" temporary; DocTableID: Integer; DocType: Option; DocTableName: Text; DocNoOfRecords: Integer)
    begin
        if DocNoOfRecords = 0 then
            exit;

        TempDocumentEntry.Init;
        TempDocumentEntry."Entry No." := TempDocumentEntry."Entry No." + 1;
        TempDocumentEntry."Table ID" := DocTableID;
        TempDocumentEntry."Document Type" := DocType;
        TempDocumentEntry."Table Name" := CopyStr(DocTableName, 1, MaxStrLen(TempDocumentEntry."Table Name"));
        TempDocumentEntry."No. of Records" := DocNoOfRecords;
        TempDocumentEntry.Insert;
    end;

    procedure CheckPeriodoContabileChiuso(DataRegistrazione: Date)
    var
        lAccountingPeriod: Record "Accounting Period";
    begin
        lAccountingPeriod.SetFilter("Starting Date", '..%1', DataRegistrazione);
        if lAccountingPeriod.FindLast then
            if (lAccountingPeriod.Closed = true) then
                Error(Err000001);
    end;

    procedure CheckCustLedgerEntryApplied(DocumentoNo: Code[20]; PostingDate: Date; TransactionNo: Integer)
    var
        lCustLedgEntry: Record "Cust. Ledger Entry";
    begin
        lCustLedgEntry.Reset;
        lCustLedgEntry.SetCurrentKey("Document No.");
        lCustLedgEntry.SetFilter("Document No.", DocumentoNo);
        lCustLedgEntry.SetRange("Posting Date", PostingDate);
        lCustLedgEntry.SetRange("Posting Date", PostingDate);
        lCustLedgEntry.SetRange("Transaction No.", TransactionNo);
        if lCustLedgEntry.FindSet then
            repeat
                lCustLedgEntry.CalcFields(Amount, "Remaining Amount");
                if (lCustLedgEntry."Remaining Amount" <> lCustLedgEntry.Amount) then
                    Error(Err000015);
                //OT-d IF (lCustLedgEntry.Open = FALSE) THEN
                if ((lCustLedgEntry.Open = false) and (lCustLedgEntry.Amount <> 0)) then //OT-n
                    Error(Err000015);
            until lCustLedgEntry.Next = 0;
    end;

    procedure CheckVenLedgerEntryApplied(DocumentoNo: Code[20]; PostingDate: Date; TransactionNo: Integer)
    var
        lVendorLedgerEntry: Record "Vendor Ledger Entry";
    begin
        lVendorLedgerEntry.Reset;
        lVendorLedgerEntry.SetCurrentKey("Document No.");
        lVendorLedgerEntry.SetFilter("Document No.", DocumentoNo);
        lVendorLedgerEntry.SetRange("Posting Date", PostingDate);
        lVendorLedgerEntry.SetRange("Posting Date", PostingDate);
        lVendorLedgerEntry.SetRange("Transaction No.", TransactionNo);
        if lVendorLedgerEntry.FindSet then
            repeat
                lVendorLedgerEntry.CalcFields(Amount, "Remaining Amount");
                if (lVendorLedgerEntry."Remaining Amount" <> lVendorLedgerEntry.Amount) then
                    Error(Err000016);
                //OT-d IF (lVendorLedgerEntry.Open = FALSE) THEN
                if ((lVendorLedgerEntry.Open = false) and (lVendorLedgerEntry.Amount <> 0)) then //OT-n
                    Error(Err000016);
            until lVendorLedgerEntry.Next = 0;
    end;

    procedure CheckMovBancaChiusoOriconcigliato(NrDocumento: Code[20]; DataRegistrazione: Date; NrTransazione: Integer)
    var
        lBankAccountLedgerEntry: Record "Bank Account Ledger Entry";
    begin
        lBankAccountLedgerEntry.Reset;
        lBankAccountLedgerEntry.SetCurrentKey("Document No.", "Posting Date");
        lBankAccountLedgerEntry.SetFilter("Document No.", NrDocumento);
        lBankAccountLedgerEntry.SetRange("Posting Date", DataRegistrazione);
        lBankAccountLedgerEntry.SetRange("Transaction No.", NrTransazione);
        lBankAccountLedgerEntry.SetRange(Open, false);
        if lBankAccountLedgerEntry.FindFirst then
            Error(Err000018);
        lBankAccountLedgerEntry.SetRange(Open);
        lBankAccountLedgerEntry.SetFilter("Statement No.", '<>%1', '');
        if lBankAccountLedgerEntry.FindFirst then
            Error(Err000018);
    end;
    //?
    procedure CheckRegistroIvaStampato(NrDocumento: Text[100]; DataReg: Date; NrTransazione: Integer)
    var
        lVATEntry: Record "VAT Entry";
        TmpNum: Record "No. Series" temporary;
    // lVATRegister: Record "VAT Register";
    begin
        lVATEntry.Reset;
        lVATEntry.SetCurrentKey("Document No.", "Posting Date");
        lVATEntry.SetFilter("Document No.", NrDocumento);
        lVATEntry.SetRange("Posting Date", DataReg);
        lVATEntry.SetRange("Transaction No.", NrTransazione);
        if lVATEntry.FindSet then
            repeat
                if not TmpNum.Get(lVATEntry."No. Series") then begin
                    TmpNum.Init;
                    TmpNum.Code := lVATEntry."No. Series";
                    TmpNum.Insert;
                end;
            until lVATEntry.Next = 0;
        // if TmpNum.FindSet then
        //     repeat
        //         if (TmpNum."VAT Register" <> '') then begin
        //             lVATRegister.Get(TmpNum."VAT Register");
        //             if lVATRegister."Last Printing Date" >= DataReg then
        //                 Error(Err000013);
        //         end;
        //     until TmpNum.Next = 0;

        lVATEntry.Reset;
        lVATEntry.SetCurrentKey("Document No.", "Posting Date");
        lVATEntry.SetFilter("Document No.", NrDocumento);
        lVATEntry.SetRange("Posting Date", DataReg);
        lVATEntry.SetRange("Transaction No.", NrTransazione);
        // lVATEntry.SetFilter("VAT Period", '<>%1', '');
        if lVATEntry.FindFirst then
            Error(Err000013);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnBeforeDeleteEvent', '', true, true)]
    local procedure "GenJournalLine_OnBeforeDeleteEvent"
    (
        var Rec: Record "Gen. Journal Line";
        RunTrigger: Boolean
    )
    begin
        if not Rec.IsTemporary then
            if (Rec."System Created") and (Rec."Document No." <> '') then
                Error(Err000);
    end;

    [EventSubscriber(ObjectType::Table, Database::"Gen. Journal Line", 'OnBeforeValidateEvent', 'Document No.', true, true)]
    local procedure "GenJournalLine_OnBeforeValidateEvent_DocumentNo"
    (
        var Rec: Record "Gen. Journal Line";
        var xRec: Record "Gen. Journal Line";
        CurrFieldNo: Integer
    )
    begin
        if not Rec.IsTemporary then
            if Rec."System Created" then
                if Rec."Document No." <> xRec."Document No." then
                    Error(StrSubstNo(Err002, Rec.FieldCaption("Document No.")));
    end;

    local procedure CheckDocumentNo(pDocNo: Date; pPostingDate: date)
    begin
        if pDocNo > pPostingDate then
            // Error(Text007, pPostingDate);
            Error(Text007);
    end;

    procedure CanChangePostingDate(pGlEntry: Record 17)
    var
        NoSeriesline: Record "No. Series Line";
        lNoSeries: Record "No. Series";
    begin
        NoSeriesline.SetRange("Series Code", pGlEntry."No. Series");
        NoSeriesline.SetFilter("Starting Date", '<=%1', pGlEntry."Posting Date");
        NoSeriesline.SetFilter("Last Date Used", '>=%1', pGlEntry."Posting Date");
        if NoSeriesline.FindFirst() then begin
            lNoSeries.Get(NoSeriesline."Series Code");
            IF (lNoSeries."Date Order") and (pGlEntry."Posting Date" < NoSeriesline."Last Date Used") then
                ERROR(Text004, lNoSeries.Code, NoSeriesline."Last Date Used");
        end;

    end;
}