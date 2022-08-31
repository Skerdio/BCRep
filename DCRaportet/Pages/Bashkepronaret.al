page 50010 Bashkepronaret
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Bashkepronaret;
    DataCaptionFields = "Asset No";
    Caption = 'Co-owners';

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(PrimKey; rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Emri; rec.Emer)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Mbiemer; rec.Mbiemer)
                {
                    ApplicationArea = All;
                    Caption = 'Last Name';
                }
                field(Perqindja; rec.Perqindja)
                {
                    Caption = 'Percentage(%)';
                    ApplicationArea = All;
                }
                field(Pjeset; rec.Pjeset)
                {
                    ApplicationArea = All;
                    Caption = 'Proportions';
                    trigger OnValidate()
                    var
                        Part: Text;
                        long: Text;
                        deci: Decimal;
                        listof: List of [Text];
                        up: Decimal;
                        down: Decimal;
                        upT: Text;
                        downT: Text;

                    begin
                        listof := rec.Pjeset.Split('/');
                        upT := listof.Get(1);
                        downT := listof.Get(2);
                        Evaluate(up, upT);
                        Evaluate(down, downT);
                        deci := (up / down) * 100;
                        rec.Perqindja := deci;
                    end;
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

    var
        myInt: Integer;
}