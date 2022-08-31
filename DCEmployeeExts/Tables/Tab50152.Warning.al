table 50152 Warning
{
    Caption = 'Warning';
    DataClassification = ToBeClassified;

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