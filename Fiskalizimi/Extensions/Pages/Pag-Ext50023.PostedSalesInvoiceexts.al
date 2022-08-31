Pageextension /*50303*/50023 "Posted Sales Invoice exts" extends "Posted Sales Invoice"
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
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Fiscalised invoice number"; Rec."Fiscalised invoice number")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Invoice Type"; Rec."Invoice Type")
                {
                    Editable = false;
                    ApplicationArea = All;
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
                    ApplicationArea = ALL;
                }
                field(UUID; Rec.UUID)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Fiscalization date"; Rec."Fiscalization date")
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
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Correc. Inv Type"; Rec."Correc. Inv Type")
                {
                    Editable = false;
                    ApplicationArea = all;
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
                field("Is EInvoice"; Rec."Is E-Invoice")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(EIC; Rec.EIC)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("E-Invoice Type Code"; Rec."E-Invoice Type Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Invoice Business Process"; Rec."Invoice Business Process")
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
        addafter(ChangePaymentService)
        {
            // group("E Invoice")
            // {
            //     Caption = 'E-Invoice';
            //     Image = Administration;
            //     action("PRJ Import_eInvoice")
            //     {
            //         ApplicationArea = All;
            //         Caption = 'Create and Save e-Invoice';
            //         Ellipsis = true;
            //         Image = Export;
            //         Promoted = true;
            //         PromotedCategory = Category6;
            //         trigger OnAction();
            //         var
            //             lDocType: Option Invoice,"Credit Memo",;
            //             lType: Option Save,Update,Open;
            //             leInvoiceMgt: codeunit XMLGenerator;
            //             lSalesCrMemoHeader: Record "Sales Cr.Memo Header";
            //             lGenJournalLine: Record "Gen. Journal Line";
            //             lBankAccountLedgerEntry: Record "Bank Account Ledger Entry";
            //         begin
            //             leInvoiceMgt.Open_File(lType::Save, lDocType::Invoice, Rec, lSalesCrMemoHeader, lGenJournalLine, lBankAccountLedgerEntry, Rec."No.");
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
                    ResEInvoice.GetNo(Rec."No.", gDocType::Invoice);
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
                    XmlGen.Resend_EInvoice(rec."E-Invoice File Name", leiSetup."File Path Sales", rec."No.", gDocType::Invoice)
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        //Ridergimi i soap+ubl
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
        //Ridergimi i soap+ubl
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