table 50002 "MasatDisiplinore"
{
    Caption = 'Employees Warning';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "EmployeeNo."; Code[20])
        {
            Caption = 'EmployeeNo.';
            DataClassification = ToBeClassified;
            TableRelation = Employee."No.";
        }
        field(2; "Warning"; Text[500])
        {
            Caption = 'Warning';
            DataClassification = ToBeClassified;
            TableRelation = Warning.Warnings;
        }
        field(3; Data; Date)
        {
            Caption = 'Data';
            DataClassification = ToBeClassified;
        }
        field(4; "Comment"; Text[250])
        {
            Caption = 'Comment';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(Key1; "EmployeeNo.", Warning, Data)
        {
            Clustered = true;
        }
    }
}