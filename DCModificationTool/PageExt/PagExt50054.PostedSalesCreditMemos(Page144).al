pageextension 50054 PagExtPostedSalesCreditMemos extends "Posted Sales Credit Memos"
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
                PromotedCategory = Process;
                Visible = gVisibleAction;

                trigger OnAction()
                var
                    lSCML: Record "Sales Cr.Memo Line";
                    lDelete: Page "Delete";
                    lErr: Label 'This document cannot be deleted because it has lines types other than G/L Account.';

                begin
                    lSCML.Reset();
                    lSCML.SetRange(lSCML."Document No.", Rec."No.");
                    //PRJ500-d lSCML.SetFilter(lSCML."Type", '<>%1', lSCML."Type"::"G/L Account");
                    lSCML.SetFilter(lSCML."Type", '<>%1&<>%2', lSCML."Type"::"G/L Account", lSCML."type"::" "); //PRJ500-n
                    if not lSCML.IsEmpty then
                        Error(lErr);
                    lDelete.SetDoc(Rec."Posting Date", Rec."No.");
                    lDelete.RunModal();
                end;
            }
            action(UpdateAccount)
            {
                ApplicationArea = All;
                Ellipsis = true;
                Caption = 'Update Account';
                Promoted = true;
                Image = UpdateUnitCost;
                PromotedCategory = Process;
                Visible = gVisibleAction;

                trigger OnAction()
                var
                    TipoDoc: Option "Sales Invoice","Sales Credit Memo","Purchase Invoice","Purchase Credit Memo";
                    DocNo: Code[20];
                    UpdateInvoice_GLAccount: Report 50017;
                    messageTxt: Label 'Modification Completed';
                begin

                    UpdateInvoice_GLAccount.Setvalue(TipoDoc::"Sales Credit Memo", Rec."No.");
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
                    lSCML: Record "Sales Cr.Memo Line";
                    lChangeDocDate: Page "Change Sales Cr Memo";
                    lErr: Label 'Posting Date cannot be changed because it has lines types other than G/L Account.';
                begin
                    lSCML.Reset();
                    lSCML.SetRange(lSCML."Document No.", Rec."No.");
                    //PRJ500-d lSCML.SetFilter(lSCML."Type", '<>%1', lSCML."Type"::"G/L Account");
                    lSCML.SetFilter(lSCML."Type", '<>%1&<>%2', lSCML."Type"::"G/L Account", lSCML."type"::" "); //PRJ500-n
                    if not lSCML.IsEmpty then
                        Error(lErr);
                    lChangeDocDate.LookupMode := true;
                    lChangeDocDate.SetDoc(1, 2, Rec);
                    lChangeDocDate.RunModal();
                end;
            }
        }
    }

    var
        gModifyDocTool: Codeunit "Modify Documents Tool";
        gVisibleAction: Boolean;
        lErr1: Label 'Posting Date cannot be changed because "File Name" is not empty';

    trigger OnOpenPage()
    var
        lUserSetup: Record "User Setup";
    begin
        gVisibleAction := lUserSetup.CheckVisibilityModifyDocPageActions();
    end;
}