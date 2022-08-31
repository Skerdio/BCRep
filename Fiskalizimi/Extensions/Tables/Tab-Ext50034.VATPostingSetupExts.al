tableextension /*50312*/50034 "VAT Posting Setup Exts" extends "VAT Posting Setup"
{
    fields
    {
        field(50300; "VAT Excluded"; Boolean)
        {
            Caption = 'VAT Excluded';//'VAT Excluded';
            DataClassification = ToBeClassified;
        }
        field(50301; "VAT Exemption Type"; Enum "Exempt from VAT")
        {
            Caption = 'VAT Exemption Type';// VAT exemption Type
            DataClassification = ToBeClassified;
        }
        field(50302; "Export"; Boolean)
        {
            Caption = 'Export';
            DataClassification = ToBeClassified;
        }
    }
}