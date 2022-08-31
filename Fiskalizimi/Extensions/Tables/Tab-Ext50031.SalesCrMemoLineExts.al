tableextension /*50309*/50031 "Sales Cr.Memo Line Exts" extends "Sales Cr.Memo Line"
{
    fields
    {
        field(50300; "Is Investment"; Boolean)
        {
            Caption = 'Is Investment';
            DataClassification = ToBeClassified;
        }
        field(50301; "Package Type"; Enum "Package Type")
        {
            Caption = 'Package type';
        }
    }
}