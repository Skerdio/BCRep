tableextension /*50104*/50020 "SalesCr.MemoLineEXTS" extends "Sales Cr.Memo Line"
{
    fields
    {
        modify(Description)
        {
            Caption = 'Description';
        }
        modify(Quantity)
        {
            Caption = 'Quantity';
        }
        modify("VAT Identifier")
        {
            Caption = 'VAT Identifier';
        }
        modify("Unit of Measure")
        {
            Caption = 'Unit of Measure';
        }
        modify("No.")
        {
            Caption = 'No';
        }
    }
}
