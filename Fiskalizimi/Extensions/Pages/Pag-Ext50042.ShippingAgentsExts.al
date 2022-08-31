pageextension /*50322*/50042 "Shipping Agents Exts" extends "Shipping Agents"
{
    layout
    {
        addlast(Control1)
        {
            field("Vehicle Plate No."; Rec."Vehicle Plate No.")
            {
                ApplicationArea = All;
            }
            field("Own Vehicle"; Rec."Own Vehicle")
            {
                ApplicationArea = All;
            }
            field(IDType; Rec.IDType)
            {
                ApplicationArea = All;
            }
            field("Vat Registration No."; Rec."Vat Registration No.")
            {
                ApplicationArea = All;
            }
            field("Personal ID"; Rec."Personal ID")
            {
                ApplicationArea = All;
            }
            field(Address; Rec.Address)
            {
                ApplicationArea = All;
            }
        }
    }
}