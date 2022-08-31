page /*50300*/50020 "Company Setup - e-Invoice"
{
    ApplicationArea = all;
    Caption = 'Company Setup E-Invoice';
    UsageCategory = Administration;
    DeleteAllowed = false;
    PromotedActionCategories = 'New,Process,Report,e-Invoice';
    SourceTable = "Company Setup -  e-Invoice";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Primary Key"; Rec."Primary Key")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Name 2"; Rec."Name 2")
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = All;
                }

                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                    ApplicationArea = All;
                }

                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                }
                // field("Fiscal Code"; Rec."Fiscal Code")
                // {
                //     ApplicationArea = All;
                // }
                // field("e-Doc. Sending Series No."; Rec."e-Doc. Sending Series No.")
                // {
                //     ApplicationArea = All;
                // }
                field("File Path"; Rec."File Path")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(IDType; Rec.IDType)
                {
                    ApplicationArea = All;
                }
                field("Personal ID No."; Rec."Personal ID No.")
                {
                    ApplicationArea = All;
                }
                field("TAX No."; Rec."TAX No.")
                {
                    ApplicationArea = all;
                }
                field("Is Issuer In VAT"; Rec."Is Issuer In VAT")
                {
                    ApplicationArea = All;
                }
                field("Default Unit of Measure"; Rec."Default Unit of Measure")
                {
                    ApplicationArea = All;
                    trigger OnDrillDown()
                    var
                        UnitOfMeasure: Record "Unit of Measure";
                    begin
                        UnitOfMeasure.Reset();
                        If Page.RunModal(Page::"Units of Measure", UnitOfMeasure) = Action::LookupOK then
                            Rec."Default Unit of Measure" := UnitOfMeasure.Description;
                    end;
                }
                group("TCR Device")
                {
                    field("TCR Code"; Rec."TCR Code")
                    {
                        ApplicationArea = All;
                        trigger OnDrillDown()
                        var
                            TCRDevicePage: Page "TCR Device";
                            TCRDevice: Record "TCR Device";
                        begin
                            TCRDevicePage.LookupMode(true);
                            if page.RunModal(Page::"TCR Device", TCRDevice) = Action::LookupOK then begin
                                Rec."TCR Code" := TCRDevice."TCR Code";
                                Rec."TCR Id" := TCRDevice."TCR Id";
                                Rec."TCR Type" := TCRDevice."TCR Type";
                                Rec."Valid To" := TCRDevice."Valid To";
                                Rec."Valid From" := TCRDevice."Valid From";
                                Rec."Business Unit Code" := TCRDevice."Business Unit Code";
                                Rec."Maintainer Code" := TCRDevice."Maintainer Code";
                                Rec."Soft Code" := TCRDevice."Soft Code";
                                Rec."Invoice No. Series." := TCRDevice."Invoice No. Series.";
                                Rec."Credit Memo No. Series." := TCRDevice."Credit Memo No. Series.";
                                Rec."Trans. Shipmment No. Series." := TCRDevice."Trans. Shipmment No. Series.";
                            end;
                        end;

                        trigger OnValidate()
                        begin
                            if rec."TCR Code" = '' then
                                Error(ErrorTxt001);
                        end;
                    }
                    field("TCR Type"; Rec."TCR Type")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("TCR Id"; Rec."TCR Id")
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }

                    field("Valid From"; Rec."Valid From")
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                    field("Valid To"; Rec."Valid To")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("Soft Code"; Rec."Soft Code")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("Maintainer Code"; Rec."Maintainer Code")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("Business Unit Code"; Rec."Business Unit Code")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("Invoice No. Series."; Rec."Invoice No. Series.")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("Credit Memo No. Series."; Rec."Credit Memo No. Series.")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }

                    field("Trans. Shipmment No. Series."; Rec."Trans. Shipmment No. Series.")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                }
                group("E-Invoice")
                {
                    field("E-Invoice Type Code"; Rec."E-Invoice Type Code")
                    {
                        ApplicationArea = All;
                    }
                    field("E-CreditMemo Type Code"; Rec."E-CreditMemo Type Code")
                    {
                        ApplicationArea = All;
                    }
                    field("Invoice Business Process"; Rec."Invoice Business Process")
                    {
                        ApplicationArea = All;
                    }
                    field("Credit Memo Business Process"; Rec."Credit Memo Business Process")
                    {
                        ApplicationArea = All;
                    }
                    field("Identifier Specifications"; Rec."Identifier Specifications")
                    {
                        ApplicationArea = All;
                    }
                    field("Equity of ShareHolders"; Rec."Equity of ShareHolders")
                    {
                        ApplicationArea = All;
                    }
                    field("VAT Date Effective"; Rec."VAT Date Effective")
                    {
                        ApplicationArea = All;
                    }
                }
            }
            group("Sales Tax Representative")
            {
                field("Tax Representative"; Rec."Tax Representative")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if rec."Tax Representative" = true then
                            gEditableTaxRep := true
                        else begin
                            gEditableTaxRep := false;
                        end;
                    end;
                }
                field("Tax Representative Name"; Rec."Tax Representative Name")
                {
                    Editable = gEditableTaxRep;
                    ApplicationArea = All;
                }
                field("Tax Representative Vat Reg No."; Rec."Tax Representative Vat Reg No.")
                {
                    ApplicationArea = All;
                    Editable = gEditableTaxRep;
                }
                field("Tax Representative Address"; Rec."Tax Representative Address")
                {
                    ApplicationArea = All;
                    Editable = gEditableTaxRep;
                }
                field("Tax Representative Address 2"; Rec."Tax Representative Address 2")
                {
                    ApplicationArea = All;
                    Editable = gEditableTaxRep;
                }
                field("Tax Representative City"; Rec."Tax Representative City")
                {
                    ApplicationArea = All;
                    Editable = gEditableTaxRep;
                }
                field("Tax Representative Country"; Rec."Tax Representative Country")
                {
                    ApplicationArea = All;
                    Editable = gEditableTaxRep;
                }
                field("Tax Representative Country/Region Code"; Rec."Tax Rep. Country/Region Code")
                {
                    ApplicationArea = All;
                    Editable = gEditableTaxRep;
                }
                field("Tax Representative Post Code"; Rec."Tax Representative Post Code")
                {
                    ApplicationArea = All;
                    Editable = gEditableTaxRep;
                }
            }
            group("Info XML")
            {
                Caption = 'Info XML';
                field("Security Certificate Path"; Rec."Security Certificate Path")
                {
                    ApplicationArea = All;
                }
                field("Security Certificate pass key"; Rec."Security Certificate pass key")
                {
                    ExtendedDatatype = Masked;
                    ApplicationArea = All;
                }
                field("Response File suffixes"; Rec."Response File suffixes")
                {
                    ApplicationArea = All;
                }
                field("Device Registration File Path"; Rec."Device Registration File Path")
                {
                    ApplicationArea = All;
                }
                field("Device Reg Response File Path "; Rec."Device Reg Response File Path ")
                {
                    ApplicationArea = All;
                }
                field("File Path Sales"; Rec."File Path Sales")
                {
                    ApplicationArea = All;
                }
                field("Sales Response File Path"; Rec."Sales Response File Path")
                {
                    ApplicationArea = All;
                }
                field("Cash Registration File Path"; Rec."Cash Reg Request File Path")
                {
                    ApplicationArea = All;
                }
                field("Cash Reg Response File Path"; Rec."Cash Reg Response File Path")
                {
                    ApplicationArea = All;
                }
                field("Companion Inv. Req. File Path"; Rec."Companion Inv. Req. File Path")
                {
                    ApplicationArea = All;
                }
                field("Companion Inv. Resp. File Path"; Rec."Companion Inv. Resp. File Path")
                {
                    ApplicationArea = All;
                }
                field("Tax Payers Req. File Path"; Rec."Tax Payers Req. File Path")
                {
                    ApplicationArea = All;
                }
                field("Tax Payers Resp. File Path"; Rec."Tax Payers Resp. File Path")
                {
                    ApplicationArea = All;
                }
                group("E-Invoice Section")
                {
                    field("E-Invoice Environment URL"; Rec."E-Invoice Environment URL")
                    {
                        ApplicationArea = All;
                    }
                    field("E-Invoice Register URL"; Rec."E-Invoice Register URL")
                    {
                        ApplicationArea = All;
                    }
                    field("E-Invoice Response File Path"; REc."E-Invoice Response File Path")
                    {
                        ApplicationArea = All;
                    }

                }
                group(URL)
                {
                    field("Register TCR Request URL"; Rec."Register TCR Request URL")
                    {
                        ApplicationArea = All;
                    }
                    field("Register Invoice Request URL"; Rec."Register Invoice Request URL")
                    {
                        ApplicationArea = All;
                    }
                    field("Register Cash Request URL"; Rec."Register Cash Request URL")
                    {
                        ApplicationArea = All;
                    }
                    field("Companion Inv. Request URL"; Rec."Companion Inv. Request URL")
                    {
                        ApplicationArea = All;
                    }
                    field("Environment URL"; Rec."Environment URL")
                    {
                        ApplicationArea = All;
                    }

                    field("FE Activated"; Rec."FE Activated")
                    {
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("EInvoice")
            {
                Caption = 'e-Invoice';
                Image = Setup;
                action(GetCompanySetup)
                {
                    ApplicationArea = All;
                    Caption = 'Get Company Setup';
                    trigger OnAction()
                    var
                        lcompanies: Record Company;
                    begin
                        lcompanies.Reset();
                        lcompanies.SetFilter(name, '<>%1', CompanyName);
                        IF PAGE.RUNMODAL(357, lcompanies) = ACTION::LookupOK THEN begin
                            getCompanySetupData(lcompanies);
                            CurrPage.Update(false);
                        end;
                    end;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        Rec.Reset;
        if not Rec.Get then begin
            Rec.Init;
            Rec.Insert;
        end;
    end;

    local procedure GetCompanySetupData(pcompanies: Record Company)
    var
        FromCompanySetup: Record "Company Setup -  e-Invoice";
    begin
        FromCompanySetup.Reset();
        FromCompanySetup.ChangeCompany(pcompanies.Name);
        if FromCompanySetup.Get() then begin
            Rec.TransferFields(FromCompanySetup, false);
            if not Rec.Insert() then
                Rec.Modify()
        end;
    end;

    var
        gEditableTaxRep: Boolean;
        ErrorTxt001: Label 'TCR Code s''mund te jete boshe';//TCR Code s''mund te jete boshe
}