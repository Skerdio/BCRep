tableextension /*50315*/50037 "Transfer Shipment Header" extends "Transfer Shipment Header"
{
    fields
    {
        field(50300; "Start Location Type"; Enum "Location Type")
        {
            Caption = 'Start Location Type';
            DataClassification = ToBeClassified;
        }
        field(50301; "Destination Location Type"; Enum "Location Type")
        {
            Caption = 'Dest. Location Type';
            DataClassification = ToBeClassified;
        }
        field(50302; "isEscortRequired"; Boolean)
        {
            Caption = 'isEscortRequired';
            DataClassification = ToBeClassified;
        }
        field(50303; "isGoodsFlammable"; Boolean)
        {
            Caption = 'isGoodsFlammable';
            DataClassification = ToBeClassified;
        }
        field(50304; NIVFSH; Text[36])
        {
            Caption = 'NIVFSH';
            DataClassification = ToBeClassified;
        }
        field(50305; NSLFSH; Code[32])
        {
            Caption = 'NSLFSH';
            DataClassification = ToBeClassified;
        }
        field(50306; UUID; Text[36])
        {
            Caption = 'UUID';
            DataClassification = ToBeClassified;
        }
        field(50307; "Invoice File Name"; Text[225])
        {
            Caption = 'Invoice File Name';
            DataClassification = ToBeClassified;
        }
        field(50308; "Subseq Deliv Type"; Enum "Subsequent Delivery Type")
        {
            Caption = 'Subsequent Delivery Type';
            DataClassification = ToBeClassified;
        }
        field(50309; "Declaration Date"; Text[100])
        {
            Caption = 'Declaration Date';
            DataClassification = ToBeClassified;
        }
        field(50310; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
            DataClassification = ToBeClassified;
        }
        field(50311; "Dest.Date Time"; Text[100])
        {
            Caption = 'Dest. Date Time';
            DataClassification = ToBeClassified;
        }
        field(50312; "Start Date Time"; Text[100])
        {
            Caption = 'Start Date Time';
            DataClassification = ToBeClassified;
        }
        field(50313; "Fiscalised Invoice number"; Code[20])
        {
            Caption = 'Fiscalised Invoice number';
            DataClassification = ToBeClassified;
        }
        field(50314; "TCR Id"; Text[50])
        {
            Caption = 'TCR ID';
            DataClassification = ToBeClassified;
        }
    }
}
