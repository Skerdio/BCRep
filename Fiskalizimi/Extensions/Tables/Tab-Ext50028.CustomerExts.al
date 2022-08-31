tableextension /*50306*/50028 "Customer Exts" extends Customer
{
    fields
    {
        field(50300; IDType; Enum "Identification Type")
        {
            Caption = 'ID Type';
            DataClassification = ToBeClassified;
        }
        field(50301; "Personal ID"; Text[10])
        {
            Caption = 'Personal id';
            DataClassification = ToBeClassified;
        }
        field(50302; "Tax No."; Text[10])
        {
            Caption = 'Tax No.';
            DataClassification = ToBeClassified;
        }
        field(50303; "Type of Inovice"; Enum "Invoice Type")
        {
            Caption = 'Type of Inovice';
            DataClassification = ToBeClassified;
        }
        field(50304; "Type of Self ISS"; Enum "Type of Self IIS")
        {
            Caption = 'Type of Self ISS';
            DataClassification = ToBeClassified;
        }
        field(50305; "Is Simplified Invoice"; Boolean)
        {
            Caption = 'Is Simplified Invoice';
            DataClassification = ToBeClassified;
        }
        field(50306; "Is Reversed Charge"; Boolean)
        {
            Caption = 'Is Reversed Charge';
            DataClassification = ToBeClassified;
        }
        field(50307; "Delivery Require"; Boolean)
        {
            Caption = 'Delivery Require';
            DataClassification = ToBeClassified;
        }
    }
}