pageextension 50153 UserSetupExts extends "User Setup"
{
    layout
    {
        addlast(Control1)
        {
            field("Edit Confidential Information"; rec."Edit Confidential Information")
            {
                ApplicationArea = All;
            }
        }
    }
}