page 50150 EmployeeJobTitle
{
    ApplicationArea = All;
    Caption = 'Employee Job Title';
    PageType = List;
    SourceTable = EmployeeJobTitles;
    UsageCategory = History;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("EmployeeNo."; Rec."EmployeeNo.")
                {
                    ToolTip = 'Specifies the value of the EmployeeNo. field';
                    ApplicationArea = All;
                }
                field(JobTitle; Rec.JobTitle)
                {
                    ToolTip = 'Specifies the value of the JobTitle field';
                    ApplicationArea = All;
                }
                field(Education; Rec.Education)
                {
                    ToolTip = 'Specifies the value of the Education field';
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field';
                    ApplicationArea = All;
                }
                field(Company; Rec.Company)
                {
                    ToolTip = 'Specifies the value of the Company field';
                    ApplicationArea = All;
                }
                field("Years of Work"; Rec."Years of Work")
                {
                    ToolTip = 'Specifies the value of the Years of Work field';
                    ApplicationArea = All;
                }
                field(StartingDate; Rec.StartingDate)
                {
                    ToolTip = 'Specifies the value of the Starting Date field';
                    ApplicationArea = All;
                }
                field(EndingDate; Rec.EndingDate)
                {
                    ToolTip = 'Specifies the value of the EndingDate field';
                    ApplicationArea = All;
                }
                field("Clasifications Category"; Rec.Clasifications)
                {
                    ToolTip = 'Specifies the value of the Clasifications Category field';
                    ApplicationArea = All;
                }
                field(Level; Rec.Level)
                {
                    ToolTip = 'Specifies the value of the Level field';
                    ApplicationArea = All;
                }
                field("Qualifications Category"; Rec.Qualifications)
                {
                    ToolTip = 'Specifies the value of the Qualifications Category field';
                    ApplicationArea = all;
                }
            }
        }
    }
}