report /*50300*/50011 "Refiscalize Invoice"
{
    Caption = 'Refiscalize Invoice';
    ProcessingOnly = true;
    Permissions = TableData 112 = rimd, TableData 114 = rimd, TableData CashUserSetup = rimd;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
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
                        begin
                            if SubseqDelivType = SubseqDelivType::" " then
                                Error(ErrorTxt001);
                        end;
                    }
                }
            }
        }
    }
    procedure GetNo(SalesNo: Text; pDocType: Option Invoice,"Credit Memo","Bank Account","Bank Account Ledger Entry"): Text
    begin
        gRefNo := SalesNo;
        gDocType := pDocType
    end;

    procedure GetBankAccLedgEntryNo(EntryNo: Integer; pDocType: Option Invoice,"Credit Memo","Bank Account","Bank Account Ledger Entry"): Text
    begin
        gBankAccLEdgEntryRefNo := EntryNo;
        gDocType := pDocType
    end;

    trigger OnPostReport()
    var
        SalesInvHead: Record "Sales Invoice Header";
        SalesCrMemoHead: Record "Sales Cr.Memo Header";
        BankAccount: Record "Bank Account";
        BankAccLedgEntry: Record "Bank Account Ledger Entry";
        leiSetup: Record "Company Setup -  e-Invoice";
        XMLGen: Codeunit XMLGenerator;
    begin
        if not (SubseqDelivType = SubseqDelivType::" ") then begin
            if (gDocType = gDocType::Invoice) then begin
                SalesInvHead.Get(gRefNo);
                leiSetup.Get();
                XMLGen.ResendInvoice(SalesInvHead."Invoice File Name", leiSetup."File Path Sales", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);
            end
            else
                if (gDocType = gDocType::"Credit Memo") then begin
                    SalesCrMemoHead.Get("gRefNo");
                    leiSetup.Get();
                    XMLGen.ResendInvoice(SalesCrMemoHead."Invoice File Name", leiSetup."File Path Sales", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);
                end
                else
                    if (gDocType = gDocType::"Bank Account") then begin
                        BankAccount.Get(gRefNo);
                        leiSetup.Get();
                        XMLGen.ResendInvoice(BankAccount."Invoice File Name", leiSetup."Cash Reg Request File Path", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);
                    end
                    else
                        if (gDocType = gDocType::"Bank Account Ledger Entry") then begin
                            BankAccLedgEntry.Get(gBankAccLEdgEntryRefNo);
                            leiSetup.Get();
                            XMLGen.ResendInvoice(BankAccLedgEntry."Invoice File Name", leiSetup."Cash Reg Request File Path", SubseqDelivType, gRefNo, gBankAccLEdgEntryRefNo, gDocType);
                        end;
        end
        else
            Error(ErrorTxt001);
    end;

    var
        SubseqDelivType: Enum "Subsequent Delivery Type";
        gDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order","Bank Account Ledger Entry";
        gRefNo: Code[20];
        gBankAccLEdgEntryRefNo: Integer;
        ErrorTxt001: Label 'Duhet te zgjidhni llojin e dorezimit pasues';//You must select the type of subsequent submission
}