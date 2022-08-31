pageextension 50071 "Edit User Setup Exts" extends "User Setup"
{
    layout
    {
        addlast(Control1)
        {
            field("Editable"; Rec."Editable")
            {
                ApplicationArea = All;
            }
        }
    }
}
