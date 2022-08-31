page 50011 Historiku
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Historiku;
    DataCaptionFields = "Asset No";
    Caption = 'Background';

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
                field(MainProna; rec.MainProna)
                {
                    ApplicationArea = All;
                    Caption = 'Main Property';
                }
                field(Pronari; rec.Pronari)
                {
                    ApplicationArea = All;
                    Caption = 'Owner';
                }
                field(Data; rec.Data)
                {
                    ApplicationArea = All;
                    Caption = 'Date';
                }
                field(Komente; rec.Komente)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
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
    trigger OnOpenPage()
    var

    begin
        rec.CalcFields(MainProna);
    end;


}