pageextension /*50326*/50046 "Bank Account Led. Entries Exts" extends "Bank Account Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field(UUID; Rec.UUID)
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Cash Register Operation"; Rec."Cash Register Operation")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(FCDC; Rec.FCDC)
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Change Date"; Rec."Change Date")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Invoice File Name"; Rec."Invoice File Name")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Subseq Deliv Type"; Rec."Subseq Deliv Type")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
    actions
    {
        addlast(navigation)
        {
            action("Refiscalize Invoice")
            {
                Visible = gVisible;
                ApplicationArea = all;
                Image = SendConfirmation;
                trigger OnAction()
                var
                    ResEInvoice: Report "Refiscalize Invoice";
                begin
                    ResEInvoice.GetBankAccLedgEntryNo(Rec."Entry No.", gDocType::"Bank Account Ledger Entry");
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
        gVisible: Boolean;
        gDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order","Bank Account Ledger Entry";
}