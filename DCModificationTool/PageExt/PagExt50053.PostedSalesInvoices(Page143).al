pageextension 50053 PagExtPostedSalesInvoices extends "Posted Sales Invoices"
{
    actions
    {
        addfirst(processing)
        {
            action(DeleteDocument)
            {
                ApplicationArea = All;
                Caption = 'Delete Document';
                Image = DeleteQtyToHandle;
                Promoted = true;
                Visible = gVisibleAction;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    lSIL: Record "Sales Invoice Line";
                    lDelete: Page "Delete";
                    lErr: Label 'This document cannot be deleted because it has lines types other than G/L Account.';

                begin
                    lSIL.Reset();
                    lSIL.SetRange(lSIL."Document No.", Rec."No.");
                    //PRJ500-d lSIL.SetFilter(lSIL."Type", '<>%1', lSIL."Type"::"G/L Account");
                    lSIL.SetFilter(lSIL."Type", '<>%1&<>%2', lSIL."Type"::"G/L Account", lSIL."type"::" "); //PRJ500-n
                    if not lSIL.IsEmpty then
                        Error(lErr);
                    lDelete.SetDoc(Rec."Posting Date", Rec."No.");
                    lDelete.RunModal();
                end;
            }
            Action(UpdateGlAcc)
            {
                Ellipsis = true;
                Caption = 'PS- Update Account';
                Promoted = true;
                Image = UpdateUnitCost;
                PromotedCategory = Process;
                ApplicationArea = All;
                Visible = gVisibleAction;
                trigger OnAction()
                var
                    TipoDoc: Option "Sales Invoice","Sales Credit Memo","Purchase Invoice","Purchase Credit Memo";
                    DocNo: Code[20];
                    UpdateInvoice_GLAccount: Report 50017;
                    messageTxt: Label 'Modification Completed';
                begin
                    UpdateInvoice_GLAccount.Setvalue(TipoDoc::"Sales Invoice", Rec."No.");
                    UpdateInvoice_GLAccount.RUN;
                    Message(messageTxt);
                end;

            }

            action(ChangeDocumentDate)
            {
                ApplicationArea = All;
                Caption = 'Change Posting Date';
                Image = ChangeDate;
                Promoted = true;
                PromotedCategory = Process;
                Visible = gVisibleAction;


                trigger OnAction()
                var
                    lSIL: Record "Sales Invoice Line";
                    lChangeDocDate: Page "Change Sales Inv";
                    lErr: Label 'Posting Date cannot be changed because it has lines types other than G/L Account.';
                begin
                    lSIL.Reset();
                    lSIL.SetFilter(lSIL."Type", '<>%1&<>%2', lSIL."Type"::"G/L Account", lSIL."type"::" "); //PRJ500-n
                    if not lSIL.IsEmpty then
                        Error(lErr);
                    lChangeDocDate.LookupMode := true;
                    lChangeDocDate.SetDoc(1, 1, Rec);
                    lChangeDocDate.RunModal();
                end;
            }
        }
    }
    var
        gModifyDocTool: Codeunit "Modify Documents Tool";
        gVisibleAction: Boolean;
        lErr1: Label 'Posting Date cannot be changed because "File Name" must be empty';

    trigger OnOpenPage()
    var
        lUserSetup: Record "User Setup";
    begin
        gVisibleAction := lUserSetup.CheckVisibilityModifyDocPageActions();
    end;
}