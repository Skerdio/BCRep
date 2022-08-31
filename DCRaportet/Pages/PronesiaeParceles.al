page 50015 PronesiaParceles
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Pronesia e Parceles";
    Caption = 'Plot Ownership';
    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("Pronesia No."; rec."Pronesia No.")
                {
                    ApplicationArea = All;
                    Caption = 'Ownership No';

                }

                field(Owner; rec.Owner)
                {
                    ApplicationArea = All;
                    Caption = 'Owner(1)';

                }
                field(Owner2; rec.Owner2)
                {
                    ApplicationArea = All;
                    Caption = 'Owner(2)';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

 
}