table 50143 ImportPayrollLog
{
    Caption = 'ImportPayrollLog';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "EntryNo."; Integer)
        {
            Caption = 'EntryNo.';
            DataClassification = ToBeClassified;
        }
        field(2; KolonaA; Decimal)
        {
            Caption = 'KolonaA';
            DataClassification = ToBeClassified;
        }
        field(3; KolonaB; Decimal)
        {
            Caption = 'KolonaB';
            DataClassification = ToBeClassified;
        }
        field(4; KolonaC; Decimal)
        {
            Caption = 'KolonaC';
            DataClassification = ToBeClassified;
        }
        field(5; KolonaD; Decimal)
        {
            Caption = 'KolonaD';
            DataClassification = ToBeClassified;
        }
        field(6; "Entry DateTime"; DateTime)
        {
            Caption = 'Entry DateTime';
            DataClassification = CustomerContent;
        }
        field(7; "Excel Row No."; Integer)
        {
            Caption = 'Excel Row No.';
            DataClassification = ToBeClassified;
        }
        field(8; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            DataClassification = ToBeClassified;
        }
        field(9; "Text"; Text[250])
        {
            Caption = 'Text';
            DataClassification = CustomerContent;
        }
    }
    keys
    {
        key(PK; "EntryNo.")
        {
            Clustered = true;
        }
    }

}
