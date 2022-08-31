page 50151 "Masa Disiplinore"
{
    ApplicationArea = All;
    Caption = 'Warnings Page';
    PageType = List;
    SourceTable = MasatDisiplinore;
    UsageCategory = Lists;

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
}