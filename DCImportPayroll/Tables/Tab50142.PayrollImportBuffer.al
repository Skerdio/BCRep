table 50142 "PayrollImportBuffer"
{
    Caption = 'Payroll Import Buffer';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(2; KolonaA; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(3; KolonaB; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; KolonaC; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; KolonaD; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Excel Row No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "With Error"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(8; Imported; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Employee No."; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }
}
