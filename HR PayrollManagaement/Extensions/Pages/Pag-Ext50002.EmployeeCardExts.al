pageextension 50002 EmployeeCardExts extends "Employee Card"
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
            field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
            {
                Caption = 'Department Code';
                ApplicationArea = All;
            }

        }
        addafter("Last Name")
        {
            field(JobTitle; Rec.JobTitle)
            {
                ApplicationArea = All;
                Caption = 'Job Title';
                ShowMandatory = true;
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
            ShowMandatory = true;
            ToolTip = 'Specifies the employee`s father name.';
        }
        modify(Address)
        {
            ShowMandatory = true;
            ToolTip = 'Specifies the employee`s birthplace.';
        }
        modify("Address 2")
        {
            ShowMandatory = true;
            ToolTip = 'Specifies the employee`s address';
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
            Visible = false;
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
                Caption = 'Employee`s Job Title';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category5;
                Image = Employee;
                trigger OnAction()
                var
                    lEmployeeWarning: Page "EmployeeJobTitle";
                begin
                    lEmployeeWarning.SetVisible(true);
                    lEmployeeWarning.SetEmployeeNo(Rec."No.");
                    lEmployeeWarning.Run();
                end;

            }
            action("Warning")
            {
                Caption = 'Employee`s Warning';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category5;
                Image = BankContact;
                trigger OnAction()
                var
                    lEmployeeWarning: Page "Masa Disiplinore";
                begin
                    lEmployeeWarning.SetVisible(true);
                    lEmployeeWarning.SetEmployeeNo(Rec."No.");
                    lEmployeeWarning.Run();
                end;
            }
            action("Attestation")
            {
                Caption = 'Employee Attestation';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category5;
                Image = Certificate;

                trigger OnAction()
                var
                    lEmployee: Record Employee;
                begin
                    lEmployee.SetRange("No.", Rec."No.");
                    Report.RunModal(Report::"Employee attestation", true, true, lEmployee);
                end;
            }
            action("Evaluation Form")
            {
                Caption = 'Evaluation Form';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category5;
                Image = Evaluate;

                trigger OnAction()
                var
                    lEmployeeWarning: Page "Evaluation Form";
                begin

                    lEmployeeWarning.SetVisible(true);
                    lEmployeeWarning.SetEmployeeNo(Rec."No.");
                    lEmployeeWarning.Run();
                end;
            }
        }
    }
}