report /*50302*/50013"Refiscalize Companion Invoice"
{
    Caption = 'Refiscalize Companion Invoice';
    ProcessingOnly = true;
    Permissions = tabledata 5744 = rimd, TableData "Company Setup -  e-Invoice" = rimd;

    dataset
    {
        dataitem("Transfer Shipment Header"; "Transfer Shipment Header")
        {
            column(SubseqDelivType; SubseqDelivType)
            { }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group("Subsequent Delivery Type")
                {
                    field(SubseqDelivType; SubseqDelivType)
                    {
                        ApplicationArea = All;
                        Caption = 'Subsequent Delivery Type';
                        Editable = true;
                        trigger OnValidate()
                        var
                            myInt: Integer;
                        begin
                            if SubseqDelivType = SubseqDelivType::" " then
                                Error(ErrorTxt001);
                        end;
                    }
                }
            }
        }
    }
    procedure GetNo(pTrnsShip: Text; pDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order"; pFilePath: text[225]): Text
    begin
        gRefNo := pTrnsShip;
        gDocType := pDocType;
        gFilePath := pFilePath;
    end;

    trigger OnPostReport()
    var
        SalesInvHead: Record "Sales Invoice Header";
        SalesCrMemoHead: Record "Sales Cr.Memo Header";
        BankAccount: Record "Bank Account";
        TransShipmHeader: Record "Transfer Shipment Header";
        leiSetup: Record "Company Setup -  e-Invoice";
        XMLGen: Codeunit XMLGenerator;
    begin
        if not (SubseqDelivType = SubseqDelivType::" ") then begin
            // if (gDocType = gDocType::Invoice) then begin
            //     SalesInvHead.Get("gRefNo");
            //     leiSetup.Get();
            //     XMLGen.ResendInvoice(SalesInvHead."invoice File Name", leiSetup."File Path Sales", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);
            // end
            // else
            //     if (gDocType = gDocType::"Credit Memo") then begin
            //         SalesCrMemoHead.Get("gRefNo");
            //         leiSetup.Get();
            //         XMLGen.ResendInvoice(SalesCrMemoHead."invoice File Name", leiSetup."File Path Sales", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);
            //     end
            //     else
            //         if (gDocType = gDocType::"Bank Account") then begin
            //             BankAccount.Get(gRefNo);
            //             leiSetup.Get();
            //             XMLGen.ResendInvoice(BankAccount."invoice File Name", leiSetup."Cash Registration File Path", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);
            //         end
            //         else
            if (gDocType = gDocType::"Transfer Order") then begin
                TransShipmHeader.GET(gRefNo);
                leiSetup.Get();
                XMLGen.ResendInvoice(/*"Transfer Shipment Header"."Invoice File Name"*/gFilePath, leiSetup."Companion Inv. Req. File Path", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);

            end;
        end
        else
            Error(ErrorTxt001);
    end;

    var
        SubseqDelivType: Enum "Subsequent Delivery Type";
        gDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order";
        // gType: Option Save,Update,Open;
        gFilePath: Text;
        gRefNo: Code[20];
        gBankAccLEdgEntryRefNo: Integer;
        ErrorTxt001: Label 'Duhet te zgjidhni llojin e dorezimit pasues';//You must select the type of subsequent submission
}