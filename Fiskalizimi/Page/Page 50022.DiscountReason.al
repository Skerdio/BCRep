page /*50302*/50022 "Discount Reason"
{
    ApplicationArea = All;
    Caption = 'Discount Reason';
    PageType = List;
    SourceTable = "Discount Reason";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Discount Reason Code"; Rec."Discount Reason Code")
                {
                    ApplicationArea = All;
                }
                field("Discount Description"; Rec."Discount Description")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
