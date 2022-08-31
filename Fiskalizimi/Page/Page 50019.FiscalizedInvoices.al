page /*50307*/50019 "Fiscalized Invoices"
{
    PageType = CardPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Fiscalized Invoices";

    layout
    {
        area(content)
        {
            cuegroup(SalesAndCreditMemos)
            {
                Caption = 'Sales and Credit Memos';
                field(Sales; rec."SalesInvoice")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Posted Sales Invoices";
                    Caption = 'Posted Sales Invoices';
                }
                field(SalesCreditMemo; rec."SalesCr.Memo")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Posted Sales Credit Memos";
                    Caption = 'Posted Sales Credit Memos';
                }
            }
            cuegroup(ESalesAndCreditMemos)
            {
                Caption = 'E- Sales and Credit Memos';
                field("E-SalesInvoice"; rec."E-SalesInvoice")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Posted Sales Invoices";
                    Caption = 'Posted E-Sales Invoices';
                }
                field("E-SalesCr.Memo"; rec."E-SalesCr.Memo")
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Posted Sales Credit Memos";
                    Caption = 'Posted E-Sales Credit Memos';
                }
            }
            cuegroup(TransferShipments)
            {
                Caption = 'Transfer Shipments';
                field(TransferShipment; rec.TransferShipments)
                {
                    ApplicationArea = All;
                    DrillDownPageID = "Posted Transfer Shipments";
                    Caption = 'Posted Transfer Shipments';
                }
            }
        }
    }

    trigger OnOpenPage()
    var
    begin
        if not rec.Get then begin
            rec.Init;
            rec.Insert;
        end;
        rec.CalcFields("SalesInvoice", "SalesCr.Memo", TransferShipments);
    end;
}