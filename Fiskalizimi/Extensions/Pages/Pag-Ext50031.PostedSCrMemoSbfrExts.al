pageextension /*50311*/50031 "Posted S.Cr. Memo Sbfr Exts" extends "Posted Sales Cr. Memo Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("Is Investment"; Rec."Is Investment")
            {
                ApplicationArea = All;
                Editable = false;
            }
            field("Package Type"; Rec."Package Type")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
}