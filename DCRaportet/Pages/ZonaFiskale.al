page 50017 ZonaFiskale
{
    PageType = Card;
    SourceTable = ZonaFiskale;
    Caption = 'Fiscal Area';
    // ApplicationArea = ALL;
    // UsageCategory = Administration;

    Permissions = TableData ZonaFiskale = rimd;

    layout
    {
        area(Content)
        {
            group("Zona Fiskale")
            {
                field("Asset No"; rec."Asset No")
                {
                    ApplicationArea = All;
                    Caption = 'Asset No';
                    Editable = false;
                }
                field(Code; rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field(Zona; rec.Zona)
                {
                    ApplicationArea = All;
                    Caption = 'Area';
                }
                field(Cmimi; rec.CmimiRef)
                {
                    ApplicationArea = All;
                    Caption = 'Price Reference';

                }
                field(VlereTregu; rec.VlereTregu)
                {
                    ApplicationArea = All;
                    Caption = 'Market Value';
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
    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    var

    begin
        if (rec.Count = 1) then begin
            Error('Only 1 record must be inserted ');

        end
    end;

}