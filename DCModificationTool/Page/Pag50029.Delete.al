page 50029 "Delete"
{
    // <changelog>
    //   <add id="IT0001" dev="rscaring" date="2004-09-22" area="AUTOPAY" request="it-start-40"
    //   releaseversion="IT4.00">Automatic payment system: Bank Receipt &amp; Bills</add>
    //   <add id="IT0002" dev="rscaring" date="2004-09-22" area="WITHHOLD" request="it-start-40"
    //   releaseversion="IT4.00">Withholding Tax</add>
    //   <change id="IT0003" dev="rscaring" date="2005-04-18" area="AUTOPAY" request="it-start-400A"
    //   baseversion="IT4.00" releaseversion="IT4.00.A">Added the lacking print button.</change>
    //   <change id="IT0004" dev="all-e" date="2009-06-03" area="AUTOPAY" feature="NAVCORS40105"
    //   baseversion="IT4.00.A" releaseversion="IT6.00.01">Find button is not displayed while loading the form</change>
    // </changelog>
    // 
    // // VP230315 - prende in considerazione l'eliminazione della vendita autofattura di un acquisto CEE dove i protocolli non sono uguali.

    Caption = 'Delete';
    DataCaptionExpression = GetCaptionText;
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Worksheet;
    PromotedActionCategories = 'New,Process,Report,Find By';
    SaveValues = false;
    SourceTable = "Document Entry";
    SourceTableTemporary = true;
    Permissions = TableData "Purch. Inv. Header" = rimd, tabledata "G/L Entry" = rimd, tabledata "VAT Entry" = rimd,
                   tabledata "Vendor Ledger Entry" = rimd, tabledata "Detailed Vendor Ledg. Entry" = rimd,
                    tabledata "G/L Entry - VAT Entry Link" = rimd, tabledata "Cust. Ledger Entry" = rimd,
                     tabledata "Detailed Cust. Ledg. Entry" = rimd, tabledata "Bank Account Ledger Entry" = rimd;
    layout
    {
        area(content)
        {
            group(Document)
            {
                Caption = 'Document';
                Visible = DocumentVisible;
                field(DocNoFilter; DocNoFilter)
                {
                    ApplicationArea = Basic, Suite;
                    Editable = gDocNoEdit; //AX-n
                    Caption = 'Document No.';
                    ToolTip = 'Specifies the document number of an entry that is used to find all documents that have the same document number. You can enter a new document number in this field to search for another set of documents.';
                    trigger OnValidate()
                    begin
                        SetDocNo(DocNoFilter);
                        ContactType := ContactType::" ";
                        ContactNo := '';
                        ExtDocNo := '';
                        //ClearTrackingInfo;
                        DocNoFilterOnAfterValidate;
                        FilterSelectionChanged();
                        CheckUnicFilter(DocNoFilter);
                    end;
                }
                field(PostingDateFilter; PostingDateFilter)
                {
                    ApplicationArea = Basic, Suite;
                    Editable = gPostingDateEdit; //AX-n
                    Caption = 'Posting Date';
                    ToolTip = 'Specifies the posting date for the document that you are searching for. You can insert a filter if you want to search for a certain interval of dates.';

                    trigger OnValidate()
                    begin
                        SetPostingDate(PostingDateFilter);
                        ContactType := ContactType::" ";
                        ContactNo := '';
                        ExtDocNo := '';
                        ClearTrackingInfo;
                        PostingDateFilterOnAfterValida;
                        FilterSelectionChanged();
                    end;
                }
                field(TransactionFilter; TransactionFilter)
                {
                    Caption = 'Transaction No.';
                    ApplicationArea = Basic, Suite;
                    Visible = gTransFieldVisible; //AX-n
                }
            }
            group("Business Contact")
            {
                Caption = 'Business Contact';
                Visible = BusinessContactVisible;
                field(ContactType; ContactType)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Business Contact Type';
                    ToolTip = 'Specifies if you want to search for customers, vendors, or bank accounts. Your choice determines the list that you can access in the Business Contact No. field.';

                    trigger OnValidate()
                    begin
                        SetDocNo('');
                        SetPostingDate('');
                        ClearTrackingInfo;
                        ContactTypeOnAfterValidate();
                        FilterSelectionChanged();
                    end;
                }
                field(ContactNo; ContactNo)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Business Contact No.';
                    ToolTip = 'Specifies the number of the customer, vendor, or bank account that you want to find entries for.';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        Vend: Record Vendor;
                        Cust: Record Customer;
                    begin
                        case ContactType of

                            ContactType::Vendor:
                                if PAGE.RunModal(0, Vend) = ACTION::LookupOK then begin
                                    Text := Vend."No.";
                                    exit(true);
                                end;

                            ContactType::Customer:
                                if PAGE.RunModal(0, Cust) = ACTION::LookupOK then begin
                                    Text := Cust."No.";
                                    exit(true);
                                end;
                        end;
                    end;

                    trigger OnValidate()
                    begin
                        SetDocNo('');
                        SetPostingDate('');
                        ClearTrackingInfo;
                        ContactNoOnAfterValidate;
                        FilterSelectionChanged();
                    end;
                }
                field(ExtDocNo; ExtDocNo)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'External Document No.';
                    ToolTip = 'Specifies the document number assigned by the vendor.';

                    trigger OnValidate()
                    begin
                        SetDocNo('');
                        SetPostingDate('');
                        ClearTrackingInfo;
                        ExtDocNoOnAfterValidate;
                        FilterSelectionChanged();
                    end;
                }
            }
            group("Item Reference")
            {
                Caption = 'Item Reference';
                Visible = ItemReferenceVisible;
                field(SerialNoFilter; SerialNoFilter)
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Serial No.';
                    ToolTip = 'Specifies the posting date of the document when you have opened the Navigate window from the document. The entry''s document number is shown in the Document No. field.';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        SerialNoInformationList: Page "Serial No. Information List";
                    begin
                        Clear(SerialNoInformationList);
                        if SerialNoInformationList.RunModal = ACTION::LookupOK then begin
                            Text := SerialNoInformationList.GetSelectionFilter;
                            exit(true);
                        end;
                    end;

                    trigger OnValidate()
                    begin
                        ClearInfo;
                        SerialNoFilterOnAfterValidate;
                        FilterSelectionChanged();
                    end;
                }
                field(LotNoFilter; LotNoFilter)
                {
                    ApplicationArea = ItemTracking;
                    Caption = 'Lot No.';
                    ToolTip = 'Specifies the number that you want to find entries for.';

                    trigger OnLookup(var Text: Text): Boolean
                    var
                        LotNoInformationList: Page "Lot No. Information List";
                    begin
                        Clear(LotNoInformationList);
                        if LotNoInformationList.RunModal = ACTION::LookupOK then begin
                            Text := LotNoInformationList.GetSelectionFilter;
                            exit(true);
                        end;
                    end;

                    trigger OnValidate()
                    begin
                        ClearInfo;
                        LotNoFilterOnAfterValidate;
                        FilterSelectionChanged();
                    end;
                }
            }
            group(Notification)
            {
                Caption = 'Notification';
                InstructionalText = 'The filter has been changed. Choose Find to update the list of related entries.';
                Visible = FilterSelectionChangedTxtVisible;
            }
            repeater(Control16)
            {
                Editable = false;
                ShowCaption = false;
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the number of the entry, as assigned from the specified number series when the entry was created.';
                    Visible = false;
                }
                field("Table ID"; Rec."Table ID")
                {
                    ApplicationArea = Basic, Suite;
                    ToolTip = 'Specifies the table that the entry is stored in.';
                    Visible = false;
                }
                field("Table Name"; Rec."Table Name")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Related Entries';
                    ToolTip = 'Specifies the name of the table where the Navigate facility has found entries with the selected document number and/or posting date.';
                }
                field("No. of Records"; Rec."No. of Records")
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'No. of Entries';
                    DrillDown = true;
                    ToolTip = 'Specifies the number of documents that the Navigate facility has found in the table with the selected entries.';

                    trigger OnDrillDown()
                    begin
                        ShowRecords;
                    end;
                }
            }
            group(Source)
            {
                Caption = 'Source';
                field(DocType; DocType)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Document Type';
                    Editable = false;
                    Enabled = DocTypeEnable;
                    ToolTip = 'Specifies the type of the selected document. Leave the Document Type field blank if you want to search by posting date. The entry''s document number is shown in the Document No. field.';
                }
                field(SourceType; SourceType)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Source Type';
                    Editable = false;
                    Enabled = SourceTypeEnable;
                    ToolTip = 'Specifies the source type of the selected document or remains blank if you search by posting date. The entry''s document number is shown in the Document No. field.';
                }
                field(SourceNo; SourceNo)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Source No.';
                    Editable = false;
                    Enabled = SourceNoEnable;
                    ToolTip = 'Specifies the source number of the selected document. The entry''s document number is shown in the Document No. field.';
                }
                field(SourceName; SourceName)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Source Name';
                    Editable = false;
                    Enabled = SourceNameEnable;
                    ToolTip = 'Specifies the source name on the selected entry. The entry''s document number is shown in the Document No. field.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Process)
            {
                Caption = 'Process';
                action(Show)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Show Related Entries';
                    Enabled = ShowEnable;
                    Image = ViewDocumentLine;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'View the related entries of the type that you have chosen.';

                    trigger OnAction()
                    begin
                        ShowRecords;
                    end;
                }
                action(Find)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Find';
                    Image = Find;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Apply a filter to search on this page.';

                    trigger OnAction()
                    begin
                        CheckUnicFilter(DocNoFilter);
                        FindPush;
                        FilterSelectionChangedTxtVisible := false;
                    end;
                }
                action(Print)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Print';
                    Ellipsis = true;
                    Enabled = PrintEnable;
                    Image = Print;
                    Promoted = true;
                    PromotedCategory = Process;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    ToolTip = 'Prepare to print the document. A report request window for the document opens where you can specify what to include on the print-out.';

                    trigger OnAction()
                    var
                        ItemTrackingNavigate: Report "Item Tracking Navigate";
                        DocumentEntries: Report "Document Entries";
                    begin
                        if ItemTrackingSearch then begin
                            Clear(ItemTrackingNavigate);
                            ItemTrackingNavigate.TransferDocEntries(Rec);
                            ItemTrackingNavigate.TransferRecordBuffer(TempRecordBuffer);
                            ItemTrackingNavigate.TransferFilters(SerialNoFilter, LotNoFilter, '', '');
                            ItemTrackingNavigate.Run;
                        end else begin
                            DocumentEntries.TransferDocEntries(Rec);
                            DocumentEntries.TransferFilters(DocNoFilter, PostingDateFilter);
                            DocumentEntries.Run;
                        end;
                    end;
                }
                action(Elimina)
                {
                    Image = Delete;
                    Promoted = true;
                    PromotedCategory = New;
                    ApplicationArea = Basic, Suite;
                    Caption = 'Delete document';

                    trigger OnAction()
                    begin
                        DeleteDocument;
                        ClearSourceInfo;
                    end;
                }
            }
            group(FindGroup)
            {
                Caption = 'Find by';
                action(FindByDocument)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Find by Document';
                    Image = Documents;
                    ToolTip = 'View entries based on the specified document number.';

                    trigger OnAction()
                    begin
                        SearchBasedOn := SearchBasedOn::Document;
                        UpdateFindByGroupsVisibility;
                    end;
                }
                action(FindByBusinessContact)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Find by Business Contact';
                    Image = ContactPerson;
                    ToolTip = 'Filter entries based on the specified contact or contact type.';

                    trigger OnAction()
                    begin
                        SearchBasedOn := SearchBasedOn::"Business Contact";
                        UpdateFindByGroupsVisibility;
                    end;
                }
                action(FindByItemReference)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Find by Item Reference';
                    Image = ItemTracking;
                    ToolTip = 'Filter entries based on the specified serial number or lot number.';

                    trigger OnAction()
                    begin
                        SearchBasedOn := SearchBasedOn::"Item Reference";
                        UpdateFindByGroupsVisibility;
                    end;
                }
            }
        }
    }

    trigger OnInit()
    begin
        SourceNameEnable := true;
        SourceNoEnable := true;
        SourceTypeEnable := true;
        DocTypeEnable := true;
        PrintEnable := true;
        ShowEnable := true;
        DocumentVisible := true;
        //AX-s
        gDocNoEdit := NewDocNo = '';
        gPostingDateEdit := NewPostingDate = 0D;
        //AX-e
        SearchBasedOn := SearchBasedOn::Document;
    end;

    trigger OnOpenPage()
    begin
        UpdateForm := true;
        FindRecordsOnOpen;
    end;

    var
        LogEMTUpdate: Record "Log EMT Update";
        Text000: Label 'The business contact type was not specified.';
        Text001: Label 'There are no posted records with this external document number.';
        Text002: Label 'Counting records...';
        Text011: Label 'The document number has been used more than once.';
        Text012: Label 'This combination of document number and posting date has been used more than once.';
        Text013: Label 'There are no posted records with this document number.';
        Text014: Label 'There are no posted records with this combination of document number and posting date.';
        Text015: Label 'The search results in too many external documents. Specify a business contact no.';
        Text016: Label 'The search results in too many external documents. Use Navigate from the relevant ledger entries.';
        Text017: Label 'The document can not be deleted! The entry it is applied.';
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
        [SecurityFiltering(SecurityFilter::Filtered)]

        TempRecordBuffer: Record "Record Buffer" temporary;
        FilterTokens: Codeunit "Filter Tokens";
        ItemTrackingNavigateMgt: Codeunit "Item Tracking Navigate Mgt.";
        Window: Dialog;
        ContactNo: Code[250];
        ExtDocNo: Code[250];
        DocType: Text[100];
        SourceType: Text[30];
        SourceNo: Code[20];
        SourceName: Text[100];
        ContactType: Enum "Navigate Contact Type";
        DocExists: Boolean;
        NewSerialNo: Code[20];
        NewLotNo: Code[20];
        SerialNoFilter: Code[1000];
        LotNoFilter: Code[1000];
        [InDataSet]
        ShowEnable: Boolean;
        [InDataSet]
        PrintEnable: Boolean;
        [InDataSet]
        DocTypeEnable: Boolean;
        [InDataSet]
        SourceTypeEnable: Boolean;
        [InDataSet]
        SourceNoEnable: Boolean;
        [InDataSet]
        SourceNameEnable: Boolean;
        UpdateForm: Boolean;
        SearchBasedOn: Enum "Navigate Search Type";
        [InDataSet]
        DocumentVisible: Boolean;
        [InDataSet]
        BusinessContactVisible: Boolean;
        [InDataSet]
        ItemReferenceVisible: Boolean;
        [InDataSet]
        FilterSelectionChangedTxtVisible: Boolean;
        PageCaptionTxt: Label 'Selected - %1';
        //AX-s
        gModifyDocTool: Codeunit "Modify Documents Tool";
        [InDataSet]
        gTransFieldVisible: Boolean;
        [InDataSet]
        gDocNoEdit: Boolean;
        [InDataSet]
        gPostingDateEdit: Boolean;
        gEntryNo: Integer;
        //AX-e
        Er03: Label 'Inserire un unico Nr documento nell''apposito filtro!';
        Err000021: Label 'Impossible delete a document with Payed Withholding taxes!';
        Err000022: Label 'There are more transactions (%1). Insert a value for the filter';
        TransactionFilter: Integer;
        Wrng00004: Label 'Delete?';
        TmpNumerazioni: Record "No. Series" temporary;
        Wrng00008: Label 'Nothing to delete.';
        GLEntryVATEntryLink: Record "G/L Entry - VAT Entry Link";
        TmpColCG: Record "G/L Entry - VAT Entry Link" temporary;
        Wrng00100: Label 'This document has been created: %1';
        Err000025: Label 'Impossible delete documents with line Type Item';
        Err000026: Label 'Impossible delete documents with line Type Fixed Asset';
        iLogLineno: Integer;

    protected var
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
        NewDocNo: Code[20];
        NewPostingDate: Date;
        NewSourceRecVar: Variant;

    procedure SetDoc(PostingDate: Date; DocNo: Code[20])
    begin
        NewDocNo := DocNo;
        NewPostingDate := PostingDate;
    end;

    //AX-s
    procedure SetGLE(PostingDate: Date; DocNo: Code[20]; pEntryNo: Integer)
    begin
        NewDocNo := DocNo;
        NewPostingDate := PostingDate;
        gEntryNo := pEntryNo;
    end;
    //AX-e

    local procedure FindExtRecords()
    var
        [SecurityFiltering(SecurityFilter::Filtered)]
        VendLedgEntry2: Record "Vendor Ledger Entry";
        FoundRecords: Boolean;
        DateFilter2: Text;
        DocNoFilter2: Text;
    begin
        FoundRecords := false;
        case ContactType of
            ContactType::Vendor:
                begin
                    VendLedgEntry2.SetCurrentKey("External Document No.");
                    VendLedgEntry2.SetFilter("External Document No.", ExtDocNo);
                    VendLedgEntry2.SetFilter("Vendor No.", ContactNo);
                    if VendLedgEntry2.FindSet then begin
                        repeat
                            MakeExtFilter(DateFilter2,
                                            VendLedgEntry2."Posting Date",
                                            DocNoFilter2,
                                            VendLedgEntry2."Document No.");
                        until VendLedgEntry2.Next = 0;
                        SetPostingDate(DateFilter2);
                        SetDocNo(DocNoFilter2);
                        FindRecords;
                        FoundRecords := true;
                    end;
                end;
            ContactType::Customer:
                begin
                    Rec.DeleteAll();
                    Rec."Entry No." := 0;
                    FindUnpostedSalesDocs(SOSalesHeader."Document Type"::Quote, SalesQuoteTxt, SQSalesHeader);
                    FindUnpostedSalesDocs(SOSalesHeader."Document Type"::Order, SalesOrderTxt, SOSalesHeader);
                    FindUnpostedSalesDocs(SISalesHeader."Document Type"::Invoice, SalesInvoiceTxt, SISalesHeader);
                    FindUnpostedSalesDocs(SROSalesHeader."Document Type"::"Return Order", SalesReturnOrderTxt, SROSalesHeader);
                    FindUnpostedSalesDocs(SCMSalesHeader."Document Type"::"Credit Memo", SalesCreditMemoTxt, SCMSalesHeader);
                    if SalesShptHeader.ReadPermission then begin
                        SalesShptHeader.Reset();
                        SalesShptHeader.SetCurrentKey("Sell-to Customer No.", "External Document No.");
                        SalesShptHeader.SetFilter("Sell-to Customer No.", ContactNo);
                        SalesShptHeader.SetFilter("External Document No.", ExtDocNo);
                        InsertIntoDocEntry(Rec, DATABASE::"Sales Shipment Header", 0, PostedSalesShipmentTxt, SalesShptHeader.Count);
                    end;
                    if SalesInvHeader.ReadPermission then begin
                        SalesInvHeader.Reset();
                        SalesInvHeader.SetCurrentKey("Sell-to Customer No.", "External Document No.");
                        SalesInvHeader.SetFilter("Sell-to Customer No.", ContactNo);
                        SalesInvHeader.SetFilter("External Document No.", ExtDocNo);
                        InsertIntoDocEntry(Rec, DATABASE::"Sales Invoice Header", 0, PostedSalesInvoiceTxt, SalesInvHeader.Count);
                    end;
                    if ReturnRcptHeader.ReadPermission then begin
                        ReturnRcptHeader.Reset();
                        ReturnRcptHeader.SetCurrentKey("Sell-to Customer No.", "External Document No.");
                        ReturnRcptHeader.SetFilter("Sell-to Customer No.", ContactNo);
                        ReturnRcptHeader.SetFilter("External Document No.", ExtDocNo);
                        InsertIntoDocEntry(Rec, DATABASE::"Return Receipt Header", 0, PostedReturnReceiptTxt, ReturnRcptHeader.Count);
                    end;
                    if SalesCrMemoHeader.ReadPermission then begin
                        SalesCrMemoHeader.Reset();
                        SalesCrMemoHeader.SetCurrentKey("Sell-to Customer No.", "External Document No.");
                        SalesCrMemoHeader.SetFilter("Sell-to Customer No.", ContactNo);
                        SalesCrMemoHeader.SetFilter("External Document No.", ExtDocNo);
                        InsertIntoDocEntry(Rec, DATABASE::"Sales Cr.Memo Header", 0, PostedSalesCreditMemoTxt, SalesCrMemoHeader.Count);
                    end;
                    FindUnpostedServDocs(SOServHeader."Document Type"::Order, ServiceOrderTxt, SOServHeader);
                    FindUnpostedServDocs(SIServHeader."Document Type"::Invoice, ServiceInvoiceTxt, SIServHeader);
                    FindUnpostedServDocs(SCMServHeader."Document Type"::"Credit Memo", ServiceCreditMemoTxt, SCMServHeader);
                    if ServShptHeader.ReadPermission then
                        if ExtDocNo = '' then begin
                            ServShptHeader.Reset();
                            ServShptHeader.SetCurrentKey("Customer No.");
                            ServShptHeader.SetFilter("Customer No.", ContactNo);
                            InsertIntoDocEntry(
                                Rec, DATABASE::"Service Shipment Header", 0, PostedServiceShipmentTxt, ServShptHeader.Count);
                        end;
                    if ServInvHeader.ReadPermission then
                        if ExtDocNo = '' then begin
                            ServInvHeader.Reset();
                            ServInvHeader.SetCurrentKey("Customer No.");
                            ServInvHeader.SetFilter("Customer No.", ContactNo);
                            InsertIntoDocEntry(Rec, DATABASE::"Service Invoice Header", 0, PostedServiceInvoiceTxt, ServInvHeader.Count);
                        end;
                    if ServCrMemoHeader.ReadPermission then
                        if ExtDocNo = '' then begin
                            ServCrMemoHeader.Reset();
                            ServCrMemoHeader.SetCurrentKey("Customer No.");
                            ServCrMemoHeader.SetFilter("Customer No.", ContactNo);
                            InsertIntoDocEntry(
                                Rec, DATABASE::"Service Cr.Memo Header", 0, PostedServiceCreditMemoTxt, ServCrMemoHeader.Count);
                        end;

                    DocExists := Rec.FindFirst;

                    UpdateFormAfterFindRecords;
                    FoundRecords := DocExists;
                end;
            else
                Error(Text000);
        end;

        OnAfterNavigateFindExtRecords(Rec, ContactType, ContactNo, ExtDocNo, FoundRecords);

        if not FoundRecords then begin
            SetSource(0D, '', '', 0, '');
            Message(Text001);
        end;
    end;

    local procedure FindRecords()
    var
        DocType2: Text[100];
        DocNo2: Code[20];
        SourceType2: Integer;
        SourceNo2: Code[20];
        PostingDate: Date;
        IsSourceUpdated: Boolean;
        HideDialog: Boolean;
        lProgNum: Integer; //AX-n
    begin
        OnBeforeFindRecords(HideDialog);
        if not HideDialog then
            Window.Open(Text002);
        //AX-s
        CheckUnicFilter(DocNoFilter);
        DeleteAllBuffer;
        //AX-e

        Rec.Reset;
        Rec.DeleteAll();
        Rec."Entry No." := 0;

        FindPostedDocuments;
        FindLedgerEntries;
        OnAfterNavigateFindRecords(Rec, DocNoFilter, PostingDateFilter);
        DocExists := Rec.FindFirst;

        SetSource(0D, '', '', 0, '');
        if DocExists then begin
            if (NoOfRecords(DATABASE::"Cust. Ledger Entry") + NoOfRecords(DATABASE::"Vendor Ledger Entry") <= 1) and
               (GetDocumentCount <= 1)
            then begin
                SetSourceForService;
                SetSourceForSales;
                SetSourceForPurchase;
                SetSourceForServiceDoc;

                IsSourceUpdated := false;
                OnFindRecordsOnAfterSetSource(
                  Rec, PostingDate, DocType2, DocNo2, SourceType2, SourceNo2, DocNoFilter, PostingDateFilter, IsSourceUpdated);
                if IsSourceUpdated then
                    SetSource(PostingDate, DocType2, DocNo2, SourceType2, SourceNo2);
            end else begin
                if DocNoFilter <> '' then
                    if PostingDateFilter = '' then
                        Message(Text011)
                    else
                        Message(Text012);
            end;
        end else
            if PostingDateFilter = '' then
                Message(Text013)
            else
                Message(Text014);

        OnAfterFindRecords(Rec, DocNoFilter, PostingDateFilter);

        if UpdateForm then
            UpdateFormAfterFindRecords;

        if not HideDialog then
            Window.Close;
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
            InsertIntoDocEntry(Rec, DATABASE::"Cust. Ledger Entry", 0, CustLedgEntry.TableCaption, CustLedgEntry.Count);
            //AX-s
            // Cntrl
            if CustLedgEntry.FindFirst then begin
                SaveNoSeries(CustLedgEntry."No. Series");
                // MovClientiHasMoreTransaction(CustLedgEntry);
                gModifyDocTool.CheckCustLedgerEntryApplied(CustLedgEntry."Document No.", CustLedgEntry."Posting Date", CustLedgEntry."Transaction No.");
            end;
            //AX-e
        end;
        if DtldCustLedgEntry.ReadPermission then begin
            DtldCustLedgEntry.Reset();
            DtldCustLedgEntry.SetCurrentKey("Document No.");
            DtldCustLedgEntry.SetFilter("Document No.", DocNoFilter);
            DtldCustLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Detailed Cust. Ledg. Entry", 0, DtldCustLedgEntry.TableCaption, DtldCustLedgEntry.Count);
        end;
    end;

    local procedure FindVendEntries()
    begin
        if VendLedgEntry.ReadPermission then begin
            VendLedgEntry.Reset();
            VendLedgEntry.SetCurrentKey("Document No.");
            VendLedgEntry.SetFilter("Document No.", DocNoFilter);
            VendLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Vendor Ledger Entry", 0, VendLedgEntry.TableCaption, VendLedgEntry.Count);
            //AX-s
            // Cntrl
            if VendLedgEntry.FindFirst then begin
                SaveNoSeries(VendLedgEntry."No. Series");
                // MovFornitoreHasMoreTransaction(VendLedgEntry);
                gModifyDocTool.CheckVenLedgerEntryApplied(VendLedgEntry."Document No.", VendLedgEntry."Posting Date", VendLedgEntry."Transaction No.");
            end;
            //AX-e
        end;
        if DtldVendLedgEntry.ReadPermission then begin
            DtldVendLedgEntry.Reset();
            DtldVendLedgEntry.SetCurrentKey("Document No.");
            DtldVendLedgEntry.SetFilter("Document No.", DocNoFilter);
            DtldVendLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Detailed Vendor Ledg. Entry", 0, DtldVendLedgEntry.TableCaption, DtldVendLedgEntry.Count);
        end;
    end;

    local procedure FindBankEntries()
    begin
        if BankAccLedgEntry.ReadPermission then begin
            BankAccLedgEntry.Reset();
            BankAccLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            BankAccLedgEntry.SetFilter("Document No.", DocNoFilter);
            BankAccLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Bank Account Ledger Entry", 0, BankAccLedgEntry.TableCaption, BankAccLedgEntry.Count);
            //AX-s
            // Cntrl
            if BankAccLedgEntry.FindFirst then
                gModifyDocTool.CheckMovBancaChiusoOriconcigliato(BankAccLedgEntry."Document No.", BankAccLedgEntry."Posting Date", BankAccLedgEntry."Transaction No.");
            //AX-e
        end;
        if CheckLedgEntry.ReadPermission then begin
            CheckLedgEntry.Reset();
            CheckLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            CheckLedgEntry.SetFilter("Document No.", DocNoFilter);
            CheckLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Check Ledger Entry", 0, CheckLedgEntry.TableCaption, CheckLedgEntry.Count);
        end;
    end;

    local procedure FindGLEntries()
    begin
        if GLEntry.ReadPermission then begin
            GLEntry.Reset();
            GLEntry.SetCurrentKey("Document No.", "Posting Date");
            GLEntry.SetFilter("Document No.", DocNoFilter);
            GLEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"G/L Entry", 0, GLEntry.TableCaption, GLEntry.Count);
            //AX-s
            // Cntrl
            if GLEntry.FindFirst then begin
                SaveCollCgIva(GLEntry);
                SaveNoSeries(GLEntry."No. Series");
                //                 if GlEntryWithDimensions(GLEntry) then
                //                     Error(Wrng00006);
                // MovCoGeHasMoreTransaction(GLEntry);

                gModifyDocTool.CheckPeriodoContabileChiuso(GLEntry."Posting Date");
            end;
            //AX-e
        end;
    end;

    local procedure FindVATEntries()
    begin
        if VATEntry.ReadPermission then begin
            VATEntry.Reset();
            VATEntry.SetCurrentKey("Document No.", "Posting Date");
            VATEntry.SetFilter("Document No.", DocNoFilter);
            VATEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"VAT Entry", 0, VATEntry.TableCaption, VATEntry.Count);
            //AX-s
            // Cntrl
            if VATEntry.FindFirst then begin
                SaveCollIvaCg(VATEntry);
                SaveNoSeries(VATEntry."No. Series");
            end;
            //AX-e
        end;
    end;

    local procedure FindFAEntries()
    begin
        if FALedgEntry.ReadPermission then begin
            FALedgEntry.Reset();
            FALedgEntry.SetCurrentKey("Document No.", "Posting Date");
            FALedgEntry.SetFilter("Document No.", DocNoFilter);
            FALedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"FA Ledger Entry", 0, FALedgEntry.TableCaption, FALedgEntry.Count);
        end;
        if MaintenanceLedgEntry.ReadPermission then begin
            MaintenanceLedgEntry.Reset();
            MaintenanceLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            MaintenanceLedgEntry.SetFilter("Document No.", DocNoFilter);
            MaintenanceLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Maintenance Ledger Entry", 0, MaintenanceLedgEntry.TableCaption, MaintenanceLedgEntry.Count);
        end;
        if InsuranceCovLedgEntry.ReadPermission then begin
            InsuranceCovLedgEntry.Reset();
            InsuranceCovLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            InsuranceCovLedgEntry.SetFilter("Document No.", DocNoFilter);
            InsuranceCovLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Ins. Coverage Ledger Entry", 0, InsuranceCovLedgEntry.TableCaption, InsuranceCovLedgEntry.Count);
        end;
    end;

    local procedure FindInvtEntries()
    begin
        if ItemLedgEntry.ReadPermission then begin
            ItemLedgEntry.Reset();
            ItemLedgEntry.SetCurrentKey("Document No.");
            ItemLedgEntry.SetFilter("Document No.", DocNoFilter);
            ItemLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Item Ledger Entry", 0, ItemLedgEntry.TableCaption, ItemLedgEntry.Count);
        end;
        if ValueEntry.ReadPermission then begin
            ValueEntry.Reset();
            ValueEntry.SetCurrentKey("Document No.");
            ValueEntry.SetFilter("Document No.", DocNoFilter);
            ValueEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Value Entry", 0, ValueEntry.TableCaption, ValueEntry.Count);
        end;
        if PhysInvtLedgEntry.ReadPermission then begin
            PhysInvtLedgEntry.Reset();
            PhysInvtLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            PhysInvtLedgEntry.SetFilter("Document No.", DocNoFilter);
            PhysInvtLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Phys. Inventory Ledger Entry", 0, PhysInvtLedgEntry.TableCaption, PhysInvtLedgEntry.Count);
        end;
    end;

    local procedure FindReminderEntries()
    begin
        if ReminderEntry.ReadPermission then begin
            ReminderEntry.Reset();
            ReminderEntry.SetCurrentKey(Type, "No.");
            ReminderEntry.SetFilter("No.", DocNoFilter);
            ReminderEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Reminder/Fin. Charge Entry", 0, ReminderEntry.TableCaption, ReminderEntry.Count);
        end;
    end;

    local procedure FindResEntries()
    begin
        if ResLedgEntry.ReadPermission then begin
            ResLedgEntry.Reset();
            ResLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            ResLedgEntry.SetFilter("Document No.", DocNoFilter);
            ResLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Res. Ledger Entry", 0, ResLedgEntry.TableCaption, ResLedgEntry.Count);
        end;
    end;

    local procedure FindServEntries()
    begin
        if ServLedgerEntry.ReadPermission then begin
            ServLedgerEntry.Reset();
            ServLedgerEntry.SetCurrentKey("Document No.", "Posting Date");
            ServLedgerEntry.SetFilter("Document No.", DocNoFilter);
            ServLedgerEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Service Ledger Entry", 0, ServLedgerEntry.TableCaption, ServLedgerEntry.Count);
        end;
        if WarrantyLedgerEntry.ReadPermission then begin
            WarrantyLedgerEntry.Reset();
            WarrantyLedgerEntry.SetCurrentKey("Document No.", "Posting Date");
            WarrantyLedgerEntry.SetFilter("Document No.", DocNoFilter);
            WarrantyLedgerEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Warranty Ledger Entry", 0, WarrantyLedgerEntry.TableCaption, WarrantyLedgerEntry.Count);
        end;
    end;

    local procedure FindCapEntries()
    begin
        if CapacityLedgEntry.ReadPermission then begin
            CapacityLedgEntry.Reset();
            CapacityLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            CapacityLedgEntry.SetFilter("Document No.", DocNoFilter);
            CapacityLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Capacity Ledger Entry", 0, CapacityLedgEntry.TableCaption, CapacityLedgEntry.Count);
        end;
    end;

    local procedure FindCostEntries()
    begin
        if CostEntry.ReadPermission then begin
            CostEntry.Reset();
            CostEntry.SetCurrentKey("Document No.", "Posting Date");
            CostEntry.SetFilter("Document No.", DocNoFilter);
            CostEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Cost Entry", 0, CostEntry.TableCaption, CostEntry.Count);
        end;
    end;

    local procedure FindWhseEntries()
    begin
        if WhseEntry.ReadPermission then begin
            WhseEntry.Reset();
            WhseEntry.SetCurrentKey("Reference No.", "Registering Date");
            WhseEntry.SetFilter("Reference No.", DocNoFilter);
            WhseEntry.SetFilter("Registering Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Warehouse Entry", 0, WhseEntry.TableCaption, WhseEntry.Count);
        end;
    end;

    local procedure FindJobEntries()
    begin
        if JobLedgEntry.ReadPermission then begin
            JobLedgEntry.Reset();
            JobLedgEntry.SetCurrentKey("Document No.", "Posting Date");
            JobLedgEntry.SetFilter("Document No.", DocNoFilter);
            JobLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Job Ledger Entry", 0, JobLedgEntry.TableCaption, JobLedgEntry.Count);
        end;
        if JobWIPEntry.ReadPermission then begin
            JobWIPEntry.Reset();
            JobWIPEntry.SetFilter("Document No.", DocNoFilter);
            JobWIPEntry.SetFilter("WIP Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Job WIP Entry", 0, JobWIPEntry.TableCaption, JobWIPEntry.Count);
        end;
        if JobWIPGLEntry.ReadPermission then begin
            JobWIPGLEntry.Reset();
            JobWIPGLEntry.SetCurrentKey("Document No.", "Posting Date");
            JobWIPGLEntry.SetFilter("Document No.", DocNoFilter);
            JobWIPGLEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Job WIP G/L Entry", 0, JobWIPGLEntry.TableCaption, JobWIPGLEntry.Count);
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
            InsertIntoDocEntry(Rec, DATABASE::"Incoming Document", 0, IncomingDocument.TableCaption, IncomingDocument.Count);
        end;
    end;



    local procedure FindSalesShipmentHeader()
    begin
        if SalesShptHeader.ReadPermission then begin
            SalesShptHeader.Reset();
            SalesShptHeader.SetFilter("No.", DocNoFilter);
            SalesShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Sales Shipment Header", 0, PostedSalesShipmentTxt, SalesShptHeader.Count);
        end;
    end;

    local procedure FindSalesInvoiceHeader()
    begin
        if SalesInvHeader.ReadPermission then begin
            SalesInvHeader.Reset();
            SalesInvHeader.SetFilter("No.", DocNoFilter);
            SalesInvHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Sales Invoice Header", 0, PostedSalesInvoiceTxt, SalesInvHeader.Count);
            //AX-s
            // Cntrl
            if SalesInvHeader.FindFirst then begin
                SaveNoSeries(SalesInvHeader."No. Series"); //OT-n
                gModifyDocTool.CheckPeriodoContabileChiuso(SalesInvHeader."Posting Date");
                // if (SalesInvHeader."No. Printed" <> 0) then Error(Wrng00001);
            end;
            //AX-e
        end;
    end;

    local procedure FindSalesCrMemoHeader()
    begin
        if SalesCrMemoHeader.ReadPermission then begin
            SalesCrMemoHeader.Reset();
            SalesCrMemoHeader.SetFilter("No.", DocNoFilter);
            SalesCrMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Sales Cr.Memo Header", 0, PostedSalesCreditMemoTxt, SalesCrMemoHeader.Count);
            //AX-s
            // Cntrl - 4
            if SalesCrMemoHeader.FindFirst then begin
                SaveNoSeries(SalesCrMemoHeader."No. Series");
                gModifyDocTool.CheckPeriodoContabileChiuso(SalesCrMemoHeader."Posting Date");
                // if (SalesCrMemoHeader."No. Printed" <> 0) then Error(Wrng00001);
            end;
            //AX-e
        end;
    end;

    local procedure FindReturnRcptHeader()
    begin
        if ReturnRcptHeader.ReadPermission then begin
            ReturnRcptHeader.Reset();
            ReturnRcptHeader.SetFilter("No.", DocNoFilter);
            ReturnRcptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Return Receipt Header", 0, PostedReturnReceiptTxt, ReturnRcptHeader.Count);
        end;
    end;

    local procedure FindServShipmentHeader()
    begin
        if ServShptHeader.ReadPermission then begin
            ServShptHeader.Reset();
            ServShptHeader.SetFilter("No.", DocNoFilter);
            ServShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Service Shipment Header", 0, PostedServiceShipmentTxt, ServShptHeader.Count);
        end;
    end;

    local procedure FindServInvoiceHeader()
    begin
        if ServInvHeader.ReadPermission then begin
            ServInvHeader.Reset();
            ServInvHeader.SetFilter("No.", DocNoFilter);
            ServInvHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Service Invoice Header", 0, PostedServiceInvoiceTxt, ServInvHeader.Count);
        end;
    end;

    local procedure FindServCrMemoHeader()
    begin
        if ServCrMemoHeader.ReadPermission then begin
            ServCrMemoHeader.Reset();
            ServCrMemoHeader.SetFilter("No.", DocNoFilter);
            ServCrMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Service Cr.Memo Header", 0, PostedServiceCreditMemoTxt, ServCrMemoHeader.Count);
        end;
    end;

    local procedure FindEmployeeRecords()
    begin
        if EmplLedgEntry.ReadPermission then begin
            EmplLedgEntry.Reset();
            EmplLedgEntry.SetCurrentKey("Document No.");
            EmplLedgEntry.SetFilter("Document No.", DocNoFilter);
            EmplLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Employee Ledger Entry", 0, EmplLedgEntry.TableCaption, EmplLedgEntry.Count);
        end;
        if DtldEmplLedgEntry.ReadPermission then begin
            DtldEmplLedgEntry.Reset();
            DtldEmplLedgEntry.SetCurrentKey("Document No.");
            DtldEmplLedgEntry.SetFilter("Document No.", DocNoFilter);
            DtldEmplLedgEntry.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Detailed Employee Ledger Entry", 0, DtldEmplLedgEntry.TableCaption, DtldEmplLedgEntry.Count);
        end;
    end;

    local procedure FindIssuedReminderHeader()
    begin
        if IssuedReminderHeader.ReadPermission then begin
            IssuedReminderHeader.Reset();
            IssuedReminderHeader.SetFilter("No.", DocNoFilter);
            IssuedReminderHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Issued Reminder Header", 0, IssuedReminderTxt, IssuedReminderHeader.Count);
        end;
    end;

    local procedure FindIssuedFinChrgMemoHeader()
    begin
        if IssuedFinChrgMemoHeader.ReadPermission then begin
            IssuedFinChrgMemoHeader.Reset();
            IssuedFinChrgMemoHeader.SetFilter("No.", DocNoFilter);
            IssuedFinChrgMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(
                Rec, DATABASE::"Issued Fin. Charge Memo Header", 0, IssuedFinanceChargeMemoTxt, IssuedFinChrgMemoHeader.Count);
        end;
    end;

    local procedure FindPurchRcptHeader()
    begin
        if PurchRcptHeader.ReadPermission then begin
            PurchRcptHeader.Reset();
            PurchRcptHeader.SetFilter("No.", DocNoFilter);
            PurchRcptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Purch. Rcpt. Header", 0, PostedPurchaseReceiptTxt, PurchRcptHeader.Count);
        end;
    end;

    local procedure FindPurchInvoiceHeader()
    begin
        if PurchInvHeader.ReadPermission then begin
            PurchInvHeader.Reset();
            PurchInvHeader.SetFilter("No.", DocNoFilter);
            PurchInvHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Purch. Inv. Header", 0, PostedPurchaseInvoiceTxt, PurchInvHeader.Count);
            //AX-s
            // Cntrl
            if PurchInvHeader.FindFirst then begin
                SaveNoSeries(PurchInvHeader."No. Series");
                gModifyDocTool.CheckPeriodoContabileChiuso(PurchInvHeader."Posting Date");
                // if (PurchInvHeader."No. Printed" <> 0) then Error(Wrng00001);
            end;
            //AX-e
        end;
    end;

    local procedure FindPurchCrMemoHeader()
    begin
        if PurchCrMemoHeader.ReadPermission then begin
            PurchCrMemoHeader.Reset();
            PurchCrMemoHeader.SetFilter("No.", DocNoFilter);
            PurchCrMemoHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Purch. Cr. Memo Hdr.", 0, PostedPurchaseCreditMemoTxt, PurchCrMemoHeader.Count);
            //AX-s
            // Cntrl
            if PurchCrMemoHeader.FindFirst then begin
                SaveNoSeries(PurchCrMemoHeader."No. Series");
                gModifyDocTool.CheckPeriodoContabileChiuso(PurchCrMemoHeader."Posting Date");
                // if (PurchCrMemoHeader."No. Printed" <> 0) then Error(Wrng00001);
            end;
            //AX-e
        end;
    end;

    local procedure FindReturnShptHeader()
    begin
        if ReturnShptHeader.ReadPermission then begin
            ReturnShptHeader.Reset();
            ReturnShptHeader.SetFilter("No.", DocNoFilter);
            ReturnShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Return Shipment Header", 0, PostedReturnShipmentTxt, ReturnShptHeader.Count);
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
            InsertIntoDocEntry(Rec, DATABASE::"Production Order", 0, ProductionOrderTxt, ProductionOrderHeader.Count);
        end;
    end;

    local procedure FindPostedAssemblyHeader()
    begin
        if PostedAssemblyHeader.ReadPermission then begin
            PostedAssemblyHeader.Reset();
            PostedAssemblyHeader.SetFilter("No.", DocNoFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Posted Assembly Header", 0, PostedAssemblyOrderTxt, PostedAssemblyHeader.Count);
        end;
    end;

    local procedure FindPostedWhseShptLine()
    begin
        if PostedWhseShptLine.ReadPermission then begin
            PostedWhseShptLine.Reset();
            PostedWhseShptLine.SetCurrentKey("Posted Source No.", "Posting Date");
            PostedWhseShptLine.SetFilter("Posted Source No.", DocNoFilter);
            PostedWhseShptLine.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Posted Whse. Shipment Line", 0, PostedWhseShptLine.TableCaption, PostedWhseShptLine.Count);
        end;
    end;

    local procedure FindPostedWhseRcptLine()
    begin
        if PostedWhseRcptLine.ReadPermission then begin
            PostedWhseRcptLine.Reset();
            PostedWhseRcptLine.SetCurrentKey("Posted Source No.", "Posting Date");
            PostedWhseRcptLine.SetFilter("Posted Source No.", DocNoFilter);
            PostedWhseRcptLine.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Posted Whse. Receipt Line", 0, PostedWhseRcptLine.TableCaption, PostedWhseRcptLine.Count);
        end;
    end;

    local procedure FindPstdPhysInvtOrderHdr()
    begin
        if PstdPhysInvtOrderHdr.ReadPermission then begin
            PstdPhysInvtOrderHdr.Reset();
            PstdPhysInvtOrderHdr.SetFilter("No.", DocNoFilter);
            PstdPhysInvtOrderHdr.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Pstd. Phys. Invt. Order Hdr", 0, PstdPhysInvtOrderHdr.TableCaption, PstdPhysInvtOrderHdr.Count);
        end;
    end;

    local procedure FindTransShptHeader()
    begin
        if TransShptHeader.ReadPermission then begin
            TransShptHeader.Reset();
            TransShptHeader.SetFilter("No.", DocNoFilter);
            TransShptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Transfer Shipment Header", 0, PostedTransferShipmentTxt, TransShptHeader.Count);
        end;
    end;

    local procedure FindTransRcptHeader()
    begin
        if TransRcptHeader.ReadPermission then begin
            TransRcptHeader.Reset();
            TransRcptHeader.SetFilter("No.", DocNoFilter);
            TransRcptHeader.SetFilter("Posting Date", PostingDateFilter);
            InsertIntoDocEntry(Rec, DATABASE::"Transfer Receipt Header", 0, PostedTransferReceiptTxt, TransRcptHeader.Count);
        end;
    end;

    local procedure UpdateFormAfterFindRecords()
    begin
        ShowEnable := DocExists;
        PrintEnable := DocExists;
        CurrPage.Update(false);
        DocExists := Rec.FindFirst;
        if DocExists then;
    end;

    procedure InsertIntoDocEntry(var TempDocumentEntry: Record "Document Entry" temporary; DocTableID: Integer; DocType: option; DocTableName: Text; DocNoOfRecords: Integer)
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

    local procedure NoOfRecords(TableID: Integer): Integer
    begin
        Rec.SetRange("Table ID", TableID);
        if not Rec.FindFirst then
            Rec.Init;
        Rec.SetRange("Table ID");
        exit(Rec."No. of Records");
    end;

    local procedure ShowRecords()
    begin
        if ItemTrackingSearch then
            ItemTrackingNavigateMgt.Show(Rec."Table ID")
        else
            case Rec."Table ID" of
                DATABASE::"Sales Header":
                    ShowSalesHeaderRecords;
                DATABASE::"Sales Invoice Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Sales Invoice", SalesInvHeader)
                    else
                        PAGE.Run(0, SalesInvHeader);
                DATABASE::"Sales Cr.Memo Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Sales Credit Memo", SalesCrMemoHeader)
                    else
                        PAGE.Run(0, SalesCrMemoHeader);
                DATABASE::"Return Receipt Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Return Receipt", ReturnRcptHeader)
                    else
                        PAGE.Run(0, ReturnRcptHeader);
                DATABASE::"Sales Shipment Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Sales Shipment", SalesShptHeader)
                    else
                        PAGE.Run(0, SalesShptHeader);
                DATABASE::"Issued Reminder Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Issued Reminder", IssuedReminderHeader)
                    else
                        PAGE.Run(0, IssuedReminderHeader);
                DATABASE::"Issued Fin. Charge Memo Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Issued Finance Charge Memo", IssuedFinChrgMemoHeader)
                    else
                        PAGE.Run(0, IssuedFinChrgMemoHeader);
                DATABASE::"Purch. Inv. Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Purchase Invoice", PurchInvHeader)
                    else
                        PAGE.Run(0, PurchInvHeader);
                DATABASE::"Purch. Cr. Memo Hdr.":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Purchase Credit Memo", PurchCrMemoHeader)
                    else
                        PAGE.Run(0, PurchCrMemoHeader);
                DATABASE::"Return Shipment Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Return Shipment", ReturnShptHeader)
                    else
                        PAGE.Run(0, ReturnShptHeader);
                DATABASE::"Purch. Rcpt. Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Purchase Receipt", PurchRcptHeader)
                    else
                        PAGE.Run(0, PurchRcptHeader);
                DATABASE::"Production Order":
                    PAGE.Run(0, ProductionOrderHeader);
                DATABASE::"Posted Assembly Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Assembly Order", PostedAssemblyHeader)
                    else
                        PAGE.Run(0, PostedAssemblyHeader);
                DATABASE::"Transfer Shipment Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Transfer Shipment", TransShptHeader)
                    else
                        PAGE.Run(0, TransShptHeader);
                DATABASE::"Transfer Receipt Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Transfer Receipt", TransRcptHeader)
                    else
                        PAGE.Run(0, TransRcptHeader);
                DATABASE::"Posted Whse. Shipment Line":
                    PAGE.Run(0, PostedWhseShptLine);
                DATABASE::"Posted Whse. Receipt Line":
                    PAGE.Run(0, PostedWhseRcptLine);
                DATABASE::"G/L Entry":
                    PAGE.Run(0, GLEntry);
                DATABASE::"VAT Entry":
                    PAGE.Run(0, VATEntry);
                DATABASE::"Detailed Cust. Ledg. Entry":
                    PAGE.Run(0, DtldCustLedgEntry);
                DATABASE::"Cust. Ledger Entry":
                    PAGE.Run(0, CustLedgEntry);
                DATABASE::"Reminder/Fin. Charge Entry":
                    PAGE.Run(0, ReminderEntry);
                DATABASE::"Vendor Ledger Entry":
                    PAGE.Run(0, VendLedgEntry);
                DATABASE::"Detailed Vendor Ledg. Entry":
                    PAGE.Run(0, DtldVendLedgEntry);
                DATABASE::"Item Ledger Entry":
                    PAGE.Run(0, ItemLedgEntry);
                DATABASE::"Value Entry":
                    PAGE.Run(0, ValueEntry);
                DATABASE::"Phys. Inventory Ledger Entry":
                    PAGE.Run(0, PhysInvtLedgEntry);
                DATABASE::"Res. Ledger Entry":
                    PAGE.Run(0, ResLedgEntry);
                DATABASE::"Job Ledger Entry":
                    PAGE.Run(0, JobLedgEntry);
                DATABASE::"Job WIP Entry":
                    PAGE.Run(0, JobWIPEntry);
                DATABASE::"Job WIP G/L Entry":
                    PAGE.Run(0, JobWIPGLEntry);
                DATABASE::"Bank Account Ledger Entry":
                    PAGE.Run(0, BankAccLedgEntry);
                DATABASE::"Check Ledger Entry":
                    PAGE.Run(0, CheckLedgEntry);
                DATABASE::"FA Ledger Entry":
                    PAGE.Run(0, FALedgEntry);
                DATABASE::"Maintenance Ledger Entry":
                    PAGE.Run(0, MaintenanceLedgEntry);
                DATABASE::"Ins. Coverage Ledger Entry":
                    PAGE.Run(0, InsuranceCovLedgEntry);
                DATABASE::"Capacity Ledger Entry":
                    PAGE.Run(0, CapacityLedgEntry);
                DATABASE::"Warehouse Entry":
                    PAGE.Run(0, WhseEntry);
                DATABASE::"Service Header":
                    ShowServiceHeaderRecords;
                DATABASE::"Service Invoice Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Service Invoice", ServInvHeader)
                    else
                        PAGE.Run(0, ServInvHeader);
                DATABASE::"Service Cr.Memo Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Service Credit Memo", ServCrMemoHeader)
                    else
                        PAGE.Run(0, ServCrMemoHeader);
                DATABASE::"Service Shipment Header":
                    if Rec."No. of Records" = 1 then
                        PAGE.Run(PAGE::"Posted Service Shipment", ServShptHeader)
                    else
                        PAGE.Run(0, ServShptHeader);
                DATABASE::"Service Ledger Entry":
                    PAGE.Run(0, ServLedgerEntry);
                DATABASE::"Warranty Ledger Entry":
                    PAGE.Run(0, WarrantyLedgerEntry);
                DATABASE::"Cost Entry":
                    PAGE.Run(0, CostEntry);
            end;
    end;

    local procedure ShowSalesHeaderRecords()
    begin
        Rec.TestField("Table ID", DATABASE::"Sales Header");

        case Rec."Document Type" of
            Rec."Document Type"::Order:
                if Rec."No. of Records" = 1 then
                    PAGE.Run(PAGE::"Sales Order", SOSalesHeader)
                else
                    PAGE.Run(0, SOSalesHeader);
            Rec."Document Type"::Invoice:
                if Rec."No. of Records" = 1 then
                    PAGE.Run(PAGE::"Sales Invoice", SISalesHeader)
                else
                    PAGE.Run(0, SISalesHeader);
            Rec."Document Type"::"Return Order":
                if Rec."No. of Records" = 1 then
                    PAGE.Run(PAGE::"Sales Return Order", SROSalesHeader)
                else
                    PAGE.Run(0, SROSalesHeader);
            Rec."Document Type"::"Credit Memo":
                if Rec."No. of Records" = 1 then
                    PAGE.Run(PAGE::"Sales Credit Memo", SCMSalesHeader)
                else
                    PAGE.Run(0, SCMSalesHeader);
        end;
    end;

    local procedure ShowServiceHeaderRecords()
    begin
        Rec.TestField("Table ID", DATABASE::"Service Header");

        case Rec."Document Type" of
            Rec."Document Type"::Order:
                if Rec."No. of Records" = 1 then
                    PAGE.Run(PAGE::"Service Order", SOServHeader)
                else
                    PAGE.Run(0, SOServHeader);
            Rec."Document Type"::Invoice:
                if Rec."No. of Records" = 1 then
                    PAGE.Run(PAGE::"Service Invoice", SIServHeader)
                else
                    PAGE.Run(0, SIServHeader);
            Rec."Document Type"::"Credit Memo":
                if Rec."No. of Records" = 1 then
                    PAGE.Run(PAGE::"Service Credit Memo", SCMServHeader)
                else
                    PAGE.Run(0, SCMServHeader);
        end;
    end;

    local procedure SetPostingDate(PostingDate: Text[250])
    begin
        if MakeDateFilter(PostingDate) = 0 then;
        Rec.SetFilter("Posting Date", PostingDate);
        PostingDateFilter := Rec.GetFilter("Posting Date");
    end;

    local procedure SetDocNo(DocNo: Text[250])
    begin
        Rec.SetFilter("Document No.", DocNo);
        DocNoFilter := Rec.GetFilter("Document No.");
        PostingDateFilter := Rec.GetFilter("Posting Date");
    end;

    local procedure ClearSourceInfo()
    begin
        if DocExists then begin
            DocExists := false;
            Rec.DeleteAll;
            DeleteAllBuffer;
            ShowEnable := false;
            SetSource(0D, '', '', 0, '');
            CurrPage.Update(false);
        end;
    end;

    local procedure MakeExtFilter(var DateFilter: Text; AddDate: Date; var DocNoFilter: Text; AddDocNo: Code[20])
    begin
        if DateFilter = '' then
            DateFilter := Format(AddDate)
        else
            if StrPos(DateFilter, Format(AddDate)) = 0 then
                if MaxStrLen(DateFilter) >= StrLen(DateFilter + '|' + Format(AddDate)) then
                    DateFilter := DateFilter + '|' + Format(AddDate)
                else
                    TooLongFilter;

        if DocNoFilter = '' then
            DocNoFilter := AddDocNo
        else
            if StrPos(DocNoFilter, AddDocNo) = 0 then
                if MaxStrLen(DocNoFilter) >= StrLen(DocNoFilter + '|' + AddDocNo) then
                    DocNoFilter := DocNoFilter + '|' + AddDocNo
                else
                    TooLongFilter;
    end;

    local procedure FindPush()
    begin
        if (DocNoFilter = '') and (PostingDateFilter = '') and
           (not ItemTrackingSearch) and
           ((ContactType.AsInteger() <> 0) or (ContactNo <> '') or (ExtDocNo <> ''))
        then
            FindExtRecords
        else
            if ItemTrackingSearch and
               (DocNoFilter = '') and (PostingDateFilter = '') and
               (ContactType.AsInteger() = 0) and (ContactNo = '') and (ExtDocNo = '')
            then
                FindTrackingRecords
            else
                FindRecords;
    end;

    local procedure TooLongFilter()
    begin
        if ContactNo = '' then
            Error(Text015);

        Error(Text016);
    end;

    local procedure FindUnpostedSalesDocs(DocType: Enum "Sales Document Type"; DocTableName: Text[100]; var SalesHeader: Record "Sales Header")
    begin
        SalesHeader."SecurityFiltering"(SECURITYFILTER::Filtered);
        if SalesHeader.ReadPermission then begin
            SalesHeader.Reset();
            SalesHeader.SetCurrentKey("Sell-to Customer No.", "External Document No.");
            SalesHeader.SetFilter("Sell-to Customer No.", ContactNo);
            SalesHeader.SetFilter("External Document No.", ExtDocNo);
            SalesHeader.SetRange("Document Type", DocType);
            InsertIntoDocEntry(Rec, DATABASE::"Sales Header", DocType, DocTableName, SalesHeader.Count);
        end;
    end;

    local procedure FindUnpostedServDocs(DocType: Enum "Sales Document Type"; DocTableName: Text[100]; var ServHeader: Record "Service Header")
    begin
        ServHeader."SecurityFiltering"(SECURITYFILTER::Filtered);
        if ServHeader.ReadPermission then
            if ExtDocNo = '' then begin
                ServHeader.Reset();
                ServHeader.SetCurrentKey("Customer No.");
                ServHeader.SetFilter("Customer No.", ContactNo);
                ServHeader.SetRange("Document Type", DocType);
                InsertIntoDocEntry(Rec, DATABASE::"Service Header", DocType, DocTableName, ServHeader.Count);
            end;
    end;

    local procedure FindTrackingRecords()
    var
        DocNoOfRecords: Integer;
    begin
        Window.Open(Text002);
        Rec.DeleteAll();
        Rec."Entry No." := 0;

        Clear(ItemTrackingNavigateMgt);
        ItemTrackingNavigateMgt.FindTrackingRecords(SerialNoFilter, LotNoFilter, '', '');

        ItemTrackingNavigateMgt.Collect(TempRecordBuffer);
        TempRecordBuffer.SetCurrentKey("Table No.", "Record Identifier");
        if TempRecordBuffer.Find('-') then
            repeat
                TempRecordBuffer.SetRange("Table No.", TempRecordBuffer."Table No.");

                DocNoOfRecords := 0;
                if TempRecordBuffer.Find('-') then
                    repeat
                        TempRecordBuffer.SetRange("Record Identifier", TempRecordBuffer."Record Identifier");
                        TempRecordBuffer.Find('+');
                        TempRecordBuffer.SetRange("Record Identifier");
                        DocNoOfRecords += 1;
                    until TempRecordBuffer.Next = 0;

                InsertIntoDocEntry(Rec, TempRecordBuffer."Table No.", 0, TempRecordBuffer."Table Name", DocNoOfRecords);

                TempRecordBuffer.SetRange("Table No.");
            until TempRecordBuffer.Next = 0;

        OnAfterNavigateFindTrackingRecords(Rec, SerialNoFilter, LotNoFilter);

        DocExists := Rec.Find('-');

        UpdateFormAfterFindRecords;
        Window.Close;
    end;

    procedure SetTracking(SerialNo: Code[20]; LotNo: Code[20])
    begin
        NewSerialNo := SerialNo;
        NewLotNo := LotNo;
    end;

    procedure ItemTrackingSearch(): Boolean
    begin
        exit((SerialNoFilter <> '') or (LotNoFilter <> ''));
    end;

    procedure ClearTrackingInfo()
    begin
        SerialNoFilter := '';
        LotNoFilter := '';
    end;

    procedure ClearInfo()
    begin
        SetDocNo('');
        SetPostingDate('');
        ContactType := ContactType::" ";
        ContactNo := '';
        ExtDocNo := '';
    end;

    local procedure DocNoFilterOnAfterValidate()
    begin
        ClearSourceInfo;
    end;

    local procedure PostingDateFilterOnAfterValida()
    begin
        ClearSourceInfo;
    end;

    local procedure ExtDocNoOnAfterValidate()
    begin
        ClearSourceInfo;
    end;

    local procedure ContactTypeOnAfterValidate()
    begin
        ClearSourceInfo;
    end;

    local procedure ContactNoOnAfterValidate()
    begin
        ClearSourceInfo;
    end;

    local procedure SerialNoFilterOnAfterValidate()
    begin
        ClearSourceInfo;
    end;

    local procedure LotNoFilterOnAfterValidate()
    begin
        ClearSourceInfo;
    end;

    procedure FindRecordsOnOpen()
    begin
        if (NewDocNo = '') and (NewPostingDate = 0D) and (NewSerialNo = '') and (NewLotNo = '') then begin
            Rec.DeleteAll;
            ShowEnable := false;
            PrintEnable := false;
            SetSource(0D, '', '', 0, '');
        end else
            if (NewSerialNo <> '') or (NewLotNo <> '') then begin
                SetSource(0D, '', '', 0, '');
                Rec.SetRange("Serial No. Filter", NewSerialNo);
                Rec.SetRange("Lot No. Filter", NewLotNo);
                SerialNoFilter := Rec.GetFilter("Serial No. Filter");
                LotNoFilter := Rec.GetFilter("Lot No. Filter");
                ClearInfo;
                FindTrackingRecords;
            end else begin
                Rec.SetRange("Document No.", NewDocNo);
                Rec.SetRange("Posting Date", NewPostingDate);
                DocNoFilter := Rec.GetFilter("Document No.");
                PostingDateFilter := Rec.GetFilter("Posting Date");
                ContactType := ContactType::" ";
                ContactNo := '';
                ExtDocNo := '';
                ClearTrackingInfo;
                FindRecords;
            end;
    end;

    procedure UpdateNavigateForm(UpdateFormFrom: Boolean)
    begin
        UpdateForm := UpdateFormFrom;
    end;

    procedure GlEntryWithDimensions(var GLEntry: Record "G/L Entry"): Boolean
    var
        GlEntry2: Record "G/L Entry";
    begin
        GlEntry2.CopyFilters(GLEntry);
        if GlEntry2.FindFirst then
            repeat
                if GlEntry2."Dimension Set ID" <> 0 then
                    exit(true);
            until GlEntry2.Next = 0;
        exit(false);
    end;

    // procedure MovCoGeHasMoreTransaction(var rGLEntry: Record "G/L Entry"): Boolean
    // var
    //     lGLEntry2: Record "G/L Entry";
    //     Transazioni: Record "G/L Account" temporary;
    //     txtTrans: Text[1000];
    //     iQutaT: Integer;
    //     FinalMsg: Text[1000];
    // begin
    //     Transazioni.Reset;
    //     if Transazioni.FindFirst then Transazioni.DeleteAll;
    //     lGLEntry2.CopyFilters(rGLEntry);
    //     if lGLEntry2.FindFirst then begin
    //         repeat
    //             if not Transazioni.Get(Format(lGLEntry2."Transaction No.")) then begin
    //                 Transazioni.Init;
    //                 Transazioni."No." := Format(lGLEntry2."Transaction No.");
    //                 Transazioni.Insert;
    //             end;
    //         until lGLEntry2.Next = 0;
    //     end;

    //     iQutaT := 0;
    //     if Transazioni.FindFirst then begin
    //         //txtTrans
    //         repeat
    //             iQutaT += 1;
    //             if iQutaT > 1 then
    //                 txtTrans += ';';
    //             txtTrans += Transazioni."No.";
    //         until Transazioni.Next = 0;

    //         if (iQutaT > 1) then begin
    //             if StrLen(Err000022) + StrLen(txtTrans) > 250 then begin
    //                 FinalMsg := CopyStr(StrSubstNo(Err000022, txtTrans), 1, 250);
    //             end else begin
    //                 FinalMsg := StrSubstNo(Err000022, txtTrans);
    //             end;

    //             Error(FinalMsg);
    //         end;
    //     end;
    // end;

    // procedure MovClientiHasMoreTransaction(var CustLedgerEntry: Record "Cust. Ledger Entry")
    // var
    //     Transazioni: Record "G/L Account" temporary;
    //     txtTrans: Text[1000];
    //     iQutaT: Integer;
    //     FinalMsg: Text[1000];
    //     CustLedgerEntry2: Record "Cust. Ledger Entry";
    // begin
    //     Transazioni.Reset;
    //     if Transazioni.FindFirst then Transazioni.DeleteAll;
    //     CustLedgerEntry2.CopyFilters(CustLedgerEntry);
    //     if CustLedgerEntry2.FindFirst then begin
    //         repeat
    //             if not Transazioni.Get(Format(CustLedgerEntry2."Transaction No.")) then begin
    //                 Transazioni.Init;
    //                 Transazioni."No." := Format(CustLedgerEntry2."Transaction No.");
    //                 Transazioni.Insert;
    //             end;
    //         until CustLedgerEntry2.Next = 0;
    //     end;

    //     iQutaT := 0;
    //     if Transazioni.FindFirst then begin
    //         //txtTrans
    //         repeat
    //             iQutaT += 1;
    //             if iQutaT > 1 then
    //                 txtTrans += ';';
    //             txtTrans += Transazioni."No.";
    //         until Transazioni.Next = 0;

    //         if (iQutaT > 1) then begin
    //             if StrLen(Err000022) + StrLen(txtTrans) > 250 then begin
    //                 FinalMsg := CopyStr(StrSubstNo(Err000022, txtTrans), 1, 250);
    //             end else begin
    //                 FinalMsg := StrSubstNo(Err000022, txtTrans);
    //             end;

    //             Error(FinalMsg);
    //         end;
    //     end;
    // end;

    // procedure MovFornitoreHasMoreTransaction(var VendorLedgerEntry: Record "Vendor Ledger Entry")
    // var
    //     Transazioni: Record "G/L Account" temporary;
    //     txtTrans: Text[1000];
    //     iQutaT: Integer;
    //     FinalMsg: Text[1000];
    //     VendorLedgerEntry2: Record "Vendor Ledger Entry";
    // begin
    //     Transazioni.Reset;
    //     if Transazioni.FindFirst then Transazioni.DeleteAll;
    //     VendorLedgerEntry2.CopyFilters(VendorLedgerEntry);
    //     if VendorLedgerEntry2.FindFirst then begin
    //         repeat
    //             if not Transazioni.Get(Format(VendorLedgerEntry2."Transaction No.")) then begin
    //                 Transazioni.Init;
    //                 Transazioni."No." := Format(VendorLedgerEntry2."Transaction No.");
    //                 Transazioni.Insert;
    //             end;
    //         until VendorLedgerEntry2.Next = 0;
    //     end;

    //     iQutaT := 0;
    //     if Transazioni.FindFirst then begin
    //         //txtTrans
    //         repeat
    //             iQutaT += 1;
    //             if iQutaT > 1 then
    //                 txtTrans += ';';
    //             txtTrans += Transazioni."No.";
    //         until Transazioni.Next = 0;

    //         if (iQutaT > 1) then begin
    //             if StrLen(Err000022) + StrLen(txtTrans) > 250 then begin
    //                 FinalMsg := CopyStr(StrSubstNo(Err000022, txtTrans), 1, 250);
    //             end else begin
    //                 FinalMsg := StrSubstNo(Err000022, txtTrans);
    //             end;

    //             Error(FinalMsg);
    //         end;
    //     end;
    // end;

    procedure DeleteDocument()
    var
        lSalesShipmentLine: Record "Sales Shipment Line";
        PostPurchLinesDelete: Codeunit "PostPurch-Delete";
        PurchCommentLine: Record "Purch. Comment Line";
        PostSalesLinesDelete: Codeunit "PostSales-Delete";
        SalesCommentLine: Record "Sales Comment Line";
        ReturnReceiptLine: Record "Return Receipt Line";
        PurchRcptLine: Record "Purch. Rcpt. Line";
        ReturnShipmentLine: Record "Return Shipment Line";
        lSalesHeader: Record "Sales Header";
        lSalesCrMemH: Record "Sales Cr.Memo Header";
        lPurchaseHeader: Record "Purchase Header";
        lSalesInvH: Record "Sales Invoice Header";
        lPurchInvH: Record "Purch. Inv. Header";
        lPurchCrMemH: Record "Purch. Cr. Memo Hdr.";
        MsgDoc: Text[1000];
        CurrStr: Text[1000];
        Selection: Integer;
        DatPostingDate: Date;
        // OperationOccDat: Date;
        PostingDat: Date;
        DocumentDat: Date;
        CurrDocumento: Code[20];
        BusinessIvaOriginale: Code[20];
        lrNoSeries: Record "No. Series";
        "--------": Integer;
        //AX-s
        lCrMemo: Boolean;
        lGLE: Record "G/L Entry";
        lGJL: Record "Gen. Journal Line";
        lNewGJL: Record "Gen. Journal Line";
        //AX-e
        lSalesInvLine: Record "Sales Invoice Line";
        lPurchInvLine: Record "Purch. Inv. Line";
        lSalesCrMemoLine: Record "Sales Cr.Memo Line";
        lPurchCrMemoLine: Record "Purch. Cr. Memo Line";
        lAcquisti: Boolean;
        lVendite: Boolean;
        lVATEntry: Record "VAT Entry";
        DocNoRevChargeSales: Code[20];
        iLogNo: Integer;
        Tableid: Integer;
    begin
        Rec.Reset;
        if not Rec.FindFirst then
            Error(Wrng00008);

        if not Confirm(Wrng00004) then
            exit;


        // SetFilter("Table ID", '%1|%2|%3|%4', 110, 113, 6650, 114);  //da capire    (110/120/6650/6660)
        // if FindFirst then
        //     Error('%1', MERR0002);
        Rec.Reset;

        // Cerca la data Operation Occured Date
        CurrDocumento := '';
        PostingDat := 0D;
        DocumentDat := 0D;
        BusinessIvaOriginale := '';
        Rec.Reset;
        //AX-d SetFilter("Table ID", '%1|%2|%3|%4', 112, 114, 122, 124);
        Rec.SetFilter("Table ID", '%1|%2|%3|%4|%5', 112, 114, 122, 124, 17); //AX-n
        if Rec.FindFirst then begin
            repeat
                case Rec."Table ID" of
                    //AX-s
                    17:
                        begin
                            if gEntryNo <> 0 then
                                if lGLE.Get(gEntryNo) then begin
                                    PostingDat := lGLE."Posting Date";
                                    DocumentDat := lGLE."Document Date";
                                    Tableid := 17;
                                end;
                        end;
                    //AX-e
                    112:
                        begin
                            if lSalesInvH.Get(DocNoFilter) then begin
                                PostingDat := lSalesInvH."Posting Date";
                                DocumentDat := lSalesInvH."Document Date";
                                TableId := 112;
                            end;
                        end;
                    114:
                        begin
                            if lSalesCrMemH.Get(DocNoFilter) then begin
                                PostingDat := lSalesCrMemH."Posting Date";
                                DocumentDat := lSalesCrMemH."Document Date";
                                lCrMemo := true; //AX-n
                                TableId := 114;
                            end;
                        end;
                    122:
                        begin
                            if lPurchInvH.Get(DocNoFilter) then begin
                                PostingDat := lPurchInvH."Posting Date";
                                DocumentDat := lPurchInvH."Document Date";
                                BusinessIvaOriginale := lPurchInvH."VAT Bus. Posting Group";
                                TableId := 122;
                            end;
                        end;
                    124:
                        begin
                            if lPurchCrMemH.Get(DocNoFilter) then begin
                                PostingDat := lPurchCrMemH."Posting Date";
                                DocumentDat := lPurchCrMemH."Document Date";
                                BusinessIvaOriginale := lPurchCrMemH."VAT Bus. Posting Group";
                                lCrMemo := true; //AX-n
                                TableId := 124;
                            end;
                        end;
                end;
            until (Rec.Next = 0);

            if (PostingDat = 0D) then Error('La data registrazione non è identificabile. Il documento non può essere creato.');
            if (DocumentDat = 0D) then DocumentDat := PostingDat;
        end;


        // VP230315 - Memorizza Nr. Protocollo di vendita Rev. Charge dell'evventuale acquisto CEE
        DocNoRevChargeSales := '';
        lVATEntry.Reset;
        lVATEntry.SetRange("Document No.", DocNoFilter);
        lVATEntry.SetRange("Posting Date", PostingDat);
        if lVATEntry.FindFirst then begin
            if (lVATEntry.Type = lVATEntry.Type::Purchase) then begin
                lVATEntry.SetRange("Transaction No.", lVATEntry."Transaction No.");
                lVATEntry.SetRange(Type, lVATEntry.Type::Sale);
                lVATEntry.SetRange("Document No.");
                if lVATEntry.FindFirst then begin
                    TransactionFilter := lVATEntry."Transaction No.";
                    DocNoRevChargeSales := lVATEntry."Document No.";
                end;
            end;
        end;
        // VP230315

        // Crea i documenti provvisori che prenderanno i buchi nelle numerazioni ...
        if TmpNumerazioni.FindSet then begin
            // Solo se le numerazione Acquisti e vendita hanno prodotto documenti ..
            Rec.Reset;
            //AX-d SetFilter("Table ID", '%1|%2|%3|%4', 112, 114, 122, 124);
            Rec.SetFilter("Table ID", '%1|%2|%3|%4|%5', 112, 114, 122, 124, 17); //AX-n
            if Rec.FindFirst then begin
                // repeat
                //     Selection := StrMenu(M04, 1, M03);
                //     if Selection = 0 then begin
                //         Error(MERR0001);
                //     end;
                // until Selection in [1, 2];
                repeat
                    //AX-s
                    if Rec."Table ID" = 17 then
                        if gEntryNo <> 0 then begin
                            lNewGJL.Init();
                            lGJL.Reset();
                            lGJL.SetFilter("Journal Template Name", 'GENERAL*');
                            lGJL.SetFilter("Journal Batch Name", 'GENERAL*');
                            if lGJL.FindLast() then
                                lNewGJL."Line No." := lGJL."Line No." + 10000;
                            lNewGJL."Journal Template Name" := lGJL."Journal Batch Name";
                            lNewGJL."Journal Batch Name" := lGJL."Journal Batch Name";
                            if lNewGJL."Line No." = 0 then
                                lNewGJL."Line No." := 10000;
                            lNewGJL."Posting Date" := lGLE."Posting Date";
                            lNewGJL."Document Date" := lGLE."Document Date";
                            lNewGJL."Document No." := lGLE."Document No.";
                            lNewGJL."System Created" := true;
                            lNewGJL.Insert();
                            MsgDoc := lNewGJL."Document No.";
                        end;
                    //AX-e
                    if (Rec."Table ID" = 112) or (Rec."Table ID" = 114) then begin
                        // if Selection = 1 then begin
                        lSalesHeader.Init;
                        lSalesHeader."Document Type" := lSalesHeader."Document Type"::Invoice;
                        //AX-s
                        if lCrMemo then
                            lSalesHeader."Document Type" := lSalesHeader."Document Type"::"Credit Memo";
                        //AX-e
                        lSalesHeader."No." := '';
                        lSalesHeader."Posting Date" := PostingDat;
                        //lSalesHeader."Operation Occurred Date" := OperationOccDat;
                        lSalesHeader."Document Date" := DocumentDat;
                        lSalesHeader.Insert(true);
                        //lSalesHeader.Validate("Operation Type", TmpNumerazioni.Code);
                        lSalesHeader."Posting No." := DocNoFilter;
                        lSalesHeader."Posting Date" := PostingDat;
                        // lSalesHeader."Operation Occurred Date" := OperationOccDat;
                        lSalesHeader."Document Date" := DocumentDat;
                        MsgDoc := lSalesHeader."No."; //AX-e
                        lSalesHeader.Modify;
                        // end;
                        // if Selection = 2 then begin
                        //     lSalesHeader.Init;
                        //     lSalesHeader."Document Type" := lSalesHeader."Document Type"::"Credit Memo";
                        //     lSalesHeader."No." := '';
                        //     lSalesHeader."Posting Date" := PostingDat;
                        //     lSalesHeader."Operation Occurred Date" := OperationOccDat;
                        //     lSalesHeader."Document Date" := DocumentDat;
                        //     lSalesHeader.Insert(true);
                        //     lSalesHeader.Validate("Operation Type", TmpNumerazioni.Code);
                        //     lSalesHeader."Posting No." := DocNoFilter;
                        //     lSalesHeader."Posting Date" := PostingDat;
                        //     lSalesHeader."Operation Occurred Date" := OperationOccDat;
                        //     lSalesHeader."Document Date" := DocumentDat;
                        //     lSalesHeader.Modify;
                        // end;
                    end;
                    if (Rec."Table ID" = 122) or (Rec."Table ID" = 124) then begin
                        // if Selection = 1 then begin
                        lPurchaseHeader.Init;
                        lPurchaseHeader."Document Type" := lPurchaseHeader."Document Type"::Invoice;
                        //AX-s
                        if lCrMemo then
                            lPurchaseHeader."Document Type" := lPurchaseHeader."Document Type"::"Credit Memo";
                        //AX-e
                        lPurchaseHeader."No." := '';
                        lPurchaseHeader."Posting Date" := PostingDat;
                        //    lPurchaseHeader."Operation Occurred Date" := OperationOccDat;
                        lPurchaseHeader."Document Date" := DocumentDat;
                        lPurchaseHeader.Insert(true);
                        //  lPurchaseHeader.Validate("Operation Type", TmpNumerazioni.Code);
                        lPurchaseHeader."Posting No." := DocNoFilter;
                        lPurchaseHeader."Posting Date" := PostingDat;
                        //lPurchaseHeader."Operation Occurred Date" := OperationOccDat;
                        lPurchaseHeader."Document Date" := DocumentDat;
                        if DocNoRevChargeSales <> '' then
                            //      lPurchaseHeader."Reverse Sales VAT No." := DocNoRevChargeSales;
                            // if BusinessIvaOriginale <> '' then
                            //     lPurchaseHeader.Validate("VAT Bus. Posting Group", BusinessIvaOriginale);

                            lrNoSeries.Get(TmpNumerazioni.Code);
                        //? if (lrNoSeries."Reverse Sales VAT No. Series" <> '') then begin
                        //lPurchaseHeader."Reverse Charge Post. No." := DocNoFilter;
                        //end;
                        MsgDoc := lPurchaseHeader."No."; //AX-e
                        lPurchaseHeader.Modify;
                        // end;
                        // if Selection = 2 then begin
                        //     lPurchaseHeader.Init;
                        //     lPurchaseHeader."Document Type" := lPurchaseHeader."Document Type"::"Credit Memo";
                        //     lPurchaseHeader."No." := '';
                        //     lPurchaseHeader."Posting Date" := PostingDat;
                        //     lPurchaseHeader."Operation Occurred Date" := OperationOccDat;
                        //     lPurchaseHeader."Document Date" := DocumentDat;
                        //     lPurchaseHeader.Insert(true);
                        //     lPurchaseHeader.Validate("Operation Type", TmpNumerazioni.Code);
                        //     lPurchaseHeader."Posting No." := DocNoFilter;
                        //     lPurchaseHeader."Posting Date" := PostingDat;
                        //     lPurchaseHeader."Operation Occurred Date" := OperationOccDat;
                        //     lPurchaseHeader."Document Date" := DocumentDat;
                        //     if BusinessIvaOriginale <> '' then
                        //         lPurchaseHeader.Validate("VAT Bus. Posting Group", BusinessIvaOriginale);
                        //     lPurchaseHeader.Modify;
                        // end;
                    end;
                until TmpNumerazioni.Next = 0;
            end;
        end;

        // LOG
        lAcquisti := false;
        lVendite := false;
        lVATEntry.Reset;
        lVATEntry.SetRange("Posting Date", PostingDat);
        lVATEntry.SetRange("Document No.", DocNoFilter);
        if TransactionFilter <> 0 then
            lVATEntry.SetRange("Transaction No.", TransactionFilter);
        if lVATEntry.FindFirst then begin
            if (lVATEntry.Type = lVATEntry.Type::Purchase) then lAcquisti := true;
            if (lVATEntry.Type = lVATEntry.Type::Sale) then lVendite := true;
        end;

        //Document Entry
        Rec.Reset;
        if Rec.FindFirst then begin
            repeat
                if Rec."Table ID" = 110 then begin                                           // Testata spedizione vendita
                    SalesShptHeader.Reset;
                    SalesShptHeader.SetRange("No.", DocNoFilter);
                    if SalesShptHeader.FindFirst then begin
                        repeat
                            lSalesShipmentLine.Reset;
                            lSalesShipmentLine.SetRange("Document No.", SalesShptHeader."No.");
                            //OT-dIF lSalesShipmentLine.FINDFIRST THEN
                            //OT-drSalesShipmentLine.DELETEALL;
                            //OT-s
                            if lSalesShipmentLine.FindSet then
                                repeat
                                    if lSalesShipmentLine.Type = lSalesShipmentLine.Type::Item then
                                        Error(Err000025)
                                    else
                                        if lSalesShipmentLine.Type = lSalesShipmentLine.Type::"Fixed Asset" then
                                            Error(Err000026)
                                        else
                                            lSalesShipmentLine.Delete;
                                until lSalesShipmentLine.Next = 0;
                        //OT-e
                        until SalesShptHeader.Next = 0; // anche se non si può eliminare piu di 1 documento a volta
                    end;
                    SalesShptHeader.DeleteAll(true);
                end;
                if Rec."Table ID" = 6660 then begin                                          // Testata Carico da reso
                    ReturnRcptHeader.Reset;
                    ReturnRcptHeader.SetRange("No.", DocNoFilter);
                    ReturnRcptHeader.SetRange("Posting Date", PostingDat);
                    if ReturnRcptHeader.FindFirst then
                        repeat
                            ReturnReceiptLine.SetRange("Document No.", ReturnRcptHeader."No.");
                            //OT-dIF ReturnReceiptLine.FINDFIRST THEN
                            //OT-d  ReturnReceiptLine.DELETEALL;
                            //OT-s
                            if ReturnReceiptLine.FindSet then
                                repeat
                                    if ReturnReceiptLine.Type = ReturnReceiptLine.Type::Item then
                                        Error(Err000025)
                                    else
                                        if ReturnReceiptLine.Type = ReturnReceiptLine.Type::"Fixed Asset" then
                                            Error(Err000026)
                                        else
                                            ReturnReceiptLine.Delete;
                                until ReturnReceiptLine.Next = 0;
                        //OT-e
                        until ReturnRcptHeader.Next = 0;
                    ReturnRcptHeader.DeleteAll(true);
                end;
                if Rec."Table ID" = 120 then begin                                         // Testata carico acquisto
                    PurchRcptHeader.Reset;
                    PurchRcptHeader.SetRange("No.", DocNoFilter);
                    PurchRcptHeader.SetRange("Posting Date", PostingDat);
                    if PurchRcptHeader.FindFirst then
                        repeat
                            PurchRcptLine.Reset;
                            PurchRcptLine.SetRange("Document No.", PurchRcptHeader."No.");
                            //OT-dIF PurchRcptLine.FINDFIRST THEN
                            //OT-d  PurchRcptLine.DELETEALL(TRUE);
                            //OT-s
                            if PurchRcptLine.FindSet then
                                repeat
                                    if PurchRcptLine.Type = PurchRcptLine.Type::Item then
                                        Error(Err000025)
                                    else
                                        if PurchRcptLine.Type = PurchRcptLine.Type::"Fixed Asset" then
                                            Error(Err000026)
                                        else
                                            PurchRcptLine.Delete;
                                until PurchRcptLine.Next = 0;
                        //OT-e
                        until PurchRcptHeader.Next = 0;
                    PurchRcptHeader.DeleteAll(true);
                end;

                if Rec."Table ID" = 6650 then begin                                          // Testata spediz. per resi
                    ReturnShptHeader.Reset;
                    ReturnShptHeader.SetRange("No.", DocNoFilter);
                    ReturnShptHeader.SetRange("Posting Date", PostingDat);
                    if ReturnShptHeader.FindFirst then begin
                        repeat
                            ReturnShipmentLine.Reset;
                            ReturnShipmentLine.SetRange("Document No.", ReturnShptHeader."No.");
                            //OT-dIF ReturnShipmentLine.FINDFIRST THEN
                            //OT-d  ReturnShipmentLine.DELETEALL;
                            //OT-s
                            if ReturnShipmentLine.FindSet then
                                repeat
                                    if ReturnShipmentLine.Type = ReturnShipmentLine.Type::Item then
                                        Error(Err000025)
                                    else
                                        if ReturnShipmentLine.Type = ReturnShipmentLine.Type::"Fixed Asset" then
                                            Error(Err000026)
                                        else
                                            ReturnShipmentLine.Delete;
                                until ReturnShipmentLine.Next = 0;
                        //OT-e
                        until ReturnShptHeader.Next = 0;
                        ReturnShptHeader.DeleteAll(true);
                    end;
                end;

                if Rec."Table ID" = 112 then                          // Testata Fattura Vendite
                  begin
                    SalesInvHeader.Reset;
                    SalesInvHeader.SetFilter("No.", DocNoFilter);
                    SalesInvHeader.SetRange("Posting Date", PostingDat);
                    if SalesInvHeader.Find('-') then begin                                             // Testate spedizioni Vendite
                        repeat
                            ;
                            //IF SalesInvHeader."Order No." <> '' THEN
                            //   BEGIN
                            //     RecSpedizioneVendite.RESET;
                            //     RecSpedizioneVendite.SETCURRENTKEY("Order No.");
                            //     RecSpedizioneVendite.SETRANGE("Order No.",SalesInvHeader."Order No.");
                            //     IF RecSpedizioneVendite.FIND ('-') THEN
                            //        BEGIN
                            //          REPEAT;
                            //           RecSpedizioneComodo.RESET;      // Testate Spedizioni Comodo/Virgile
                            //           IF RecSpedizioneComodo.GET(RecSpedizioneVendite."No.")
                            //                                  THEN RecSpedizioneComodo.DELETE;
                            //          UNTIL RecSpedizioneVendite.NEXT =0;
                            //          RecSpedizioneVendite.DELETE(TRUE);
                            //        END;
                            //   END;

                            //OT-s
                            lSalesInvLine.Reset;
                            lSalesInvLine.SetRange("Document No.", SalesInvHeader."No.");
                            if lSalesInvLine.FindSet then
                                repeat
                                    if (lSalesInvLine.Type = lSalesInvLine.Type::Item) then
                                        Error(Err000025);
                                    if (lSalesInvLine.Type = lSalesInvLine.Type::"Fixed Asset") then
                                        Error(Err000026);
                                until lSalesInvLine.Next = 0;
                            //OT-e
                            PostSalesLinesDelete.DeleteSalesInvLines(SalesInvHeader);
                            SalesCommentLine.SetRange("Document Type", SalesCommentLine."Document Type"::"Posted Invoice");
                            SalesCommentLine.SetRange("No.", SalesInvHeader."No.");
                            SalesCommentLine.DeleteAll;
                        //ApprovalsMgt.DeletePostedApprovalEntry(DATABASE::"Sales Invoice Header","No.");
                        until SalesInvHeader.Next = 0;
                        SalesInvHeader.DeleteAll;
                    end;
                end;
                if Rec."Table ID" = 122 then                          // Testata Fattura Acquisti
                    begin
                    PurchInvHeader.Reset;
                    PurchInvHeader.SetFilter("No.", DocNoFilter);
                    PurchInvHeader.SetRange("Posting Date", PostingDat);
                    if PurchInvHeader.Find('-') then begin                                            // Testata Carico Acq.
                        repeat
                            ;
                            //IF PurchInvHeader."Order No." <> '' THEN
                            //   BEGIN
                            //     RecSpedizioneAcquisti.RESET;
                            //     RecSpedizioneAcquisti.SETCURRENTKEY("Order No.");
                            //     RecSpedizioneAcquisti.SETRANGE("Order No.",PurchInvHeader."Order No.");
                            //     IF RecSpedizioneAcquisti.FIND ('-') THEN RecSpedizioneAcquisti.DELETE(TRUE);
                            //   END;
                            //OT-s
                            lPurchInvLine.Reset;
                            lPurchInvLine.SetRange("Document No.", PurchInvHeader."No.");
                            if lPurchInvLine.FindSet then
                                repeat
                                    if (lPurchInvLine.Type = lPurchInvLine.Type::Item) then
                                        Error(Err000025);
                                    if (lPurchInvLine.Type = lPurchInvLine.Type::"Fixed Asset") then
                                        Error(Err000026);
                                until lPurchInvLine.Next = 0;
                            //OT-e
                            PostPurchLinesDelete.DeletePurchInvLines(PurchInvHeader);
                            PurchCommentLine.SetRange("Document Type", PurchCommentLine."Document Type"::"Posted Invoice");
                            PurchCommentLine.SetRange("No.", PurchInvHeader."No.");
                            PurchCommentLine.DeleteAll;

                        //ApprovalsMgt.DeletePostedApprovalEntry(DATABASE::"Purch. Inv. Header","No.");
                        until PurchInvHeader.Next = 0;
                        PurchInvHeader.DeleteAll;
                    end;

                end;

                if Rec."Table ID" = 114 then                          // Testata Nota Credito Cliente
                    begin
                    SalesCrMemoHeader.Reset;
                    SalesCrMemoHeader.SetFilter("No.", DocNoFilter);
                    SalesCrMemoHeader.SetRange("Posting Date", PostingDat);
                    if SalesCrMemoHeader.Find('-') then
                        repeat
                            //OT-s
                            lSalesCrMemoLine.Reset;
                            lSalesCrMemoLine.SetRange("Document No.", SalesCrMemoHeader."No.");
                            if lSalesCrMemoLine.FindSet then
                                repeat
                                    if (lSalesCrMemoLine.Type = lSalesCrMemoLine.Type::Item) then
                                        Error(Err000025);
                                    if (lSalesCrMemoLine.Type = lSalesCrMemoLine.Type::"Fixed Asset") then
                                        Error(Err000026);
                                until lSalesCrMemoLine.Next = 0;
                            //OT-e
                            PostSalesLinesDelete.DeleteSalesCrMemoLines(SalesCrMemoHeader);
                            SalesCommentLine.SetRange("Document Type", SalesCommentLine."Document Type"::"Posted Credit Memo");
                            SalesCommentLine.SetRange("No.", SalesCrMemoHeader."No.");
                            SalesCommentLine.DeleteAll;


                        //ApprovalsMgt.DeletePostedApprovalEntry(DATABASE::"Sales Cr.Memo Header","No.");
                        until SalesCrMemoHeader.Next = 0;
                    SalesCrMemoHeader.DeleteAll;
                end;

                if Rec."Table ID" = 124 then                          // Testata Nota Credito Fornitore
                    begin
                    PurchCrMemoHeader.Reset;
                    PurchCrMemoHeader.SetFilter("No.", DocNoFilter);
                    PurchCrMemoHeader.SetRange("Posting Date", PostingDat);
                    if PurchCrMemoHeader.Find('-') then
                        repeat
                            //OT-s
                            lPurchCrMemoLine.Reset;
                            lPurchCrMemoLine.SetRange("Document No.", PurchCrMemoHeader."No.");
                            if lPurchCrMemoLine.FindSet then
                                repeat
                                    if (lPurchCrMemoLine.Type = lPurchCrMemoLine.Type::Item) then
                                        Error(Err000025);
                                    if (lPurchCrMemoLine.Type = lPurchCrMemoLine.Type::"Fixed Asset") then
                                        Error(Err000026);
                                until lPurchCrMemoLine.Next = 0;
                            //OT-e
                            PostPurchLinesDelete.DeletePurchCrMemoLines(PurchCrMemoHeader);
                            PurchCommentLine.SetRange("Document Type", PurchCommentLine."Document Type"::"Posted Credit Memo");
                            PurchCommentLine.SetRange("No.", PurchCrMemoHeader."No.");
                            PurchCommentLine.DeleteAll;
                        //ApprovalsMgt.DeletePostedApprovalEntry(DATABASE::"Purch. Cr. Memo Hdr.","No.");
                        until PurchCrMemoHeader.Next = 0;
                    PurchCrMemoHeader.DeleteAll;
                end;

                if Rec."Table ID" = 17 then                          // movimenti C/G
                    begin
                    GLEntry.Reset;
                    GLEntry.SetCurrentKey("Document No.", "Posting Date");
                    GLEntry.SetFilter("Document No.", DocNoFilter);
                    GLEntry.SetRange("Posting Date", PostingDat);
                    if TransactionFilter <> 0 then
                        GLEntry.SetRange("Transaction No.", TransactionFilter);
                    if GLEntry.Find('-') then begin
                        GLEntry.DeleteAll;
                    end;
                end;

                if Rec."Table ID" = 254 then                        // Movimenti IVA
                    begin
                    VATEntry.Reset;
                    VATEntry.SetCurrentKey("Document No.", "Posting Date");
                    VATEntry.SetFilter("Document No.", DocNoFilter);
                    VATEntry.SetRange("Posting Date", PostingDat);
                    if TransactionFilter <> 0 then
                        VATEntry.SetRange("Transaction No.", TransactionFilter);
                    if VATEntry.Find('-') then VATEntry.DeleteAll;

                    // VP250315 >>
                    if DocNoRevChargeSales <> '' then begin
                        VATEntry.Reset;
                        VATEntry.SetCurrentKey("Document No.", "Posting Date");
                        VATEntry.SetFilter("Document No.", DocNoRevChargeSales);
                        if TransactionFilter <> 0 then
                            VATEntry.SetRange("Transaction No.", TransactionFilter);
                        if VATEntry.Find('-') then VATEntry.DeleteAll;
                    end;
                    // VP250315 <<
                end;

                if Rec."Table ID" = 12142 then                        // Libro movimenti IVA
                    begin
                    // VATBookEntry.Reset;
                    // VATBookEntry.SetCurrentKey(Rec."Document No.", Rec."Posting Date");
                    // VATBookEntry.SetFilter(Rec."Document No.", DocNoFilter);
                    // VATBookEntry.SetRange(Rec."Posting Date", PostingDat);
                    // if TransactionFilter <> 0 then
                    //     VATBookEntry.SetRange("Transaction No.", TransactionFilter);
                    // if VATBookEntry.Find('-') then VATBookEntry.DeleteAll;

                    // VATBookEntry.Reset;
                    // VATBookEntry.SetRange("Transaction No.", TransactionFilter);
                    // VATBookEntry.SetRange(Type, VATBookEntry.Type::Sale);
                    // if VATBookEntry.Find('-') then VATBookEntry.DeleteAll;

                end;

                if Rec."Table ID" = 21 then                      // Movimenti Contabili Clienti
                    begin
                    CustLedgEntry.Reset;
                    CustLedgEntry.SetCurrentKey("Document No.");
                    CustLedgEntry.SetFilter("Document No.", DocNoFilter);
                    CustLedgEntry.SetRange("Posting Date", PostingDat); //RJ500-n
                    if TransactionFilter <> 0 then
                        CustLedgEntry.SetRange("Transaction No.", TransactionFilter);
                    if CustLedgEntry.Find('-') then begin
                        repeat
                            DtldCustLedgEntry.Reset;
                            DtldCustLedgEntry.SetRange("Cust. Ledger Entry No.", CustLedgEntry."Entry No.");
                            if DtldCustLedgEntry.FindFirst then
                                DtldCustLedgEntry.DeleteAll;
                        until CustLedgEntry.Next = 0;

                        if CustLedgEntry.FindFirst then
                            //PRJ500-s
                            if CustLedgEntry."Remaining Amount" < CustLedgEntry."Original Amount" then
                                Error(Text017);
                        //PRJ500-e
                        CustLedgEntry.DeleteAll;
                    end;
                end;
                IF Rec."Table ID" = 379 THEN                    // Dettagli Movimenti Clienti
                   BEGIN
                    DtldCustLedgEntry.RESET;
                    DtldCustLedgEntry.SETCURRENTKEY("Document No.");
                    DtldCustLedgEntry.SETFILTER("Document No.", DocNoFilter);
                    DtldCustLedgEntry.SetRange("Posting Date", PostingDat);
                    IF TransactionFilter <> 0 THEN
                        DtldCustLedgEntry.SETRANGE("Transaction No.", TransactionFilter);
                    IF DtldCustLedgEntry.FIND('-') THEN DtldCustLedgEntry.DELETEALL;
                END;
                if Rec."Table ID" = 25 then                      // Movimenti Contabili Fornitori
                    begin
                    VendLedgEntry.Reset;
                    VendLedgEntry.SetCurrentKey("Document No.");
                    VendLedgEntry.SetFilter("Document No.", DocNoFilter);
                    VendLedgEntry.SetRange("Posting Date", PostingDat);
                    if TransactionFilter <> 0 then
                        VendLedgEntry.SetRange("Transaction No.", TransactionFilter);
                    if VendLedgEntry.Find('-') then begin
                        repeat
                            DtldVendLedgEntry.Reset;
                            DtldVendLedgEntry.SetRange("Vendor Ledger Entry No.", VendLedgEntry."Entry No.");
                            if DtldVendLedgEntry.FindFirst then
                                DtldVendLedgEntry.DeleteAll;
                        until VendLedgEntry.Next = 0;
                        if VendLedgEntry.FindFirst then
                            //PRJ500-s
                            if VendLedgEntry."Remaining Amount" < VendLedgEntry."Original Amount" then
                                Error(Text017);
                        //PRJ500-e
                        VendLedgEntry.DeleteAll;
                    end;
                end;

                IF Rec."Table ID" = 380 THEN                    // Dettagli Movimenti Fornitori
                  BEGIN
                    DtldVendLedgEntry.RESET;
                    DtldVendLedgEntry.SETCURRENTKEY("Document No.");
                    DtldVendLedgEntry.SETFILTER("Document No.", DocNoFilter);
                    DtldVendLedgEntry.SetRange("Posting Date", PostingDat);
                    IF TransactionFilter <> 0 THEN
                        DtldVendLedgEntry.SETRANGE("Transaction No.", TransactionFilter);
                    IF DtldVendLedgEntry.FIND('-') THEN DtldVendLedgEntry.DELETEALL;
                END;

                if Rec."Table ID" = 271 then                      // Movimenti Contabili Bancari
                    begin
                    BankAccLedgEntry.Reset;
                    BankAccLedgEntry.SetCurrentKey("Document No.");
                    BankAccLedgEntry.SetFilter("Document No.", DocNoFilter);
                    BankAccLedgEntry.SetRange("Posting Date", PostingDat);
                    if TransactionFilter <> 0 then
                        BankAccLedgEntry.SetRange("Transaction No.", TransactionFilter);
                    if BankAccLedgEntry.Find('-') then begin
                        BankAccLedgEntry.DeleteAll;
                    end;
                end;

                if Rec."Table ID" = 1104 then begin             // Movimenti di costo
                    CostEntry.Reset;
                    CostEntry.SetFilter("Document No.", DocNoFilter);
                    CostEntry.SetRange("Posting Date", PostingDat);
                    //IF TransactionFilter <> 0 THEN
                    //  CostEntry.SETRANGE("Transaction No.", TransactionFilter);
                    if CostEntry.Find('-') then
                        CostEntry.DeleteAll;
                end;
            until Rec.Next = 0;

            // Collegamento Mov. CG a Mov. Iva
            TmpColCG.Reset;
            if TmpColCG.FindFirst then begin
                repeat
                    if GLEntryVATEntryLink.Get(TmpColCG."G/L Entry No.", TmpColCG."VAT Entry No.") then
                        GLEntryVATEntryLink.Delete;
                until TmpColCG.Next = 0;
            end;

            SetSource(0D, '', '', 0, '');

            if MsgDoc <> '' then begin
                LogEMTUpdate.InsertUpdate1(Tableid, DocNoFilter, 1, MsgDoc, '', '', '');
                Message(StrSubstNo(Wrng00100, MsgDoc));
            end;

        end;
    end;

    procedure CheckUnicFilter(ValueFilter: Text[1000])
    begin
        if StrPos(ValueFilter, '|') <> 0 then Error(Er03);
        if StrPos(ValueFilter, '..') <> 0 then Error(Er03);
        if StrPos(ValueFilter, '>') <> 0 then Error(Er03);
        if StrPos(ValueFilter, '<') <> 0 then Error(Er03);
        if StrPos(ValueFilter, '&') <> 0 then Error(Er03);
    end;

    procedure SaveNoSeries(NoSerie: Code[20])
    var
        lrNoSeries: Record "No. Series";
        lNoSeries: Record "No. Series";
    begin
        if (NoSerie = '') then exit;
        //OT-s - Se la numerazione è usata come reverse charge non la uso per la creazione di documenti
        lNoSeries.Reset;
        //lNoSeries.SetCurrentKey("Reverse Sales VAT No. Series");
        //lNoSeries.SetRange("Reverse Sales VAT No. Series", NoSerie);
        if lNoSeries.IsEmpty then begin
            //OT-e
            if not TmpNumerazioni.Get(NoSerie) then begin
                lrNoSeries.Get(NoSerie);
                // if (lrNoSeries."No. Series Type" = lrNoSeries."No. Series Type"::Sales) or
                //    (lrNoSeries."No. Series Type" = lrNoSeries."No. Series Type"::Purchase) then begin
                TmpNumerazioni.Init;
                TmpNumerazioni.TransferFields(lrNoSeries);
                TmpNumerazioni.Code := NoSerie;
                TmpNumerazioni.Insert;
                // end;
            end;
        end; //OT-n
    end;

    procedure SaveCollCgIva(var GLEntry: Record "G/L Entry")
    begin
        if GLEntry.FindFirst then
            repeat
                GLEntryVATEntryLink.Reset;
                GLEntryVATEntryLink.SetRange("G/L Entry No.", GLEntry."Entry No.");
                if GLEntryVATEntryLink.FindFirst then begin
                    repeat
                        if not TmpColCG.Get(GLEntryVATEntryLink."G/L Entry No.", GLEntryVATEntryLink."VAT Entry No.") then begin
                            TmpColCG.Init;
                            TmpColCG."G/L Entry No." := GLEntryVATEntryLink."G/L Entry No.";
                            TmpColCG."VAT Entry No." := GLEntryVATEntryLink."VAT Entry No.";
                            TmpColCG.Insert;
                        end;
                    until GLEntryVATEntryLink.Next = 0;
                end;
            until GLEntry.Next = 0;
    end;

    procedure SaveCollIvaCg(var VATEntry: Record "VAT Entry")
    begin
        if VATEntry.FindFirst then
            repeat
                GLEntryVATEntryLink.Reset;
                GLEntryVATEntryLink.SetRange("VAT Entry No.", VATEntry."Entry No.");
                if GLEntryVATEntryLink.FindFirst then begin
                    repeat
                        if not TmpColCG.Get(GLEntryVATEntryLink."G/L Entry No.", GLEntryVATEntryLink."VAT Entry No.") then begin
                            TmpColCG.Init;
                            TmpColCG."G/L Entry No." := GLEntryVATEntryLink."G/L Entry No.";
                            TmpColCG."VAT Entry No." := GLEntryVATEntryLink."VAT Entry No.";
                            TmpColCG.Insert;
                        end;
                    until GLEntryVATEntryLink.Next = 0;
                end;
            until VATEntry.Next = 0;
    end;

    procedure DeleteAllBuffer()
    begin
        TmpNumerazioni.Reset;
        if TmpNumerazioni.FindFirst then TmpNumerazioni.DeleteAll;
        TmpColCG.Reset;
        if TmpColCG.FindFirst then TmpColCG.DeleteAll;
    end;

    PROCEDURE MakeDateFilter(VAR DateFilterText: Text): Integer;
    VAR
        Position: Integer;
    BEGIN
        Position := MakeDateFilter(DateFilterText);
        EXIT(Position);
    END;

    local procedure GetCaptionText(): Text
    begin
        if Rec."Table Name" <> '' then
            exit(StrSubstNo(PageCaptionTxt, Rec."Table Name"));

        exit('');
    end;

    local procedure FilterSelectionChanged()
    begin
        FilterSelectionChangedTxtVisible := true;
    end;

    local procedure UpdateFindByGroupsVisibility()
    begin
        DocumentVisible := false;
        gTransFieldVisible := TransactionFilter <> 0; //AX-n
        BusinessContactVisible := false;
        ItemReferenceVisible := false;

        case SearchBasedOn of
            SearchBasedOn::Document:
                DocumentVisible := true;
            SearchBasedOn::"Business Contact":
                BusinessContactVisible := true;
            SearchBasedOn::"Item Reference":
                ItemReferenceVisible := true;
        end;
        CurrPage.Update;
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
          NoOfRecords(DATABASE::"Service Shipment Header") + NoOfRecords(DATABASE::"Transfer Shipment Header") +
          NoOfRecords(DATABASE::"Transfer Receipt Header");

        OnAfterGetDocumentCount(DocCount);
    end;

    local procedure SetSource(PostingDate: Date; DocType2: Text[100]; DocNo: Text[50]; SourceType2: Integer; SourceNo2: Code[20])
    begin
        if SourceType2 = 0 then begin
            DocType := '';
            SourceType := '';
            SourceNo := '';
            SourceName := '';
        end else begin
            DocType := DocType2;
            SourceNo := SourceNo2;
            Rec.SetRange("Document No.", DocNo);
            Rec.SetRange("Posting Date", PostingDate);
            DocNoFilter := Rec.GetFilter("Document No.");
            PostingDateFilter := Rec.GetFilter("Posting Date");
            case SourceType2 of
                1:
                    begin
                        SourceType := Cust.TableCaption;
                        if not Cust.Get(SourceNo) then
                            Cust.Init();
                        SourceName := Cust.Name;
                    end;
                2:
                    begin
                        SourceType := Vend.TableCaption;
                        if not Vend.Get(SourceNo) then
                            Vend.Init();
                        SourceName := Vend.Name;
                    end;
            end;
        end;
        DocTypeEnable := SourceType2 <> 0;
        SourceTypeEnable := SourceType2 <> 0;
        SourceNoEnable := SourceType2 <> 0;
        SourceNameEnable := SourceType2 <> 0;
    end;

    local procedure SetSourceForPurchase()
    begin
        if NoOfRecords(DATABASE::"Vendor Ledger Entry") = 1 then begin
            VendLedgEntry.FindFirst;
            SetSource(
              VendLedgEntry."Posting Date", Format(VendLedgEntry."Document Type"), VendLedgEntry."Document No.",
              2, VendLedgEntry."Vendor No.");
        end;
        if NoOfRecords(DATABASE::"Detailed Vendor Ledg. Entry") = 1 then begin
            DtldVendLedgEntry.FindFirst;
            SetSource(
              DtldVendLedgEntry."Posting Date", Format(DtldVendLedgEntry."Document Type"), DtldVendLedgEntry."Document No.",
              2, DtldVendLedgEntry."Vendor No.");
        end;
        if NoOfRecords(DATABASE::"Purch. Inv. Header") = 1 then begin
            PurchInvHeader.FindFirst;
            SetSource(
              PurchInvHeader."Posting Date", Format(Rec."Table Name"), PurchInvHeader."No.",
              2, PurchInvHeader."Pay-to Vendor No.");
        end;
        if NoOfRecords(DATABASE::"Purch. Cr. Memo Hdr.") = 1 then begin
            PurchCrMemoHeader.FindFirst;
            SetSource(
              PurchCrMemoHeader."Posting Date", Format(Rec."Table Name"), PurchCrMemoHeader."No.",
              2, PurchCrMemoHeader."Pay-to Vendor No.");
        end;
        if NoOfRecords(DATABASE::"Return Shipment Header") = 1 then begin
            ReturnShptHeader.FindFirst;
            SetSource(
              ReturnShptHeader."Posting Date", Format(Rec."Table Name"), ReturnShptHeader."No.",
              2, ReturnShptHeader."Buy-from Vendor No.");
        end;
        if NoOfRecords(DATABASE::"Purch. Rcpt. Header") = 1 then begin
            PurchRcptHeader.FindFirst;
            SetSource(
              PurchRcptHeader."Posting Date", Format(Rec."Table Name"), PurchRcptHeader."No.",
              2, PurchRcptHeader."Buy-from Vendor No.");
        end;
        if NoOfRecords(DATABASE::"Posted Whse. Receipt Line") = 1 then begin
            PostedWhseRcptLine.FindFirst;
            SetSource(
              PostedWhseRcptLine."Posting Date", Format(Rec."Table Name"), PostedWhseRcptLine."Posted Source No.",
              2, '');
        end;
        if NoOfRecords(DATABASE::"Pstd. Phys. Invt. Order Hdr") = 1 then begin
            PstdPhysInvtOrderHdr.FindFirst;
            SetSource(
              PstdPhysInvtOrderHdr."Posting Date", Format(Rec."Table Name"), PstdPhysInvtOrderHdr."No.",
              3, '');
        end;
    end;

    local procedure SetSourceForSales()
    begin
        if NoOfRecords(DATABASE::"Cust. Ledger Entry") = 1 then begin
            CustLedgEntry.FindFirst;
            SetSource(
              CustLedgEntry."Posting Date", Format(CustLedgEntry."Document Type"), CustLedgEntry."Document No.",
              1, CustLedgEntry."Customer No.");
        end;
        if NoOfRecords(DATABASE::"Detailed Cust. Ledg. Entry") = 1 then begin
            DtldCustLedgEntry.FindFirst;
            SetSource(
              DtldCustLedgEntry."Posting Date", Format(DtldCustLedgEntry."Document Type"), DtldCustLedgEntry."Document No.",
              1, DtldCustLedgEntry."Customer No.");
        end;
        if NoOfRecords(DATABASE::"Sales Invoice Header") = 1 then begin
            SalesInvHeader.FindFirst;
            SetSource(
              SalesInvHeader."Posting Date", Format(Rec."Table Name"), SalesInvHeader."No.",
              1, SalesInvHeader."Bill-to Customer No.");
        end;
        if NoOfRecords(DATABASE::"Sales Cr.Memo Header") = 1 then begin
            SalesCrMemoHeader.FindFirst;
            SetSource(
              SalesCrMemoHeader."Posting Date", Format(Rec."Table Name"), SalesCrMemoHeader."No.",
              1, SalesCrMemoHeader."Bill-to Customer No.");
        end;
        if NoOfRecords(DATABASE::"Return Receipt Header") = 1 then begin
            ReturnRcptHeader.FindFirst;
            SetSource(
              ReturnRcptHeader."Posting Date", Format(Rec."Table Name"), ReturnRcptHeader."No.",
              1, ReturnRcptHeader."Sell-to Customer No.");
        end;
        if NoOfRecords(DATABASE::"Sales Shipment Header") = 1 then begin
            SalesShptHeader.FindFirst;
            SetSource(
              SalesShptHeader."Posting Date", Format(Rec."Table Name"), SalesShptHeader."No.",
              1, SalesShptHeader."Sell-to Customer No.");
        end;
        if NoOfRecords(DATABASE::"Posted Whse. Shipment Line") = 1 then begin
            PostedWhseShptLine.FindFirst;
            SetSource(
              PostedWhseShptLine."Posting Date", Format(Rec."Table Name"), PostedWhseShptLine."Posted Source No.",
              1, PostedWhseShptLine."Destination No.");
        end;
        if NoOfRecords(DATABASE::"Issued Reminder Header") = 1 then begin
            IssuedReminderHeader.FindFirst;
            SetSource(
              IssuedReminderHeader."Posting Date", Format(Rec."Table Name"), IssuedReminderHeader."No.",
              1, IssuedReminderHeader."Customer No.");
        end;
        if NoOfRecords(DATABASE::"Issued Fin. Charge Memo Header") = 1 then begin
            IssuedFinChrgMemoHeader.FindFirst;
            SetSource(
              IssuedFinChrgMemoHeader."Posting Date", Format(Rec."Table Name"), IssuedFinChrgMemoHeader."No.",
              1, IssuedFinChrgMemoHeader."Customer No.");
        end;
    end;

    local procedure SetSourceForService()
    begin
        if NoOfRecords(DATABASE::"Service Ledger Entry") = 1 then begin
            ServLedgerEntry.FindFirst;
            if ServLedgerEntry.Type = ServLedgerEntry.Type::"Service Contract" then
                SetSource(
                  ServLedgerEntry."Posting Date", Format(ServLedgerEntry."Document Type"), ServLedgerEntry."Document No.",
                  2, ServLedgerEntry."Service Contract No.")
            else
                SetSource(
                  ServLedgerEntry."Posting Date", Format(ServLedgerEntry."Document Type"), ServLedgerEntry."Document No.",
                  2, ServLedgerEntry."Service Order No.")
        end;
        if NoOfRecords(DATABASE::"Warranty Ledger Entry") = 1 then begin
            WarrantyLedgerEntry.FindFirst;
            SetSource(
              WarrantyLedgerEntry."Posting Date", '', WarrantyLedgerEntry."Document No.",
              2, WarrantyLedgerEntry."Service Order No.")
        end;
    end;

    local procedure SetSourceForServiceDoc()
    begin
        if NoOfRecords(DATABASE::"Service Invoice Header") = 1 then begin
            ServInvHeader.FindFirst;
            SetSource(
              ServInvHeader."Posting Date", Format(Rec."Table Name"), ServInvHeader."No.",
              1, ServInvHeader."Bill-to Customer No.");
        end;
        if NoOfRecords(DATABASE::"Service Cr.Memo Header") = 1 then begin
            ServCrMemoHeader.FindFirst;
            SetSource(
              ServCrMemoHeader."Posting Date", Format(Rec."Table Name"), ServCrMemoHeader."No.",
              1, ServCrMemoHeader."Bill-to Customer No.");
        end;
        if NoOfRecords(DATABASE::"Service Shipment Header") = 1 then begin
            ServShptHeader.FindFirst;
            SetSource(
              ServShptHeader."Posting Date", Format(Rec."Table Name"), ServShptHeader."No.",
              1, ServShptHeader."Customer No.");
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterFindRecords(var DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterGetDocumentCount(var DocCount: Integer)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterNavigateFindExtRecords(var DocumentEntry: Record "Document Entry"; ContactType: Enum "Navigate Contact Type"; ContactNo: Code[250];
                                                                                                               ExtDocNo: Code[250]; var FoundRecords: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterNavigateFindRecords(var DocumentEntry: Record "Document Entry"; DocNoFilter: Text; PostingDateFilter: Text)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterNavigateFindTrackingRecords(var DocumentEntry: Record "Document Entry"; SerialNoFilter: Text; LotNoFilter: Text)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnAfterNavigateShowRecords(TableID: Integer; DocNoFilter: Text; PostingDateFilter: Text; ItemTrackingSearch: Boolean; var TempDocumentEntry: Record "Document Entry" temporary; SalesInvoiceHeader: Record "Sales Invoice Header"; SalesCrMemoHeader: Record "Sales Cr.Memo Header"; PurchInvHeader: Record "Purch. Inv. Header"; PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; ServiceInvoiceHeader: Record "Service Invoice Header"; ServiceCrMemoHeader: Record "Service Cr.Memo Header")
    begin
    end;

    [IntegrationEvent(true, false)]
    local procedure OnAfterSetRec(NewSourceRecVar: Variant)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeFindRecords(var HideDialog: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeNavigateShowRecords(TableID: Integer; DocNoFilter: Text; PostingDateFilter: Text; ItemTrackingSearch: Boolean; var TempDocumentEntry: Record "Document Entry" temporary; var IsHandled: Boolean; var SalesInvoiceHeader: Record "Sales Invoice Header"; var SalesCrMemoHeader: Record "Sales Cr.Memo Header"; var PurchInvHeader: Record "Purch. Inv. Header"; var PurchCrMemoHdr: Record "Purch. Cr. Memo Hdr."; var ServiceInvoiceHeader: Record "Service Invoice Header"; var ServiceCrMemoHeader: Record "Service Cr.Memo Header"; var SOSalesHeader: Record "Sales Header"; var SISalesHeader: Record "Sales Header"; var SCMSalesHeader: Record "Sales Header"; var SROSalesHeader: Record "Sales Header")
    begin
    end;

    [IntegrationEvent(TRUE, false)]
    local procedure OnBeforeUpdateFormAfterFindRecords()
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnFindRecordsOnAfterSetSource(var DocumentEntry: Record "Document Entry"; var PostingDate: Date; var DocType2: Text[100]; var DocNo: Code[20]; var SourceType2: Integer; var SourceNo: Code[20]; var DocNoFilter: Text; var PostingDateFilter: Text; var IsHandled: Boolean)
    begin
    end;
}