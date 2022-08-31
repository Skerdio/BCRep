page 50002 "Masa Disiplinore"
{
    Caption = 'Employees Warning List';
    PageType = List;
    SourceTable = "MasatDisiplinore";
    UsageCategory = Lists;
    ApplicationArea = All;

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
                    Visible = not GVisible;
                }
                field(Warning; Rec.Warning)
                {
                    ToolTip = 'Specifies the value of the Warning field';
                    ApplicationArea = All;
                }
                field(Comment; Rec.Comment)
                {
                    ToolTip = 'Specifies the value of the Comment field';
                    ApplicationArea = All;
                }
                field(Date; Rec.Data)
                {
                    ToolTip = 'Specifies the value of the Date field';
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    begin
        if gEmployeeNo <> '' then begin
            Rec.FilterGroup(2);
            Rec.SetRange("EmployeeNo.", gEmployeeNo);
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