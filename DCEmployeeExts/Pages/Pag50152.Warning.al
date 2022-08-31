page 50152 Warning
{
    ApplicationArea = All;
    Caption = 'Warning';
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