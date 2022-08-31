table 50001 EmployeeJobTitles
{
    Caption = 'Employee Job Titles';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "EmployeeNo."; Code[20])
        {
            Caption = 'EmployeeNo.';
            DataClassification = ToBeClassified;
            TableRelation = Employee."No.";

            //Menyra 1
            trigger OnValidate()
            var
                lEmployee: Record Employee;
            begin
                if lEmployee.Get(Rec."EmployeeNo.") then
                    Rec.JobTitle := lEmployee."Job Title";
            end;
        }
        field(2; StartingDate; Date)
        {
            Caption = 'StartingDate';
            DataClassification = ToBeClassified;
        }
        field(3; EndingDate; Date)
        {
            Caption = 'EndingDate';
            DataClassification = ToBeClassified;
        }
        field(4; JobTitle; Text[200])
        {
            Caption = 'JobTitle';
            DataClassification = ToBeClassified;
        }
        field(5; Company; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Company';
        }
        field(6; City; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'City';
        }
        field(7; Education; Code[25])
        {
            TableRelation = Qualification.Code;
            DataClassification = ToBeClassified;
            Caption = 'Education';
        }
        field(8; "Years of Work"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Years';
        }
        field(9; Level; integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Level';
        }
        field(10; Clasifications; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Clasifications Category';
        }
        field(11; Qualifications; Text[255])
        {
            DataClassification = ToBeClassified;
            Caption = 'Qualifications Category';
        }
    }

    keys
    {
        key(key1; "EmployeeNo.", StartingDate)
        {
            Clustered = true;
        }
    }
}