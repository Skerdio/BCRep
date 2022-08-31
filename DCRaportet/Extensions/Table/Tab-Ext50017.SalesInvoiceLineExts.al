tableextension /*50101*/ 50017 SalesInvoiceLineExts extends "Sales Invoice Line"
{
    fields
    {
        modify(Quantity)
        {
            Caption = 'Quantity';
        }
        modify(Description)
        {
            CaptioN = 'Description';
        }
        modify("Unit Price")
        {
            CaptioN = 'Unit Price';
        }
        modify("Line Amount")
        {
            Caption = 'Line Amount';
        }
        modify("VAT %")
        {
            Caption = 'VAT %';
        }
        modify("Unit of Measure")
        {
            Caption = 'Unit of Measure';
        }
        modify("VAT Identifier")
        {
            Caption = 'VAT Identifier';
        }
        modify("Bill-to Customer No.")
        {
            Caption = 'Bill-to Customer No';
        }
        modify("No.")
        {
            Caption = 'No';
        }
    }
}