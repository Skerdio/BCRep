tableextension /*50313*/50035 "General Ledger Setup Exts" extends "General Ledger Setup"
{
    fields
    {
        field(50300; "Allow Inv Disc For G/L Account"; Boolean)
        {
            Caption = 'Allow Invoice Discount For G/L Account';
            DataClassification = ToBeClassified;
        }
    }
}