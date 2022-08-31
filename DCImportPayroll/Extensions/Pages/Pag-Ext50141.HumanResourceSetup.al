pageextension 50141 "Human Resource Setup" extends "Human Resources Setup"
{
    layout
    {
        addlast(content)
        {
            group("Import Payroll")
            {
                field("Starting Row No."; Rec."Starting Row No.")
                {
                    ApplicationArea = All;
                }
                field("Employee Col Id"; Rec."Employee Col Id")
                {
                    ApplicationArea = All;
                }
                field("Payroll Journal Template Name"; Rec."Payroll Journal Template Name")
                {
                    ApplicationArea = All;
                }
                field("Payroll Journal Batch Name"; Rec."Payroll Journal Batch Name")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
