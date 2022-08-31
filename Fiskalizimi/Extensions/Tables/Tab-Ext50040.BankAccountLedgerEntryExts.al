tableextension /*50318*/50040 "Bank Account Ledger Entry Exts" extends "Bank Account Ledger Entry"
{
    fields
    {
        field(50300; "Cash Register Operation"; Enum "Cash Register Operation")
        {
            Caption = 'Cash Register Operation';
            DataClassification = ToBeClassified;
        }
        field(50301; FCDC; Text[36])
        {
            Caption = 'FCDC';
            DataClassification = ToBeClassified;
        }
        field(50302; UUID; Text[36])
        {
            Caption = 'UUID';
            DataClassification = ToBeClassified;
        }
        field(50303; "Change Date"; Text[65])
        {
            Caption = 'Change Date';
            DataClassification = ToBeClassified;
        }
        field(50304; "Invoice File Name"; Text[225])
        {
            Caption = 'Invoice File Name';
            DataClassification = ToBeClassified;
        }
        field(50305; "Subseq Deliv Type"; Enum "Subsequent Delivery Type")
        {
            Caption = 'Subsequent Delivery Type';
            DataClassification = ToBeClassified;
        }
    }
}