tableextension /*50314*/50036 "Shipping Agent Exts" extends "Shipping Agent"
{
    fields
    {
        field(50300; "Vehicle Plate No."; Code[30])
        {
            Caption = 'Vehicle Plate No.';
            DataClassification = ToBeClassified;
        }
        field(50302; "Own Vehicle"; Boolean)
        {
            Caption = 'Own Vehicle';
            DataClassification = ToBeClassified;
        }
        field(50303; "Vat Registration No."; Text[20])
        {
            Caption = 'Vat Registration No.';
            DataClassification = ToBeClassified;
        }
        field(50304; "Personal ID"; Text[10])
        {
            Caption = 'Personal id';
            DataClassification = ToBeClassified;
        }
        field(50305; "IDType"; Enum IDType)
        {
            Caption = 'ID Type';
            DataClassification = ToBeClassified;
        }
        field(50306; "Address"; Text[100])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(50307; "City"; Text[100])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
    }
}
