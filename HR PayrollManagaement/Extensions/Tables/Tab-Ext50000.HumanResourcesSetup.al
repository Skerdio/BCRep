tableextension 50000 HumanResourcesSetup extends "Human Resources Setup"
{
    fields
    {
        field(50000; "Starting Row No."; Integer)
        {
            Caption = 'Starting Row No.';
            DataClassification = ToBeClassified;
        }
        field(50001; "Employee Col Id"; Code[2])
        {
            Caption = 'Employee Col Id';
            DataClassification = ToBeClassified;
        }
        field(50002; "Payroll Journal Template Name"; Code[10])
        {
            Caption = 'Payroll Journal Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(50003; "Payroll Journal Batch Name"; Code[10])
        {
            Caption = 'Payroll Journal Batch Name';
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Payroll Journal Template Name"));
        }
    }
}