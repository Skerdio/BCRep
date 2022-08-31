pageextension /*50302*/50022 "User Setup exts" extends "User Setup"
{
    layout
    {
        addlast(Control1)
        {
            field("Operator Code"; Rec."Operator Code")
            {
                ApplicationArea = All;

                // trigger OnDrillDown()
                // var
                //     CashUserSetupPage: Page CashUserSetup;
                //     CashUserSetup: Record CashUserSetup;
                // begin
                //     CashUserSetupPage.LookupMode(true);
                //     if Page.RunModal(Page::CashUserSetup, CashUserSetup) = Action::LookupOK THEN begin
                //         rec."Operator Code" := CAshUserSetup."Operator Code";
                //         rec."Bank Acc. No." := CashUserSetup."Bank Acc. No."
                //     end;
                // end;
            }
            // field("Bank Acc. No."; rec."Bank Acc. No.")
            // {
            //     ApplicationArea = All;
            //     Editable = false;
            // }
        }
    }
}