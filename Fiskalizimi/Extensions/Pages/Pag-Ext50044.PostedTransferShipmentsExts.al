pageextension /*50324*/ 50044 "Posted Transfer Shipments Exts" extends "Posted Transfer Shipments"
{
    layout
    {
        addfirst(Control1)
        {
            field("Fiscalised Invoice number"; Rec."Fiscalised Invoice number")
            {
                ApplicationArea = All;
            }
        }
        addlast(Control1)
        {
            field(NIVFSH; Rec.NIVFSH)
            {
                ApplicationArea = All;
            }
            field(NSLFSH; Rec.NSLFSH)
            {
                ApplicationArea = All;
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
                    ResEInvoice: Report "Refiscalize Companion Invoice";
                begin
                    ResEInvoice.GetNo(Rec."No.", gDocType::"Transfer Order", rec."Invoice File Name");
                    ResEInvoice.RunModal();
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        if rec.NIVFSH = '' then
            gVisible := true
        else
            gVisible := false;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        if rec.NIVFSH = '' then
            gVisible := true
        else
            gVisible := false;
    end;

    var
        gVisible: Boolean;
        gDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order";
}