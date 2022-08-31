pageextension /*50313*/50033 "Posted Sales Credit Memos Exts" extends "Posted Sales Credit Memos"
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
        addlast(Navigation)
        {
            action("GET E-Invoices")
            {
                ApplicationArea = all;
                Image = SendConfirmation;
                Visible = GetInvoices;
                trigger OnAction()
                var
                    XmlGen: Codeunit XMLGenerator;
                begin
                    XmlGen.Get_EInvoiceRequest(gDocType::"Credit Memo", Rec."No.", SalesInvHeader, Rec);
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
                begin
                    ResEInvoice.GetNo(Rec."No.", gDocType::"Credit Memo");
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
                    XmlGen.Resend_EInvoice(rec."E-Invoice File Name", leiSetup."File Path Sales", rec."No.", gDocType::"Credit Memo")
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
                gVisibleEInv := false;
                GetInvoices := false;
            end
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
                gVisibleEInv := false;
                GetInvoices := false;
            end;
        end;
    end;

    var
        gDocType: Option Invoice,"Credit Memo";
        SalesInvHeader: Record "Sales Invoice Header";
        gVisibleEInv: Boolean;
        gVisibleFisc: Boolean;
        GetInvoices: Boolean;
}