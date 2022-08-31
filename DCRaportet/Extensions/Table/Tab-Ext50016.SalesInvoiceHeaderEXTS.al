tableextension /*50100*/ 50016 SalesInvoiceHeaderExts extends "Sales Invoice Header"
{ //112
    fields
    {

        modify("Shipping Agent Code")
        {
            Caption = 'Shipping Agent Code';
        }
        modify("Document Date")
        {
            Caption = 'Document Date';
        }
        modify("Package Tracking No.")
        {
            Caption = 'Package Tracking No';
        }
        modify("Due Date")
        {
            Caption = 'Due Date';
        }
        modify("Order No.")
        {
            Caption = 'Order No';
        }
        modify("VAT Registration No.")
        {
            Caption = 'VAT Registration No';
        }
        modify("Prices Including VAT")
        {
            Caption = 'Prices Including VAT';
        }

        modify("Bill-to Customer No.")
        {
            Caption = 'Bill-to Customer No.';
        }
    }
}