table 50004 "Evaluation Form"
{
    Caption = 'Evaluation Form';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; EmployeeNo; Code[20])
        {
            Caption = 'EmployeeNo';
            DataClassification = ToBeClassified;
            TableRelation = Employee;
        }
        field(2; "General Purpose of Work"; Text[500])
        {
            Caption = 'General Purpose of Work';
            DataClassification = ToBeClassified;
        }
        field(3; "Objective 1"; Text[500])
        {
            Caption = 'Objective 1';
            DataClassification = ToBeClassified;
        }
        field(4; "Evaluation for the objective 1"; Option)
        {
            Caption = 'Evaluation for the objective 1';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(5; "Objective 2"; Text[500])
        {
            Caption = 'Objective 2';
            DataClassification = ToBeClassified;
        }
        field(6; "Evaluation for the objective 2"; Option)
        {
            Caption = 'Evaluation for the objective 2';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(7; "Objective 3"; Text[500])
        {
            Caption = 'Objective 3';
            DataClassification = ToBeClassified;
        }
        field(8; "Evaluation for the objective 3"; Option)
        {
            Caption = 'Evaluation for the objective 3';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(9; "Team Leading"; Option)
        {
            Caption = 'Team Leading';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(10; "Group Work"; Option)
        {
            Caption = 'Group Work';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(11; "Written communication skills"; Option)
        {
            Caption = 'Written communication skills';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(12; "Speaking communication skills"; Option)
        {
            Caption = 'Speaking communication skills';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(13; "Eval of the Head of Sector"; Text[250])
        {
            Caption = 'Evaluation of the Head of Sector';
            DataClassification = ToBeClassified;
        }
        field(14; "Eval Head of Sector_SC"; Option)
        {
            Caption = 'Evaluation of the Head of Sector(Score)';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(15; "Eval Directorate Director"; Text[250])
        {
            Caption = 'Evaluation of the Director of the Directorate';
            DataClassification = ToBeClassified;
        }
        field(16; "Eval Directorate Director_SC"; Option)
        {
            Caption = 'Evaluation of the Director of the Directorate(Score)';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(17; "Evaluation General Director"; Text[250])
        {
            Caption = 'Evaluation of the General Director';
            DataClassification = ToBeClassified;
        }
        field(18; "Eval General Director_Sc"; Option)
        {
            Caption = 'Evaluation of the General Director(Score)';
            DataClassification = ToBeClassified;
            OptionMembers = ,"1","2","3","4";
        }
        field(19; Date; Date)
        {
            Caption = 'Date of evaluation';
            DataClassification = ToBeClassified;
        }
        field(20; Year; Integer)
        {
            Caption = 'Working year';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; EmployeeNo, Date)
        {
            Clustered = true;
        }
    }

}