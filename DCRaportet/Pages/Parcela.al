page 50013 Parcela
{
    PageType = List;
    SourceTable = Parcela;
    UsageCategory = Lists;
    ApplicationArea = All;
    Caption = 'Plots';

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("Parcela No."; rec."Parcela No.")
                {
                    ApplicationArea = All;

                    Caption = 'Plot No';
                }
                field(Description; rec.Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';

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