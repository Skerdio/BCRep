pageextension 50001 EmployeeListExts extends "Employee List"
{
    layout
    {
        addafter("Last Name")
        {
            field(MaritalStatus; Rec.MaritalStatus)
            {
                ApplicationArea = All;
            }
            field("Years of Work"; Rec."Years of Work")
            {
                ApplicationArea = All;
            }
            field(Disability; Rec.Disability)
            {
                ApplicationArea = All;
            }
        }
        addafter(MaritalStatus)
        {
            field(JobTitle; Rec.JobTitle)
            {
                ApplicationArea = All;
                Caption = 'Job Title';
                ToolTip = 'Specifies the employee`s job title.';
            }
            field("Fiscal Job Title"; Rec."Fiscal Job Title")
            {
                ApplicationArea = All;
                Caption = 'Fiscal Job Title';
                ToolTip = 'Specifies the employee`s fiscal job title.';
            }
        }
        modify("Middle Name")
        {
            ToolTip = 'Specifies the employee`s father name.';
        }
        modify("Job Title")
        {
            Visible = false;
        }
    }
}