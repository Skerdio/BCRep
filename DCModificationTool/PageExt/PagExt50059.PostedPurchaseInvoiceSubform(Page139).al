pageextension 50059 PagExtPostedPurchInvoiceSubf extends "Posted Purch. Invoice Subform"
{
    actions
    {
        addlast("&Line")
        {
            action(ChangeAccNo)
            {
                ApplicationArea = All;
                Caption = 'Change Account No.';
                Image = Change;
                Visible = false;

                trigger OnAction()
                var
                    lPageChangeAccNo: Page "Change Account No";
                    lErr: Label 'Account cannot be changed because type is not G/L Account.';
                begin
                    if not (Rec.Type = Rec.Type::"G/L Account") then
                        Error(lErr);
                    lPageChangeAccNo.SetRec(1, 1, Rec."Document No.", Rec."No.");
                    lPageChangeAccNo.RunModal();
                end;
            }
        }
    }

    var
        gModifyDocTool: Codeunit "Modify Documents Tool";
        gVisibleAction: Boolean;

    trigger OnOpenPage()
    var
        lUserSetup: Record "User Setup";
    begin
        gVisibleAction := lUserSetup.CheckVisibilityModifyDocPageActions();
    end;
}