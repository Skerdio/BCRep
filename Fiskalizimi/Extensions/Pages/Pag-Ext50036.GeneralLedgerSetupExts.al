pageextension /*50316*/50036 "General Ledger Setup Exts" extends "General Ledger Setup"
{
    layout
    {
        addlast(General)
        {
            field("Allow Inv Disc For G/L Account"; Rec."Allow Inv Disc For G/L Account")
            {
                ApplicationArea = All;
            }
        }
    }
}
