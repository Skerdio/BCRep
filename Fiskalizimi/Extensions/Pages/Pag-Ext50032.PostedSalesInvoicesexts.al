pageextension /*50312*/50032 "Posted Sales Invoices Exts" extends "Posted Sales Invoices"
{
    layout
    {
        addfirst(Control1)
        {
            field("Fiscalised Invoice number"; "Fiscalised Invoice number")
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
        addlast(Control1)
        {
            field(NIVF; Rec.NIVF)
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(NSLF; Rec.NSLF)
            {
                ApplicationArea = All;
                Editable = false;
            }
            field(EIC; Rec.EIC)
            {
                ApplicationArea = All;
                Editable = false;
            }
        }
    }
    actions
    {
        addlast(navigation)
        {
            action("GET E-Invoices")
            {
                ApplicationArea = all;
                Image = GetOrder;
                Visible = GetInvoices;
                trigger OnAction()
                var
                    XmlGen: Codeunit XMLGenerator;
                begin
                    XmlGen.Get_EInvoiceRequest(gDocType::Invoice, Rec."No.", Rec, SalesCrMemoHeader);
                end;
            }
            action("Refiscalize Invoice")
            {
                Visible = gVisibleFisc;
                ApplicationArea = all;
                Image = SendConfirmation;
                Caption = 'Refiscalize Invoice';
                trigger OnAction()
                var
                    ResEInvoice: Report "Refiscalize Invoice";
                    leiSetup: Record "Company Setup -  e-Invoice";
                begin
                    leiSetup.Get();
                    ResEInvoice.GetNo(Rec."No.", gDocType::Invoice);
                    ResEInvoice.RunModal();
                end;
            }
            action("Resend E-Invoice")
            {
                Visible = gVisibleEInv;
                ApplicationArea = all;
                Image = SendConfirmation;
                Caption = 'Resend E-Invoice';
                trigger OnAction()
                var
                    XmlGen: Codeunit XMLGenerator;
                    leiSetup: Record "Company Setup -  e-Invoice";
                begin
                    leiSetup.Get();
                    XmlGen.Resend_EInvoice(rec."E-Invoice File Name", leiSetup."File Path Sales", rec."No.", gDocType::Invoice)
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        if rec."FE Deactivate" = false then begin
            //Ridergimi i soap+ubl
            if (rec.NIVF = '') then
                gVisibleFisc := true
            else
                gVisibleFisc := false;
            if rec."Is E-Invoice" then begin
                //Ridergimi i UBLRequest
                if (rec.EIC = '') and (rec.NIVF <> '') /*and (rec."Is E-Invoice")*/ then
                    gVisibleEInv := true
                else
                    gVisibleEInv := false;
                //merr pdf e invoice
                if (rec.EIC <> '') /*and (rec."Is E-Invoice")*/ then
                    GetInvoices := true
                else
                    GetInvoices := false;
            end
            else begin
                GetInvoices := false;
                gVisibleEInv := false;
            end;
        end;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        if rec."FE Deactivate" = false then begin
            //Ridergimi i soap+ubl
            if rec.NIVF = '' then
                gVisibleFisc := true
            else
                gVisibleFisc := false;
            if rec."Is E-Invoice" then begin
                //Ridergimi i UBLRequest
                if (rec.EIC = '') and (rec.NIVF <> '') /*and (rec."Is E-Invoice")*/ then
                    gVisibleEInv := true
                else
                    gVisibleEInv := false;
                //marrja e E-Invoice
                if (rec.EIC <> '') /*and (rec."Is E-Invoice")*/ then
                    GetInvoices := true
                else
                    GetInvoices := false;
            end
            else begin
                GetInvoices := false;
                gVisibleEInv := false;
            end;
        end;
    end;

    var
        gDocType: Option Invoice,"Credit Memo";
        SalesCrMemoHeader: Record "Sales Cr.Memo Header";
        gVisibleEInv: Boolean;
        gVisibleFisc: Boolean;
        GetInvoices: Boolean;
}