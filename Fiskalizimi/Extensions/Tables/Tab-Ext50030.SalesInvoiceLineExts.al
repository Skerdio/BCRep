tableextension /*50308*/50030 SalesInvoiceExts extends "Sales Invoice Line"
{
    fields
    {
        field(50300; "Is Investment"; Boolean)
        {
            Editable = false;
            Caption = 'Is Investment';
            DataClassification = ToBeClassified;
        }
        field(50301; "Package Type"; Enum "Package Type")
        {
            Caption = 'Package type';
        }
    }
}