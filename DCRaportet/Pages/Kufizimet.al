page 50012 Kufizimet
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Kufizimet;
    Caption = 'Limits';

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(Code; rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Veri; rec.Veri)
                {
                    ApplicationArea = All;
                    Caption = 'North';
                }
                field(Jug; rec.Jug)
                {
                    ApplicationArea = All;
                    Caption = 'South';
                }
                field(Perendim; rec.Perendim)
                {
                    ApplicationArea = All;
                    Caption = 'West';
                }
                field(Lindje; rec.Lindje)
                {
                    ApplicationArea = All;
                    Caption = 'East';
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