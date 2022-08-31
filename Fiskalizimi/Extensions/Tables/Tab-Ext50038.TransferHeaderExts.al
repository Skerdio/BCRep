tableextension /*50316*/50038 "Transfer Header Exts" extends "Transfer Header"
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
        field(50314; "TCR Id"; Text[50])
        {
            Caption = 'TCR ID';
            DataClassification = ToBeClassified;
        }
    }
}
