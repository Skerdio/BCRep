tableextension /*50301*/50023 "Payment Method exts" extends "Payment Method"
{
    fields
    {
        field(50300; "EInvoice Payment Method Code"; Text[250])
        {
            Caption = 'E-Invoice Payment Method Code';
            DataClassification = ToBeClassified;
        }
        field(50301; "Company Card No."; Text[50])
        {
            Caption = 'Company Card No.';
            DataClassification = ToBeClassified;
        }
        field(50302; "Payment Means"; Text[50])
        {
            Caption = 'Payment Means';
            DataClassification = ToBeClassified;
        }
        field(50303; "Debit/Credit Payments"; Boolean)
        {
            Caption = 'Debit/Credit Payments';
            DataClassification = ToBeClassified;
        }
        field(50304; "Is Cash"; Boolean)
        {
            Caption = 'Is Cash';
            DataClassification = ToBeClassified;
        }
    }
}