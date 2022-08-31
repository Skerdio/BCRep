page 50000 "Import Payroll"
{

    ApplicationArea = All;
    Caption = 'Import Payroll Setupp';
    PageType = List;
    SourceTable = "Import Payroll";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Celesi; Rec.Celesi)
                {
                    ToolTip = 'Specifies the value of the Celesi field';
                    ApplicationArea = All;
                }
                field("Account Type"; Rec."Account Type")
                {
                    ToolTip = 'Specifies the value of the Account Type field';
                    ApplicationArea = All;
                }
                field("Account No."; Rec."Account No.")
                {
                    ToolTip = 'Specifies the value of the Account No. field';
                    ApplicationArea = All;
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                    ToolTip = 'Specifies the value of the Bal. Account Type field';
                    ApplicationArea = All;
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ToolTip = 'Specifies the value of the Bal. Account No. field';
                    ApplicationArea = All;
                }
            }
        }
    }


    actions
    {
        area(Navigation)
        {
            action("Import Payroll Excel")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Excel;
                RunObject = report "Import Payroll";
            }
        }
    }
}