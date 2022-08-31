pageextension /*50306*/50026 "Customer Exts" extends "Customer Card"
{
    layout
    {
        addlast(content)
        {
            group(Fiskalizmi)
            {
                field(IDType; Rec.IDType)
                {
                    ApplicationArea = All;
                }
                field("Personal ID"; Rec."Personal ID")
                {
                    ApplicationArea = All;
                }
                field("Tax No."; Rec."Tax No.")
                {
                    ApplicationArea = All;
                }
                field("Type of Inovice"; Rec."Type of Inovice")
                {
                    ApplicationArea = All;
                }
                field("Type of Self ISS"; Rec."Type of Self ISS")
                {
                    ApplicationArea = All;
                }
                field("Is Simplified Invoice"; Rec."Is Simplified Invoice")
                {
                    ApplicationArea = All;
                }
                field("Is Reversed Charge"; Rec."Is Reversed Charge")
                {
                    ApplicationArea = All;
                }
                field("Delivery Require"; Rec."Delivery Require")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}