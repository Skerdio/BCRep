pageextension /*50321*/50041 "Posted Transfer Shipment Exts" extends "Posted Transfer Shipment"
{
    layout
    {
        addlast(content)
        {
            group("Companion Invoice")
            {
                field("Fiscalised Invoice number"; Rec."Fiscalised Invoice number")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Start Location Type"; Rec."Start Location Type")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Destination Location Type"; Rec."Destination Location Type")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(isEscortRequired; Rec.isEscortRequired)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(isGoodsFlammable; Rec.isGoodsFlammable)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(NSLFSH; Rec.NSLFSH)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(NIVFSH; Rec.NIVFSH)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field(UUID; Rec.UUID)
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Invoice File Name"; Rec."Invoice File Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Declaration Date"; Rec."Declaration Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Subseq Deliv Type"; Rec."Subseq Deliv Type")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
    actions
    {
        addfirst(navigation)
        {
            //     action("Krijo XML")
            //     {
            //         ApplicationArea = All;
            //         Image = XMLFile;
            //         trigger OnAction()
            //         var
            //             XMLGen: Codeunit XMLGenerator;
            //         begin
            //             XMLGen.Create_CompanionInvoiceRequest(Rec."No.");
            //         end;
            //     }
            action("Refiscalize Invoice")
            {
                Visible = gVisible;
                ApplicationArea = all;
                Image = SendConfirmation;
                trigger OnAction()
                var
                    ResEInvoice: Report "Refiscalize Companion Invoice";
                begin
                    ResEInvoice.GetNo(Rec."No.", gDocType::"Transfer Order", rec."Invoice File Name");
                    ResEInvoice.RunModal();
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    begin
        if rec.NIVFSH = '' then
            gVisible := true
        else
            gVisible := false;
    end;

    trigger OnAfterGetCurrRecord()
    begin
        if rec.NIVFSH = '' then
            gVisible := true
        else
            gVisible := false;
    end;

    var
        gVisible: Boolean;
        gDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order";

}
