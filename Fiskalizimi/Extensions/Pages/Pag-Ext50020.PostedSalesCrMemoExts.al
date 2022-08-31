
pageextension /*50300*/50020 "PostedSalesCrMemo Exts" extends "Posted Sales Credit Memo"
{
    layout
    {
        modify("Your Reference")
        {
            Editable = false;
        }
        addafter("Payment Method Code")
        {
            field("Bank ACC. No."; Rec."Bank ACC. No.")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
        addfirst("Shipping and Billing")
        {
            field("Delivery Require"; Rec."Delivery Require")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
        // addlast(content)
        addafter(General)
        {
            group(Fiscalization)
            {
                Caption = 'Fiscalization';

                field("FE Deactivate"; Rec."FE Deactivate")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Fiscalised invoice number"; Rec."Fiscalised invoice number")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Invoice Type"; Rec."Invoice Type")
                {
                    Editable = false;
                    ApplicationArea = all;
                }

                field("Type of Self Iss"; Rec."Type of Self Iss")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(IsReversed; Rec."Is Reversed")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(IsSimplifiedInv; Rec."Is Simplified Inv")
                {
                    Editable = false;
                    ApplicationArea = all;
                }

                field(NSLF; Rec.NSLF)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(NIVF; Rec.NIVF)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(UUID; Rec.UUID)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Fiscalization Date"; Rec."Fiscalization Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Is Summary"; Rec."Is Summary")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(SumInvIICRefs; Rec."Sum Inv IIC Refs")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Corrective/Is Bad Debt Invoice"; Rec."Corrective/Is Bad Debt Invoice")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Correc. Inv Type"; Rec."Correc. Inv Type")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Inv IIC Refs"; Rec."Inv IIC Refs")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Invoice File Name"; Rec."Invoice File Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Subseq Deliv Type"; Rec."Subseq Deliv Type")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
            group("E-Invoice")
            {
                field(IsEInvoice; Rec."Is E-Invoice")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(EIC; Rec.EIC)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("E-CreditMemo Type Code"; Rec."E-CreditMemo Type Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("E-Credit Memo Business Process"; Rec."Credit Memo Business Process")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                // field("Reason for Invoice Item Charge"; Rec."Reason for Invoice Item Charge")
                // {
                //     ApplicationArea = All;
                //     Editable = false;
                // }
                // field("Accounting Charge"; Rec."Accounting Charge")
                // {
                //     ApplicationArea = All;
                //     Editable = false;
                // }
                field("Discount Reason"; Rec."Discount Reason")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("E-Invoice File Name"; "E-Invoice File Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }

                group("Billing Period")
                {
                    field("Start Date"; Rec."Start Date")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("End Date"; Rec."End Date")
                    {
                        ApplicationArea = All;
                        Editable = false;
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
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Contract Doc. Reference"; Rec."Contract Doc. Reference")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Order Reference"; Rec."Order Reference")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Sales Order Reference"; Rec."Sales Order Reference")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Receipt Doc. Reference"; Rec."Receipt Doc. Reference")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Despatch Doc. Reference"; Rec."Despatch Doc. Reference")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Originator Doc. Reference"; Rec."Originator Doc. Reference")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Additional Doc. Reference"; Rec."Additional Doc. Reference")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        addlast("&Cr. Memo")
        {
            // group("E Invoice")
            // {
            //     Caption = 'E-Invoice';
            //     Image = Administration;

            //     action("Import_eInvoice")
            //     {
            //         ApplicationArea = All;
            //         Caption = 'Create and Save e-Invoice';
            //         Ellipsis = true;
            //         Image = Export;
            //         Promoted = true;
            //         PromotedCategory = Category6;

            //         trigger OnAction();
            //         var
            //             lDocType: Option Invoice,"Credit Memo";
            //             lType: Option Save,Update,Open;
            //             leInvoiceMgt: codeunit XMLGenerator;
            //             lSalesInvoiceHeader: Record "Sales Invoice Header";
            //             lGenJournalLine: Record "Gen. Journal Line";
            //             lBankAccountLedgerEntry: Record "Bank Account Ledger Entry";
            //         begin
            //             leInvoiceMgt.Open_File(lType::Save, lDocType::"Credit Memo", lSalesInvoiceHeader, Rec, lGenJournalLine, lBankAccountLedgerEntry, Rec."No.");
            //         end;
            //     }
            // }
            action("Refiscalize Invoice")
            {
                Visible = gVisibleFisc;
                ApplicationArea = all;
                Image = SendConfirmation;
                Caption = 'Refiscalize Invoice';
                trigger OnAction()
                var
                    ResEInvoice: Report "Refiscalize Invoice";
                begin
                    ResEInvoice.GetNo(Rec."No.", gDocType::"Credit Memo");
                    ResEInvoice.RunModal();
                end;
            }
            action("Resend E-Invoice")
            {
                Visible = gVisibleEInv;
                ApplicationArea = all;
                Image = SendConfirmation;
                Caption = 'Resend E-Invoice';
                trigger OnAction()
                var
                    XmlGen: Codeunit XMLGenerator;
                    leiSetup: Record "Company Setup -  e-Invoice";
                begin
                    leiSetup.Get();
                    XmlGen.Resend_EInvoice(rec."E-Invoice File Name", leiSetup."File Path Sales", rec."No.", gDocType::"Credit Memo")
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        //ridergimi soap+ubl
        if rec.NIVF = '' then begin
            if Rec."FE Deactivate" = false then
                gVisibleFisc := true
            else
                gVisibleFisc := false
        end
        else
            gVisibleFisc := false;
        //Ridergimi i UBLRequest
        if (rec.EIC = '') and (rec.NIVF <> '') then begin
            if Rec."FE Deactivate" = false then
                gVisibleEInv := true
            else
                gVisibleEInv := false
        end
        else
            gVisibleEInv := false;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        //ridergimi i Soap+Ubl
        if rec.NIVF = '' then begin
            if Rec."FE Deactivate" = false then
                gVisibleFisc := true
            else
                gVisibleFisc := false
        end
        else
            gVisibleFisc := false;
        //Ridergimi i UBLRequest
        if (rec.EIC = '') and (rec.NIVF <> '') then begin
            if Rec."FE Deactivate" = false then
                gVisibleEInv := true
            else
                gVisibleEInv := false
        end
        else
            gVisibleEInv := false;
    end;

    var
        gVisibleFisc: Boolean;
        gVisibleEInv: Boolean;
        gDocType: Option Invoice,"Credit Memo","Bank Account";
}