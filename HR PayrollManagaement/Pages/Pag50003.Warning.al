page 50003 Warning
{
    ApplicationArea = All;
    Caption = 'Warning List';
    PageType = List;
    SourceTable = Warning;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Warnings; Rec.Warnings)
                {
                    ToolTip = 'Specifies the value of the Warnings field';
                    ApplicationArea = All;
                }
            }
        }
    }
}