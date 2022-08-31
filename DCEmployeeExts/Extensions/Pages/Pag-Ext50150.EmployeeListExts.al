pageextension 50150 EmployeeListExts extends "Employee List"
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
    }
}