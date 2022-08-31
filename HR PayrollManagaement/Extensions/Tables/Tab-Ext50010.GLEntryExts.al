tableextension 50010 "G/L Entry Exts" extends "G/L Entry"
{
    fields
    {
        field(50172; "Allocated Dimension"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Allocated Dimension';
        }
        field(50173; "Dimension allocator"; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Dimension allocator';
        }
    }
}