report /*50103*/50010 "Transfer Shipment AL"
{
    Caption = 'Transfer Shipment AL';
    DefaultLayout = RDLC;
    RDLCLayout = './Raportet/TransferShipment.rdl';


    dataset
    {
        dataitem("Transfer Shipment Header"; "Transfer Shipment Header")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Transfer-from Code", "Transfer-to Code";
            RequestFilterHeading = 'Posted Transfer Shipment';
            column(WTNTypeValue; WTNTypeValue)
            { }
            column(No_TransShptHeader; "No.")
            { }
            column(InvNo; InvNo)
            { }
            column(NSLFSH; NSLFSH)
            { IncludeCaption = true; }
            column(NIVFSH; NIVFSH)
            { IncludeCaption = true; }

            column(Total_Amount; "Total Amount")
            { }
            column(TotalAmtLbl; TotalAmtLbl)
            { }
            column(Declaration_Date; "Declaration Date")
            { }
            column(DeclarationDTLbl; DeclarationDTLbl)
            { }
            column(Destination_Location_Type; "Destination Location Type")
            { }
            column(Destination_Location_TypeLbl; Destination_Location_TypeLbl)
            { }
            column(Transfer_to_Address; "Transfer-to Address")
            { IncludeCaption = true; }
            column(Transfer_to_City; "Transfer-to City")
            { IncludeCaption = true; }
            column(Start_Location_Type; "Start Location Type")
            { }
            column(Start_Location_TypeLbl; Start_Location_TypeLbl)
            { }
            column(Transfer_from_Address; "Transfer-from Address")
            { IncludeCaption = true; }
            column(Transfer_from_City; "Transfer-from City")
            { IncludeCaption = true; }

            column(isEscortRequiredVal; isEscortRequiredVal)
            { }
            column(isEscortRequiredLbl; isEscortRequiredLbl)
            { }
            column(isGoodsFlammableVal; isGoodsFlammableVal)
            { }
            column(isGoodsFlammableLbl; isGoodsFlammableLbl)
            { }
            column(Start_Date_Time; "Start Date Time")
            { }
            column(Start_Date_TimeLbl; Start_Date_TimeLbl)
            { }
            column(Dest_Date_Time; "Dest.Date Time")
            { }
            column(Dest_Date_TimeLbl; Dest_Date_TimeLbl)
            { }
            column(TransporterName; TransporterName)
            { }
            column(TransporterNameLbl; TransporterNameLbl)
            { }
            column(TransporterAddress; TransporterAddress)
            { }
            column(TransporterAddressLbl; TransporterAddressLbl)
            { }
            column(TransporterLabel; TransporterLabel)
            { }
            column(TransporterIdType; TransporterIdType)
            { }
            column(TransporterIdTypeLbl; TransporterIdTypeLbl)
            { }
            column(TransporterID; TransporterID)
            { }
            column(TransporterIDLbl; TransporterIDLbl)
            { }
            column(Currency_Code; "CurrencyCode")
            { }
            column(CompName; CompName)
            { }
            column(CompNameLbl; CompNameLbl)
            { }
            column(VatRegNo; VatRegNo)
            { }
            column(VatRegNoLbl; VatRegNoLbl)
            { }
            column(temp; TM.Content)
            { }
            column(SoftCode; SoftCode)
            { }
            column(SoftCodeLbl; SoftCodeLbl)
            { }
            column(OperatorCode; OperatorCode)
            { }
            column(OperatorCodeLBL; OperatorCodeLBL)
            { }
            column(BusUnitCode; BusUnitCode)
            { }
            column(BusUnitCodeLbl; BusUnitCodeLbl)
            { }
            column(WTNType; WTNType)
            { }
            column(WTNTypeLbl; WTNTypeLbl)
            { }
            column(Transaction; Transaction)
            { }
            column(TransactionLbl; TransactionLbl)
            { }
            column(VehOwnership; VehOwnership)
            { }
            column(VehOwnershipLbl; VehOwnershipLbl)
            { }
            column(VehPlates; VehPlates)
            { }
            column(VehPlatesLbl; VehPlatesLbl)
            { }

            dataitem(CopyLoop; "Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; "Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                    column(CopyTextCaption; StrSubstNo(Text001, CopyText))
                    {
                    }
                    column(TransferToAddr1; TransferToAddr[1])
                    {
                    }
                    column(TransferFromAddr1; TransferFromAddr[1])
                    {
                    }
                    column(TransferToAddr2; TransferToAddr[2])
                    {
                    }
                    column(TransferFromAddr2; TransferFromAddr[2])
                    {
                    }
                    column(TransferToAddr3; TransferToAddr[3])
                    {
                    }
                    column(TransferFromAddr3; TransferFromAddr[3])
                    {
                    }
                    column(TransferToAddr4; TransferToAddr[4])
                    {
                    }
                    column(TransferFromAddr4; TransferFromAddr[4])
                    {
                    }
                    column(TransferToAddr5; TransferToAddr[5])
                    {
                    }
                    column(TransferToAddr6; TransferToAddr[6])
                    {
                    }
                    column(InTransit_TransShptHeader; "Transfer Shipment Header"."In-Transit Code")
                    {
                        IncludeCaption = true;
                    }
                    column(PostDate_TransShptHeader; Format("Transfer Shipment Header"."Posting Date", 0, 4))
                    {
                    }
                    column(No2_TransShptHeader; "Transfer Shipment Header"."No.")
                    {
                    }
                    column(TransferToAddr7; TransferToAddr[7])
                    {
                    }
                    column(TransferToAddr8; TransferToAddr[8])
                    {
                    }
                    column(TransferFromAddr5; TransferFromAddr[5])
                    {
                    }
                    column(TransferFromAddr6; TransferFromAddr[6])
                    {
                    }
                    column(ShiptDate_TransShptHeader; Format("Transfer Shipment Header"."Shipment Date"))
                    {
                    }
                    column(TransferFromAddr7; TransferFromAddr[7])
                    {
                    }
                    column(TransferFromAddr8; TransferFromAddr[8])
                    {
                    }
                    column(PageCaption; StrSubstNo(Text002, ''))
                    {
                    }
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(Desc_ShptMethod; ShipmentMethod.Description)
                    {
                    }
                    column(TransShptHdrNoCaption; TransShptHdrNoCaptionLbl)
                    {
                    }
                    column(TransShptShptDateCaption; TransShptShptDateCaptionLbl)
                    {
                    }
                    dataitem(DimensionLoop1; "Integer")
                    {
                        DataItemLinkReference = "Transfer Shipment Header";
                        DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(Number_DimensionLoop1; Number)
                        {
                        }
                        column(HdrDimCaption; HdrDimCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                                if not DimSetEntry1.FindSet then
                                    CurrReport.Break();
                            end else
                                if not Continue then
                                    CurrReport.Break();

                            Clear(DimText);
                            Continue := false;
                            repeat
                                OldDimText := DimText;
                                if DimText = '' then
                                    DimText := StrSubstNo('%1 - %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                else
                                    DimText :=
                                      StrSubstNo(
                                        '%1; %2 - %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                end;
                            until DimSetEntry1.Next = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                                CurrReport.Break();
                        end;
                    }
                    dataitem("Transfer Shipment Line"; "Transfer Shipment Line")
                    {
                        DataItemLink = "Document No." = FIELD("No.");
                        DataItemLinkReference = "Transfer Shipment Header";
                        DataItemTableView = SORTING("Document No.", "Line No.");
                        column(ShowInternalInfo; ShowInternalInfo)
                        {
                        }
                        column(NoOfCopies; NoOfCopies)
                        {
                        }
                        column(ItemNo_TransShptLine; "Item No.")
                        {
                            IncludeCaption = true;
                        }
                        column(Desc_TransShptLine; Description)
                        {
                            IncludeCaption = true;
                        }
                        column(Qty_TransShptLine; Quantity)
                        {
                            IncludeCaption = true;
                        }
                        column(UOM_TransShptLine; "Unit of Measure")
                        {
                            IncludeCaption = true;
                        }
                        column(LineNo_TransShptLine; "Line No.")
                        {
                        }
                        column(DocNo_TransShptLine; "Document No.")
                        {
                        }
                        dataitem(DimensionLoop2; "Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number = FILTER(1 ..));
                            column(DimText4; DimText)
                            {
                            }
                            column(Number_DimensionLoop2; Number)
                            {
                            }
                            column(LineDimCaption; LineDimCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then begin
                                    if not DimSetEntry2.FindSet then
                                        CurrReport.Break();
                                end else
                                    if not Continue then
                                        CurrReport.Break();

                                Clear(DimText);
                                Continue := false;
                                repeat
                                    OldDimText := DimText;
                                    if DimText = '' then
                                        DimText := StrSubstNo('%1 - %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    else
                                        DimText :=
                                          StrSubstNo(
                                            '%1; %2 - %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    if StrLen(DimText) > MaxStrLen(OldDimText) then begin
                                        DimText := OldDimText;
                                        Continue := true;
                                        exit;
                                    end;
                                until DimSetEntry2.Next = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                    CurrReport.Break();
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            DimSetEntry2.SetRange("Dimension Set ID", "Dimension Set ID");
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := Find('+');
                            while MoreLines and (Description = '') and ("Item No." = '') and (Quantity = 0) do
                                MoreLines := Next(-1) <> 0;
                            if not MoreLines then
                                CurrReport.Break();
                            SetRange("Line No.", 0, "Line No.");
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    if Number > 1 then begin
                        CopyText := Text000;
                        OutputNo += 1;
                    end;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := 1 + Abs(NoOfCopies);
                    CopyText := '';
                    SetRange(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                DimSetEntry1.SetRange("Dimension Set ID", "Dimension Set ID");
                CompInfoESetup.Get();
                UserSetup.GET(UserId);
                GenLedgSet.Get();

                FormatAddr.TransferShptTransferFrom(TransferFromAddr, "Transfer Shipment Header");
                FormatAddr.TransferShptTransferTo(TransferToAddr, "Transfer Shipment Header");

                if not ShipmentMethod.Get("Shipment Method Code") then
                    ShipmentMethod.Init();

                TCRCode := CompInfoESetup."TCR Code";
                BusUnitCode := CompInfoESetup."Business Unit Code";
                OperatorCode := UserSetup."Operator Code";
                SoftCode := CompInfoESetup."Soft Code";
                WTNType := WTNTypeValue;
                Transaction := TransactionValue;
                // VehOwnership := 'Owner';
                ShippingAgent.GET("Transfer Shipment Header"."Shipping Agent Code");

                if ShippingAgent."Own Vehicle" then
                    VehOwnership := OVehOwnership
                else
                    VehOwnership := ThVehOwnership;

                VehPlates := ShippingAgent."Vehicle Plate No.";

                // if ShippingAgent."Own Vehicle" = false then begin
                TransporterName := ShippingAgent.Name;
                TransporterAddress := ShippingAgent.Address;
                TransporterIdType := Format(ShippingAgent.IDType);
                if ShippingAgent.IDType = ShippingAgent.IDType::ID then
                    TransporterID := ShippingAgent."Personal ID"
                else
                    TransporterID := ShippingAgent."Vat Registration No.";
                // end;
                CompName := CompInfoESetup.Name;
                VatRegNo := CompInfoESetup."VAT Registration No.";

                if CompInfoESetup."FE Activated" then
                    InvNo := "Transfer Shipment Header"."Fiscalised Invoice number" + '/' + Format(Date2DMY(Today, 3))
                else
                    InvNo := "Transfer Shipment Header"."No." + '/' + Format(Date2DMY(Today, 3));
                CurrencyCode := GenLedgSet."LCY Code";

                if "Transfer Shipment Header".isEscortRequired then
                    isEscortRequiredVal := TrueLbl
                else
                    isEscortRequiredVal := FalseLbl;

                if "Transfer Shipment Header".isGoodsFlammable then
                    isGoodsFlammableVal := TrueLbl
                else
                    isGoodsFlammableVal := FalseLbl;

                SetBlob("Transfer Shipment Header".NSLFSH, CompInfoESetup."VAT Registration No.", "Transfer Shipment Header"."Declaration Date", "Transfer Shipment Header"."Fiscalised Invoice number", CompInfoESetup."Business Unit Code", CompInfoESetup."Soft Code");
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Location;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Dimensions;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want all dimensions assigned to the line to be shown.';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
        PostingDateCaption = 'Posting Date';
        ShptMethodCaption = 'Shipment Method';
    }

    var
        Text000: Label 'COPY';
        Text001: Label 'Transfer Shipment %1';
        Text002: Label 'Page %1';
        ShipmentMethod: Record "Shipment Method";
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        FormatAddr: Codeunit "Format Address";
        TransferFromAddr: array[8] of Text[100];
        TransferToAddr: array[8] of Text[100];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        OutputNo: Integer;
        TransShptHdrNoCaptionLbl: Label 'Shipment No.';
        TransShptShptDateCaptionLbl: Label 'Shipment Date';
        HdrDimCaptionLbl: Label 'Header Dimensions';
        LineDimCaptionLbl: Label 'Line Dimensions';
        TM: Record "Tenant Media";
        WTNType: Text;
        WTNTypeValue: Label 'WTN';
        WTNTypeLbl: Label 'WTN Type';
        VehOwnership: Text;
        OVehOwnership: Label 'Owner';
        ThVehOwnership: Label 'THIRDPARTY';
        VehOwnershipLbl: Label 'Vehicle Owner Ship';
        VehPlates: Text;
        VehPlatesLbl: Label 'Vehicle Plates No.';
        Transaction: Text;
        TransactionValue: Label 'Transfer';
        TransactionLbl: Label 'Transaction';
        OperatorCode: Text;
        OperatorCodeLBL: Label 'Operator Code';
        BusUnitCode: Text;
        BusUnitCodeLbl: Label 'Bus.Unit Code';
        TCRCode: Text;
        CompInfoESetup: Record "Company Setup -  e-Invoice";
        UserSetup: Record "User Setup";
        ShippingAgent: Record "Shipping Agent";
        SoftCode: Text;
        SoftCodeLbl: Label 'Soft Code';
        TransporterLabel: Label 'Transporter details';
        TransporterName: Text;
        TransporterNameLbl: Label 'Name';
        TransporterAddress: Text;
        TransporterAddressLbl: Label 'Address';
        TransporterIdType: Text;
        TransporterIdTypeLbl: Label 'ID Type';
        TransporterID: Text;
        TransporterIDLbl: Label 'ID';
        CompName: Text;
        CompNameLbl: Label 'Name';
        VatRegNo: Text;
        VatRegNoLbl: Label 'Vat Reg No.';
        InvNo: Code[20];
        isEscortRequiredVal: Text;
        TrueLbl: Label 'True';
        FalseLbl: Label 'False';
        isEscortRequiredLbl: Label 'IsEscortRequired';
        isGoodsFlammableVal: Text;
        isGoodsFlammableLbl: Label 'isGoodsFlammable';
        Start_Location_TypeLbl: Label 'Start Location Type';
        Start_Date_TimeLbl: Label 'Start Date Time';
        Dest_Date_TimeLbl: Label 'Dest. Date Time';
        Destination_Location_TypeLbl: Label 'Destination Location Type';
        TotalAmtLbl: Label 'Total:';
        "CurrencyCode": Text;
        DeclarationDTLbl: Label 'Declaration Date';

        GenLedgSet: Record "General Ledger Setup";

    procedure SetBlob(pNslfSh: Code[32];
                      pVatRegNo: Text[20];
                      pFiscDate: Text[65];
                      pInvNo: Code[20];
                      pBusUnitCode: Text[10];
                       pSoftCode: Text[10]);
    var
        lQRCode: Text;
        lArgumentURL: Text;
        lRequestMessage: HttpRequestMessage;
        lClient: HttpClient;
        lResponseMessage: HttpResponseMessage;
        lContent: HttpContent;
        lManSetup: Record "Manufacturing Setup";
        TypeHelper: Codeunit "Type Helper";
    begin

        lQRCode := 'https://efiskalizimi-app-test.tatime.gov.al/invoice-check/#/wtn';

        if pNslfsh <> '' then
            lQRCode += '?wtnic=' + pNslfsh;
        if pVatRegNo <> '' then
            lQRCode += '&tin=' + pVatRegNo;
        if pFiscDate <> '' then
            lQRCode += '&crtd=' + pFiscDate;
        if pInvNo <> '' then
            lQRCode += '&ord=' + pInvNo;
        if pBusUnitCode <> '' then
            lQRCode += '&bu=' + pBusUnitCode;
        if pSoftCode <> '' then
            lQRCode += '&sw=' + pSoftCode;

        lQRCode := TypeHelper.UrlEncode(lQRCode);
        lArgumentURL := StrSubstNo('https://api.qrserver.com/v1/create-qr-code/?data=%1', lQRCode);
        lRequestMessage.Method := Format('GET');
        lRequestMessage.SetRequestUri(lArgumentURL);
        lClient.Send(lRequestMessage, lResponseMessage);
        lContent := lResponseMessage.Content;
        SetResponseContent(lContent);
    end;

    local procedure SetResponseContent(var value: HttpContent)
    var
        InStr: InStream;
        OutStr: OutStream;
    begin
        Clear(TM);
        TM.Content.CreateInStream(InStr);
        value.ReadAs(InStr);
        TM.Content.CreateOutStream(OutStr);
        CopyStream(OutStr, InStr);
    end;
}