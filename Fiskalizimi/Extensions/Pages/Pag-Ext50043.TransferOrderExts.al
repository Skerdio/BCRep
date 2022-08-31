pageextension /*50323*/50043 "Transfer Order Exts" extends "Transfer Order"
{
    layout
    {
        addlast(content)
        {
            group("Companion Invoice")
            {
                field("Start Location Type"; Rec."Start Location Type")
                {
                    ApplicationArea = All;
                }
                field("Destination Location Type"; Rec."Destination Location Type")
                {
                    ApplicationArea = All;
                }
                field(isEscortRequired; Rec.isEscortRequired)
                {
                    ApplicationArea = All;
                }
                field(isGoodsFlammable; Rec.isGoodsFlammable)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        modify(Post)
        {
            Caption = 'Post and Fiscalize';
        }
    }
}