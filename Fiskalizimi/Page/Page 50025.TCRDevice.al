page /*50305*/50025 "TCR Device"
{
    ApplicationArea = All;
    Caption = 'TCR Devices';
    PageType = List;
    SourceTable = "TCR Device";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("TCR Code"; Rec."TCR Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("TCR Id"; Rec."TCR Id")
                {
                    ApplicationArea = All;
                }
                field("TCR Type"; Rec."TCR Type")
                {
                    ApplicationArea = All;
                }
                field("Valid From"; Rec."Valid From")
                {
                    ApplicationArea = All;
                }
                field("Valid To"; Rec."Valid To")
                {
                    ApplicationArea = All;
                }
                field("Soft Code"; Rec."Soft Code")
                {
                    ApplicationArea = All;
                }
                field("Maintainer Code"; Rec."Maintainer Code")
                {
                    ApplicationArea = All;
                }
                field("Business Unit Code"; Rec."Business Unit Code")
                {
                    ApplicationArea = all;
                }
                field(UUID; Rec.UUID)
                {
                    Editable = false;
                    ApplicationArea = aLL;
                }
                field("Invoice No. Series."; Rec."Invoice No. Series.")
                {
                    ApplicationArea = All;
                }
                field("Credit Memo No. Series."; Rec."Credit Memo No. Series.")
                {
                    ApplicationArea = All;
                }
                field("Trans. Shipmment No. Series."; Rec."Trans. Shipmment No. Series.")
                {
                    ApplicationArea = All;
                }

            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action("Declare Device")
            {
                Caption = 'Declare TCR Device';
                Image = AdjustEntries;
                Promoted = true;
                trigger OnAction()
                var
                    XMLGenerator: Codeunit XMLGenerator;
                    TCRDevice: Record "TCR Device";
                    compSetEInv: Record "Company Setup -  e-Invoice";
                begin
                    TCRDevice.Get(rec."TCR Id");
                    XMLGenerator.Device_Reg(Rec."TCR Id", compSetEInv);
                end;
            }
        }
    }
}