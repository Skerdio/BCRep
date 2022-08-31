pageextension /*50301*/50021 "Payment Methods exts" extends "Payment Methods"
{
    layout
    {
        addafter(Code)
        {
            field("E-Invoice Payment Methode Code"; Rec."EInvoice Payment Method Code")
            {
                ApplicationArea = ALL;
            }
            field("Company Card No."; Rec."Company Card No.")
            {
                ApplicationArea = All;
            }
            field("Payment Means"; Rec."Payment Means")
            {
                ApplicationArea = All;
            }
            field("Debit/Credit Payments"; Rec."Debit/Credit Payments")
            {
                ApplicationArea = All;
            }
            field("Is Cash"; Rec."Is Cash")
            {
                ApplicationArea = All;
            }
        }
    }
}