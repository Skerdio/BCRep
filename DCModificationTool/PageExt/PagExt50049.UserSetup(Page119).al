pageextension 50049 PagExtUserSetup extends "User Setup"
{
    layout
    {
        addlast(Control1)
        {
            field("View Modify Doc Page Act"; Rec."View Modify Doc Page Act")
            {
                ApplicationArea = All;
            }
        }
    }
}