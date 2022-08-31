report /*50301*/50012 "Get E-Invoices"
{
    Caption = 'Get E-Invoices';
    ProcessingOnly = true;
    Permissions = TableData 112 = rimd, TableData 114 = rimd, TableData "Company Setup -  e-Invoice" = rimd;

    dataset
    {
        dataitem("Sales Invoice Header"; "Sales Invoice Header")
        {
            column(EIC; EIC)
            { }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group("Get E-Invoices")
                {
                    field(Eic; Eic)
                    {
                        ApplicationArea = All;
                        trigger OnDrillDown()
                        var
                            salesInvoiceHeader: Record "Sales Invoice Header";
                            PostedSalesInvoce: Page "Posted Sales Invoices LookUp";
                        begin
                            if gDocType = gDocType::Invoice then begin
                                salesInvoiceHeader.Reset();
                                salesInvoiceHeader.SetFilter(salesInvoiceHeader.EIC, '<>%1', '');
                                PostedSalesInvoce.SetTableView(salesInvoiceHeader);
                                PostedSalesInvoce.LookupMode(true);
                                if PostedSalesInvoce.RunModal = Action::LookupOK then
                                    Eic := PostedSalesInvoce.GetSelectionFilter();
                            end
                            else
                                if gDocType = gDocType::"Credit Memo" then begin
                                    salesInvoiceHeader.Reset();
                                    salesInvoiceHeader.SetFilter(salesInvoiceHeader.EIC, '<>%1', '');
                                    PostedSalesInvoce.SetTableView(salesInvoiceHeader);
                                    PostedSalesInvoce.LookupMode(true);
                                    if PostedSalesInvoce.RunModal = Action::LookupOK then
                                        Eic := PostedSalesInvoce.GetSelectionFilter();
                                end;
                        end;
                    }
                }
            }
        }
    }
    var
        Eic: Code[36];
        gDocType: Option Invoice,"Credit Memo","Bank Account";
        gRefNo: Code[20];
}
