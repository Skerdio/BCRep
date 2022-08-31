pageextension 50055 PagExtPostedPurchaseInvoices extends "Posted Purchase Invoices"
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
                    lPIL: Record "Purch. Inv. Line";
                    lDelete: Page "Delete";
                    lErr: Label 'This document cannot be deleted because it has lines types other than G/L Account.';
                begin
                    lPIL.Reset();
                    lPIL.SetRange(lPIL."Document No.", Rec."No.");
                    //PRJ500-d lPIL.SetFilter(lPIL."Type", '<>%1', lPIL."Type"::"G/L Account");
                    lPIL.SetFilter(lPIL."Type", '<>%1&<>%2', lPIL."Type"::"G/L Account", lPIL."type"::" "); //PRJ500-n
                    if not lPIL.IsEmpty then
                        Error(lErr);
                    lDelete.SetDoc(Rec."Posting Date", Rec."No.");
                    lDelete.RunModal();
                end;
            }
            action(ChangeDocumentDate)
            {
                ApplicationArea = All;
                Caption = 'Change Document Date/Posting Date';
                Image = ChangeDate;
                Promoted = true;
                PromotedCategory = Process;
                Visible = gVisibleAction;


                trigger OnAction()
                var
                    lPIL: Record "Purch. Inv. Line";
                    lChangeDocDate: Page "Change Purchase Inv";
                    lErr: Label 'This document cannot be changed because it has lines types other than G/L Account.';
                begin
                    // lPIL.Reset();
                    // lPIL.SetRange(lPIL."Document No.", Rec."No.");
                    // lPIL.SetFilter(lPIL."Type", '<>%1', lPIL."Type"::"G/L Account");
                    // if not lPIL.IsEmpty then
                    //     Error(lErr);
                    lChangeDocDate.LookupMode := true;
                    lChangeDocDate.SetDoc(2, 1, Rec);
                    lChangeDocDate.RunModal();
                end;
            }
            Action(UpdateAmount)
            {
                Ellipsis = true;
                Caption = 'Update Account';
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
                    UpdateInvoice_GLAccount.Setvalue(TipoDoc::"Purchase Invoice", Rec."No.");
                    UpdateInvoice_GLAccount.RUN;
                    Message(messageTxt);
                end;
            }
        }
    }

    var
        gModifyDocTool: Codeunit "Modify Documents Tool";
        gVisibleAction: Boolean;

    trigger OnOpenPage()
    var
        lUserSetup: Record "User Setup";
    begin
        gVisibleAction := lUserSetup.CheckVisibilityModifyDocPageActions();
    end;
}