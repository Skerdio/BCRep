pageextension /*50314*/50034 "Item Card Exts" extends "Item Card"
{
    layout
    {
        addlast("Prices & Sales")
        {
            field("Package Type"; Rec."Package Type")
            {
                ApplicationArea = All;
            }
        }
    }
}