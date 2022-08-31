pageextension /*50318*/50038 "Sales Return Order Ext" extends "Sales Return Order"
{
    layout
    {
        addafter("Payment Method Code")
        {
            field("Bank ACC. No."; rec."Bank ACC. No.")
            {
                ApplicationArea = All;
                TableRelation = IF ("Bal. Account Type" = CONST("G/L Account")) "G/L Account"
                else
                IF ("Invoice Type" = const("CASH")) "Bank Account" where("Is Cash" = const(true))
                else
                IF ("Invoice Type" = const("NONCASH")) "Bank Account" where("Is Cash" = const(false));
            }
        }
        addfirst("Shipping and Billing")
        {
            field("Delivery Require"; Rec."Delivery Require")
            {
                ApplicationArea = All;
            }
        }
        addafter(General)
        // addlast(content)
        {
            group(Fiscalization)
            {
                field("FE Deactivate"; Rec."FE Deactivate")
                {
                    ApplicationArea = All;
                }
                field("Invoice Type"; Rec."Invoice Type")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if rec."Invoice Type" = REc."Invoice Type"::CASH then begin
                            isEinvoice := false;
                            clear(Rec."Is E-Invoice");
                        end
                        else
                            isEinvoice := true;
                    end;
                }
                field("Type of Self Iss"; Rec."Type of Self Iss")
                {
                    ApplicationArea = All;
                }
                field("Is Reversed"; Rec."Is Reversed")
                {
                    ApplicationArea = All;
                }
                field("Is Simplified Inv"; Rec."Is Simplified Inv")
                {
                    ApplicationArea = all;
                }
                field("Is Summary"; Rec."Is Summary")
                {
                    ApplicationArea = ALL;
                    trigger OnValidate()
                    begin
                        IF Rec."Is Summary" = true THEN
                            gEditableSummary := true
                        else begin
                            gEditableSummary := false;
                            Clear(Rec."Sum Inv IIC Refs")
                        end;
                    end;
                }
                field("Sum Inv IIC Refs"; Rec."Sum Inv IIC Refs")
                {
                    Editable = gEditableSummary;
                    ApplicationArea = All;
                    trigger OnLookup(var Text: Text): Boolean
                    var
                        SalesInvoice: Record "Sales Invoice Header";
                        PostedSalesInvoice: Page "Posted Sales Invoices LookUp";
                    begin
                        SalesInvoice.Reset();
                        SalesInvoice.SetFilter(SalesInvoice.NSLF, '<>%1', '');
                        SalesInvoice.SetFilter(SalesInvoice."Sell-to Customer No.", '=%1', Rec."Sell-to Customer No.");
                        PostedSalesInvoice.SetTableView(SalesInvoice);
                        PostedSalesInvoice.LookupMode(true);
                        if PostedSalesInvoice.RunModal = Action::LookupOK then
                            Rec."Sum Inv IIC Refs" := PostedSalesInvoice.GetSelectionFilter();
                    end;
                }
                field("Corrective/Is Bad Debt Invoice"; Rec."Corrective/Is Bad Debt Invoice")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        if (rec."Corrective/Is Bad Debt Invoice" = rec."Corrective/Is Bad Debt Invoice"::" ") then begin
                            gEditableBadDebtICCRef := false;
                            gEditableCorrective := false;
                            rec."Correc. Inv Type" := rec."Correc. Inv Type"::" ";
                            clear(Rec."Inv IIC Refs");
                        end
                        else begin
                            gEditableBadDebtICCRef := true;
                            if rec."Corrective/Is Bad Debt Invoice" = rec."Corrective/Is Bad Debt Invoice"::"Is Corrective" then begin
                                gEditableCorrective := true;
                            end
                            else
                                gEditableCorrective := false;
                        end;
                    end;
                }
                field("CorrectiveInv Type"; Rec."Correc. Inv Type")
                {
                    Editable = gEditableCorrective;
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        EnumValue: Enum "Corrective Envoice Type";
                    begin
                        if rec."Correc. Inv Type" = EnumValue::Debit then begin
                            Error(ErrorTxt002);
                        end
                        else
                            gEditableCorrective := true;
                    end;
                }
                field("Inv IIC Refs"; Rec."Inv IIC Refs")
                {
                    Editable = gEditableBadDebtICCRef;
                    ApplicationArea = All;

                    trigger OnDrillDown()
                    var
                        SalesInvoice: Record "Sales Invoice Header";
                        PostedSalesInvs: Page "Posted Sales Invoices LookUp";
                    begin
                        SalesInvoice.Reset();
                        SalesInvoice.SetFilter(SalesInvoice.NSLF, '<>%1', '');
                        SalesInvoice.SetFilter(SalesInvoice."Sell-to Customer No.", '=%1', Rec."Sell-to Customer No.");
                        PostedSalesInvs.SetTableView(SalesInvoice);
                        PostedSalesInvs.LookupMode(true);
                        if Page.RunModal(pAGE::"Posted Sales Invoices LookUp", SalesInvoice) = Action::LookupOK then
                            Rec."Inv IIC Refs" := SalesInvoice.NSLF;
                    end;
                }
            }
            group("E-Invoice")
            {
                field("Is E-Invoice"; Rec."Is E-Invoice")
                {
                    ApplicationArea = All;
                    Editable = isEinvoice;
                    trigger OnValidate()
                    begin
                        if (rec."Is E-Invoice" = true) and (rec."Invoice Discount Value" <> 0) then
                            gMandatoryDiscReas := true
                        else
                            gMandatoryDiscReas := false;
                    end;
                }
                field("E-CreditMemo Type Code"; Rec."E-CreditMemo Type Code")
                {
                    ApplicationArea = All;
                }
                field("Credit Memo Business Process"; Rec."Credit Memo Business Process")
                {
                    ApplicationArea = All;
                }
                // field("Reason for Invoice Item Charge"; Rec."Reason for Invoice Item Charge")
                // {
                //     ApplicationArea = All;
                // }
                // field("Accounting Charge"; Rec."Accounting Charge")
                // {
                //     ApplicationArea = All;
                // }
                field("Discount Reason"; Rec."Discount Reason")
                {
                    ApplicationArea = All;
                    TableRelation = "Discount Reason";
                    ShowMandatory = gMandatoryDiscReas;
                }
                group("Billing Period")
                {
                    field("Start Date"; Rec."Start Date")
                    {
                        ApplicationArea = All;
                        trigger OnValidate()
                        begin
                            if rec."End Date" < rec."Start Date" then
                                Error(ErrorTxt001);
                        end;
                    }
                    field("End Date"; Rec."End Date")
                    {
                        ApplicationArea = All;
                        trigger OnValidate()
                        begin
                            if rec."End Date" < rec."Start Date" then
                                Error(ErrorTxt001);
                        end;
                    }
                }
            }
        }
        addlast(content)
        {
            group(References)
            {
                field("Project Reference"; Rec."Project Reference")
                {
                    ApplicationArea = All;
                }
                field("Contract Doc. Reference"; Rec."Contract Doc. Reference")
                {
                    ApplicationArea = All;
                }
                field("Order Reference"; rec."Order Reference")
                {
                    ApplicationArea = All;
                }
                field("Sales Order Reference"; Rec."Sales Order Reference")
                {
                    ApplicationArea = All;
                }
                field("Receipt Doc. Reference"; Rec."Receipt Doc. Reference")
                {
                    ApplicationArea = All;
                }
                field("Despatch Doc. Reference"; Rec."Despatch Doc. Reference")
                {
                    ApplicationArea = All;
                }
                field("Originator Doc. Reference"; Rec."Originator Doc. Reference")
                {
                    ApplicationArea = All;
                }
                field("Additional Doc. Reference"; Rec."Additional Doc. Reference")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        modify(Post)
        {
            Caption = 'Post and Fiscalize';
        }
    }
    var
        isEinvoice: Boolean;
        gEditableCorrective: Boolean;
        gEditableSummary: Boolean;
        gEditableBadDebtICCRef: Boolean;
        gMandatoryDiscReas: Boolean;
        ErrorTxt001: Label 'End Date s''mund te jete para Start Date';//'End Date can not be before Start Date';
        ErrorTxt002: Label 'Nuk mund te zgjidhni vlere te tipit "Debit"';//'You can not select "Debit" type values';

    trigger OnAfterGetRecord()
    begin
        if (rec."Corrective/Is Bad Debt Invoice" = rec."Corrective/Is Bad Debt Invoice"::" ") then begin
            gEditableBadDebtICCRef := false;
            rec."Correc. Inv Type" := rec."Correc. Inv Type"::" ";
            clear(Rec."Inv IIC Refs");
        end
        else begin
            gEditableBadDebtICCRef := true;
            if rec."Corrective/Is Bad Debt Invoice" = rec."Corrective/Is Bad Debt Invoice"::"Is Corrective" then begin
                gEditableCorrective := true;
            end
            else
                gEditableCorrective := false;
        end;
        if rec."Is Summary" = true then
            gEditableSummary := true
        else begin
            gEditableSummary := false;
            Clear(rec."Sum Inv IIC Refs");
        end;
        if rec."End Date" < rec."Start Date" then
            Error(ErrorTxt001);
        if (rec."Invoice Discount Value" <> 0) and (rec."Is E-Invoice") then
            gMandatoryDiscReas := true
        else
            gMandatoryDiscReas := false;
        if rec."Invoice Type" = rec."Invoice Type"::CASH then begin
            isEinvoice := false;
            clear(Rec."Is E-Invoice")
        end
        else
            isEinvoice := true;
    end;
}