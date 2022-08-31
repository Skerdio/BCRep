pageextension /*50307*/50027 "Bank Account Card Exts" extends "Bank Account Card"
{
    layout
    {
        addlast(content)
        {
            group(Declaration)
            {
                field("Is Cash"; Rec."Is Cash")
                {
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if Rec."Is Cash" = true then
                            gEditable := true
                        else begin
                            gEditable := false;
                            Clear(Rec."Cash Register Operation");
                        end;
                    end;
                }
                field("Cash Register Operation"; Rec."Cash Register Operation")
                {
                    Editable = gEditable;
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        IF Rec."Cash Register Operation" <> Rec."Cash Register Operation"::INITIAL then
                            Error(ErrorTxt001);
                    end;
                }
                field("Change Date"; Rec."Change Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Declaration Date"; Rec."Declaration Date")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Subseq Deliv Type"; Rec."Subseq Deliv Type")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(FCDC; Rec.FCDC)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field(UUID; Rec.UUID)
                {
                    Editable = false;
                    ApplicationArea = aLL;
                }
                field("Invoice File Name"; Rec."Invoice File Name")
                {
                    Editable = false;
                    ApplicationArea = All;
                }
                field("Holder Name"; Rec."Holder Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        addafter("&Bank Acc.")
        {
            group("Fiscalization")
            {
                Caption = 'Fiscalization';
                Image = Administration;

                action("Declare Cash Deposite")
                {
                    ApplicationArea = All;
                    Caption = 'Declare Cash Deposite';
                    Ellipsis = true;
                    Image = Export;
                    Promoted = true;
                    PromotedCategory = Category6;

                    trigger OnAction();
                    var
                        lDocType: Option Invoice,"Credit Memo","Bank Account","Gen. Journal Line";
                        lType: Option Save,Update,Open;
                        leInvoiceMgt: Codeunit XMLGenerator;
                        lSalesInvoiceHeader: Record "Sales Invoice Header";
                        lSalesCrMemoHeader: Record "Sales Cr.Memo Header";
                        lGenJournalLine: Record "Gen. Journal Line";
                        lBankAccountLedgerEntry: Record "Bank Account Ledger Entry";
                    begin
                        leInvoiceMgt.Open_File(/*lType::Save,*/ lDocType::"Bank Account", lSalesInvoiceHeader, lSalesCrMemoHeader, lGenJournalLine, lBankAccountLedgerEntry, Rec."No.");
                    end;
                }
            }
            action("Refiscalize Invoice")
            {
                Visible = gVisible;
                ApplicationArea = all;
                Image = SendConfirmation;

                trigger OnAction()
                var
                    ResEInvoice: Report "Refiscalize Invoice";
                begin
                    ResEInvoice.GetNo(Rec."No.", gDocType::"Bank Account");
                    ResEInvoice.RunModal();
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        if rec.FCDC = '' then
            gVisible := true
        else
            gVisible := false;
    end;

    var
        gEditable: Boolean;
        gVisible: Boolean;
        gDocType: Option Invoice,"Credit Memo","Bank Account";
        ErrorTxt001: Label 'Veprimi i terheqjes/depozitimit nuk mund te kryhet pa kryer deklarimin fillestar te arkes';//Withdrawal / deposit operation can not be performed without completing the initial cash declaration
}