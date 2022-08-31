page 50014 Pozicioni
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Pozicioni;
    Caption = 'Position';

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field("Position Code"; rec."Position Code")
                {
                    ApplicationArea = All;
                    Caption = 'Position Code';
                }
                field(Longitude; rec.Longitude)
                {
                    ApplicationArea = All;
                    Caption = 'Longitude';
                    trigger OnValidate()
                    var
                        url: Text;
                        long: Text;
                        lat: text;
                    begin
                        url := 'https://www.google.com/maps/search/?api=1&query=';
                        long := format(rec.Latitude);
                        lat := format(rec.Longitude);
                        url := url + long + '%2C' + lat;
                        rec.UrlMap := url;

                    end;


                }
                field(Latitude; rec.Latitude)
                {
                    ApplicationArea = All;
                    Caption = 'Latitude';
                    trigger OnValidate()
                    var
                        url: Text;
                        long: Text;
                        lat: text;
                    begin
                        url := 'https://www.google.com/maps/search/?api=1&query=';
                        long := format(rec.Latitude);
                        lat := format(rec.Longitude);
                        url := url + long + '%2C' + lat;
                        rec.UrlMap := url;


                    end;
                }
                field(UrlMap; rec.UrlMap)
                {
                    ApplicationArea = All;
                    Caption = 'Map URL';
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
        url: Text;
}
