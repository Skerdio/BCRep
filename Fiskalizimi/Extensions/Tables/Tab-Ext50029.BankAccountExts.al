tableextension /*50307*/50029 "Bank Account Exts" extends "Bank Account"
{
    fields
    {
        field(50300; "Cash Register Operation"; Enum "Cash Register Operation")
        {
            Caption = 'Cash Register Operation';
            DataClassification = ToBeClassified;
        }
        field(50301; "Is Cash"; Boolean)
        {
            Caption = 'Is Cash';
            DataClassification = ToBeClassified;
        }
        field(50302; "Change Date"; Text[65])
        {
            Caption = 'Change Date';
            DataClassification = ToBeClassified;
        }
        field(50303; "Subseq Deliv Type"; Enum "Subsequent Delivery Type")
        {
            Caption = 'Subsequent Delivery Type';
            DataClassification = ToBeClassified;
        }
        field(50304; FCDC; Text[36])
        {
            Caption = 'FCDC';
            DataClassification = ToBeClassified;
        }
        field(50305; UUID; Text[36])
        {
            Caption = 'UUID';
            DataClassification = ToBeClassified;
        }
        field(50306; "Invoice File Name"; Text[225])
        {
            Caption = 'Invoice File Name';
            DataClassification = ToBeClassified;
        }
        field(50307; "Declaration Date"; Date)
        {
            Caption = 'Declaration Date';
            DataClassification = ToBeClassified;
        }
        field(50308; "Holder Name"; Text[50])
        {
            Caption = 'Holder Name';
            DataClassification = ToBeClassified;
        }
    }
}