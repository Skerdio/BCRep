pageextension /*50308*/50028 "SalesInvSubform Exts" extends "Sales Invoice Subform"
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
                ApplicationArea = all;
                TableRelation = "Discount Reason";
            }
        }
    }
}