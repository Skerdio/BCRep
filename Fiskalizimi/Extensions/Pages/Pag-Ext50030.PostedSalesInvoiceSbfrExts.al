
pageextension /*50310*/50030 "Posted Sales Inv. Subform Exts" extends "Posted Sales Invoice Subform"
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