pageextension 50151 EmployeeCardExts extends "Employee Card"
{
    layout
    {
        addlast(General)
        {
            field(MaritalStatus; Rec.MaritalStatus)
            {
                ApplicationArea = All;
                ShowMandatory = true;
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
        modify("Middle Name")
        {
            ShowMandatory = true;
        }
        modify(Address)
        {
            ShowMandatory = true;
        }
        modify("Address 2")
        {
            ShowMandatory = true;
        }
        modify("First Name")
        {
            ShowMandatory = true;
        }
        modify("Last Name")
        {
            ShowMandatory = true;
        }
        modify("Job Title")
        {
            ShowMandatory = true;
        }
        modify("Employment Date")
        {
            ShowMandatory = true;
        }
    }
    actions
    {
        addlast("E&mployee")
        {
            action("Employee Job Title")
            {
                Caption = 'Employee Job Title';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category5;
                Image = Employee;
                RunObject = Page EmployeeJobTitle;
                RunPageLink = "EmployeeNo." = FIELD("No.");
            }
            action("Warning")
            {
                Caption = 'Warning';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category5;
                Image = BankContact;
                RunObject = Page "Masa Disiplinore";
                RunPageLink = "EmployeeNo." = FIELD("No.");
            }
        }
    }
}