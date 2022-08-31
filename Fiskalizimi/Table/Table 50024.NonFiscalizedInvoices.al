table /*50304*/ 50024 "Non-Fiscalized Invoices"
{
    Caption = 'Non-Fiscalized Invoices';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "EntryNo."; Code[10])
        {
            Caption = 'Entry No';
            DataClassification = ToBeClassified;
        }
        field(2; "SalesInvoice"; Integer)
        {
            Caption = 'Sales Invoice';
            FieldClass = FlowField;
            CalcFormula = Count("Sales Invoice Header" where(Nivf = const(''), NSLF = filter(<> '')));
            // or Nivf = const(''), "Is E-Invoice" = const(true), EIC = const('')));
        }
        field(3; "SalesCr.Memo"; Integer)
        {
            Caption = 'Sales Cr Memo';
            FieldClass = FlowField;
            CalcFormula = Count("Sales Cr.Memo Header" where(Nivf = const(''), NSLF = filter(<> '')));
            // , "Is E-Invoice" = const(true), EIC = const('')));
        }
        field(4; "TransferShipments"; Integer)
        {
            Caption = 'Transfer Shipments';
            FieldClass = FlowField;
            CalcFormula = Count("Transfer Shipment Header" where(NIVFSH = const(''), NSLFSH = filter(<> '')));
        }

        field(5; "E-SalesInvoice"; Integer)
        {
            Caption = 'E-Sales Invoice';
            FieldClass = FlowField;
            CalcFormula = Count("Sales Invoice Header" where(Nivf = filter(<> ''), "Is E-Invoice" = const(true), EIC = const('')));
        }
        field(6; "E-SalesCr.Memo"; Integer)
        {
            Caption = 'E-Sales Cr Memo';
            FieldClass = FlowField;
            CalcFormula = Count("Sales Cr.Memo Header" where(Nivf = filter(<> ''), "Is E-Invoice" = const(true), EIC = const('')));
        }
    }
    keys
    {
        key(PK; "EntryNo.")
        {
            Clustered = true;
        }
    }
}
