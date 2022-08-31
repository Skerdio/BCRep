table 50150 EmployeeJobTitles
{
    Caption = 'Employee Job Titles';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "EntryNo."; Integer)
        {
            Editable = false;
            Caption = 'EntryNo';
        }
        field(2; "EmployeeNo."; Code[20])
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
        field(3; StartingDate; Date)
        {
            Caption = 'StartingDate';
            DataClassification = ToBeClassified;
        }
        field(4; EndingDate; Date)
        {
            Caption = 'EndingDate';
            DataClassification = ToBeClassified;
        }
        field(5; JobTitle; Text[30])
        {
            Caption = 'JobTitle';
            // DataClassification = ToBeClassified;
            // Menyra 2
            // FieldClass = FlowField;
            // CalcFormula = lookup(Employee."Job Title" where("No." = field("EmployeeNo.")));
            // Editable = false;
        }
        field(6; Company; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'Company';
        }
        field(7; City; Text[50])
        {
            DataClassification = ToBeClassified;
            Caption = 'City';
        }
        field(8; Education; Code[25])
        {
            TableRelation = Qualification.Code;
            DataClassification = ToBeClassified;
            Caption = 'Education';
        }
        field(9; "Years of Work"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Years';
        }
        field(11; Level; integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Level';
        }
        field(14; Clasifications; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Clasifications Category';
        }
        field(15; Qualifications; Text[255])
        {
            DataClassification = ToBeClassified;
            Caption = 'Qualifications Category';
        }
    }

    keys
    {
        key(PK; "EntryNo.")
        {
            Clustered = true;
        }
    }
    trigger OnInsert()
    var
        recYourTable: Record EmployeeJobTitles;
        intNextEntryNo: Integer;

    begin
        recYourTable.Reset();
        recYourTable.LOCKTABLE;
        IF recYourTable.FINDLAST THEN
            intNextEntryNo := recYourTable."EntryNo." + 1
        ELSE
            intNextEntryNo := 1;
        Rec."EntryNo." := intNextEntryNo;
    end;
}