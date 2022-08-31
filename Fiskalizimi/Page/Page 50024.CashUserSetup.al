page /*50304*/50024 CashUserSetup
{
    Caption = 'Cash User Setup';
    PageType = List;
    SourceTable = CashUserSetup;
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Operator Code"; Rec."Operator Code")
                {
                    ApplicationArea = All;
                }
                field("Bank No."; Rec."Bank Acc. No.")
                {
                    ApplicationArea = All;
                    TableRelation = "Bank Account" where("Is Cash" = const(true));
                }
                field(UserID; Rec.UserID)
                {
                    ApplicationArea = All;
                    TableRelation = User."User Name";
                }
            }
        }
    }
}