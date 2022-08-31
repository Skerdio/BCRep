pageextension /*50317*/50037 "Sales Order Exts" extends "Sales Order"
{
    layout
    {
        addafter("Payment Method Code")
        {
            field("Bank ACC. No."; Rec."Bank ACC. No.")
            {
                ApplicationArea = All;
                TableRelation = IF ("Bal. Account Type" = CONST("G/L Account")) "G/L Account"
                ELSE
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
        //  addlast(content)
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
                            clear(Rec."Is E-Invoice")
                        end
                        else
                            isEinvoice := true;
                    end;
                }
                field(TypeofSelfIss; Rec."Type of Self Iss")
                {
                    ApplicationArea = All;
                }
                field("Is Reversed"; Rec."Is Reversed")
                {
                    ApplicationArea = All;
                }
                field("Is Simplified Inv"; Rec."Is Simplified Inv")
                {
                    ApplicationArea = All;
                }
                field("Is Summary"; Rec."Is Summary")
                {
                    ApplicationArea = ALL;
                    trigger OnValidate()
                    begin
                        if rec."Is Summary" = true then
                            gEditableSummary := true
                        else begin
                            gEditableSummary := false;
                            Clear(Rec."Sum Inv IIC Refs");
                        end;
                    end;
                }
                field("Sum Inv IIC Refs"; Rec."Sum Inv IIC Refs")
                {
                    Editable = gEditableSummary;
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
                        if PostedSalesInvs.RunModal = ACTION::LookupOK then
                            Rec."Sum Inv IIC Refs" := PostedSalesInvs.GetSelectionFilter;
                    end;
                }
                field("CorrectiveInv Type"; Rec."Correc. Inv Type")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Corrective/Is Bad Debt Invoice"; Rec."Corrective/Is Bad Debt Invoice")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    var
                        EnumValue: Enum "Corrective Envoice Type";
                    begin
                        if (rec."Corrective/Is Bad Debt Invoice" = rec."Corrective/Is Bad Debt Invoice"::"Is Corrective") then begin
                            gEditableCorrective := true;
                            rec."Correc. Inv Type" := EnumValue::DEBIT;
                        end
                        else
                            if rec."Corrective/Is Bad Debt Invoice" = rec."Corrective/Is Bad Debt Invoice"::"Is Bad Debt Invoice" then
                                Error(ErrorTxt001)
                            else begin
                                gEditableCorrective := false;
                                clear(Rec."Inv IIC Refs");
                                Clear(rec."Correc. Inv Type");
                            end;
                    end;
                }
                field("Inv IIC Refs"; Rec."Inv IIC Refs")
                {
                    Editable = gEditableCorrective;
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
                field("E-Invoice Type Code"; rec."E-Invoice Type Code")
                {
                    ApplicationArea = All;
                }
                field("Invoice Business Process"; Rec."Invoice Business Process")
                {
                    ApplicationArea = all;
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
                                Error(ErrorTxt002);
                        end;
                    }
                    field("End Date"; Rec."End Date")
                    {
                        ApplicationArea = All;
                        trigger OnValidate()
                        begin
                            if rec."End Date" < rec."Start Date" then
                                Error(ErrorTxt002);
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
                field("Order Reference"; Rec."Order Reference")
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
        modify(PostPrepaymentInvoice)
        {
            Caption = 'Post and Fiscalize Prepayment';
        }
    }
    var
        isEinvoice: Boolean;
        ErrorTxt001: Label 'Nje fature shitje nuk mund te jete e tipit Borxh i keq';//A sales invoice cannot be of the Bad Debt type
        ErrorTxt002: Label 'End Date s''mund te jete para Start Date';//'End Date can not be before Start Date';
        gEditableCorrective: Boolean;
        gEditableSummary: Boolean;
        gEditableBadDebtICCRef: Boolean;
        gMandatoryDiscReas: Boolean;

    trigger OnAfterGetRecord()
    begin
        if (rec."Corrective/Is Bad Debt Invoice" = rec."Corrective/Is Bad Debt Invoice"::" ") then begin
            gEditableBadDebtICCRef := false;
            rec."Correc. Inv Type" := rec."Correc. Inv Type"::" ";
            clear(Rec."Inv IIC Refs");
            Clear(rec."Correc. Inv Type");
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
            Error(ErrorTxt002);
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