page 50006 "Evaluation Form"
{

    Caption = 'Evaluation Form Page';
    PageType = List;
    SourceTable = "Evaluation Form";
    UsageCategory = Lists;
    ApplicationArea = All;


    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(EmployeeNo; Rec.EmployeeNo)
                {
                    ToolTip = 'Specifies the value of the Employee No field';
                    ApplicationArea = All;
                    Visible = not gVisible;
                }
                field("General Purpose of Work"; Rec."General Purpose of Work")
                {
                    ToolTip = 'Specifies the value of the General Purpose of Work field';
                    ApplicationArea = All;
                }
                field("Objective 1"; Rec."Objective 1")
                {
                    ToolTip = 'Specifies the value of the Objective 1 field';
                    ApplicationArea = All;
                }
                field("Evaluation for the objective 1"; Rec."Evaluation for the objective 1")
                {
                    ToolTip = 'Specifies the value of the Evaluation for the objective 1 field';
                    ApplicationArea = All;
                }
                field("Objective 2"; Rec."Objective 2")
                {
                    ToolTip = 'Specifies the value of the Objective 2 field';
                    ApplicationArea = All;
                }
                field("Evaluation for the objective 2"; Rec."Evaluation for the objective 2")
                {
                    ToolTip = 'Specifies the value of the Evaluation for the objective 2 field';
                    ApplicationArea = All;
                }
                field("Objective 3"; Rec."Objective 3")
                {
                    ToolTip = 'Specifies the value of the Objective 3 field';
                    ApplicationArea = All;
                }
                field("Evaluation for the objective 3"; Rec."Evaluation for the objective 3")
                {
                    ToolTip = 'Specifies the value of the Evaluation for the objective 3 field';
                    ApplicationArea = All;
                }
                field("Team Leading"; Rec."Team Leading")
                {
                    ToolTip = 'Specifies the value of the Team Leading field';
                    ApplicationArea = All;
                }
                field("Group Work"; Rec."Group Work")
                {
                    ToolTip = 'Specifies the value of the Group Work field';
                    ApplicationArea = All;
                }
                field("Written communication skills"; Rec."Written communication skills")
                {
                    ToolTip = 'Specifies the value of the Written communication skills field';
                    ApplicationArea = All;
                }
                field("Speaking communication skills"; Rec."Speaking communication skills")
                {
                    ToolTip = 'Specifies the value of the Speaking communication skills field';
                    ApplicationArea = All;
                }
                field("Eval of the Head of Sector"; Rec."Eval of the Head of Sector")
                {
                    ToolTip = 'Specifies the value of the Evaluation of the Head of Sector field';
                    ApplicationArea = All;
                }
                field("Eval of the Head of Sector(Score)"; Rec."Eval Head of Sector_SC")
                {
                    ToolTip = 'Specifies the value of the Evaluation of the Head of Sector(Score) field';
                    ApplicationArea = All;
                }
                field("Eval of the Director of the Directorate"; Rec."Eval Directorate Director")
                {
                    ToolTip = 'Specifies the value of the Evaluation of the Director of the Directorate field';
                    ApplicationArea = All;
                }
                field("Eval of the Director of the Directorate(Score)"; Rec."Eval Directorate Director_SC")
                {
                    ToolTip = 'Specifies the value of the Evaluation of the Director of the Directorate(Score) field';
                    ApplicationArea = All;
                }
                field("Eval of the General Director"; Rec."Evaluation General Director")
                {
                    ToolTip = 'Specifies the value of the Evaluation of the General Director field';
                    ApplicationArea = All;
                }
                field("Eval of the General Director(Score)"; Rec."Eval General Director_Sc")
                {
                    ToolTip = 'Specifies the value of the Evaluation of the General Director field(Score)';
                    ApplicationArea = All;
                }
                field(Date; Rec.Date)
                {
                    ToolTip = 'Specifies the date of the Evaluation';
                    ApplicationArea = All;
                }
                field(Year; Rec.Year)
                {
                    ToolTip = 'Specifies Working year';
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if gEmployeeNo <> '' then begin
            Rec.FilterGroup(2);
            Rec.SetRange(EmployeeNo, gEmployeeNo);
            Rec.FilterGroup(0);
        end;
    end;

    var
        gEmployeeNo: Code[20];
        gVisible: Boolean;

    procedure SetVisible(pVisible: Boolean)
    begin
        gVisible := pVisible;
    end;

    procedure SetEmployeeNo(pEmployeeNo: Code[20])
    begin
        gEmployeeNo := pEmployeeNo;
    end;
}