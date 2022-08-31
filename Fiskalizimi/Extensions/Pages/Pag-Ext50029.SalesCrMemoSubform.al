pageextension /*50309*/50029 "Sales Cr. Memo Subform Exts" extends "Sales Cr. Memo Subform"
{
    layout
    {
        addlast(Control1)
        {
            field("Is Investment"; Rec."Is Investment")
            {
                Editable = true;
                ApplicationArea = All;
            }
            field("Package Type"; Rec."Package Type")
            {
                Editable = false;
                ApplicationArea = All;
            }
            field("Reason for Discount on invoice Item"; Rec."Reas. for Disc. On Inv. Item")
            {
                ApplicationArea = All;
                TableRelation = "Discount Reason";
            }
        }
    }
}