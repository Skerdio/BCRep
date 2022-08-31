table 50003 Warning
{
    Caption = 'Warning List';
    DataClassification = ToBeClassified;
    LookupPageId = Warning;
    DrillDownPageId = Warning;

    fields
    {
        field(2; Warnings; Text[500])
        {
            Caption = 'Warnings';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Warnings)
        {
            Clustered = true;
        }
    }
}