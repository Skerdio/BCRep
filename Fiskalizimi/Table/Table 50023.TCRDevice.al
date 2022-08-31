table /*50303*/ 50023 "TCR Device"
{
    Caption = 'TCR Device';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "TCR Code"; Text[10])
        {
            Caption = 'TCR Code';
            DataClassification = ToBeClassified;
        }
        field(2; "TCR Type"; Enum "TCR Type")
        {
            Caption = 'TCR Type';
            DataClassification = ToBeClassified;
        }
        field(3; "TCR Id"; Text[50])
        {
            Caption = 'TCR Id';
            DataClassification = ToBeClassified;
        }
        field(4; "Valid From"; Date)
        {
            Caption = 'Valid From';
            DataClassification = ToBeClassified;
        }
        field(5; "Valid To"; Date)
        {
            Caption = 'Valid To';
            DataClassification = ToBeClassified;
        }
        field(6; "Soft Code"; Text[10])
        {
            Caption = 'SoftCode';
            DataClassification = ToBeClassified;
        }
        field(7; "Maintainer Code"; Text[10])
        {
            Caption = 'Maintainer Code';
            DataClassification = ToBeClassified;
        }
        field(8; "Business Unit Code"; Text[10])
        {
            Caption = 'Business Unit Code';
            DataClassification = ToBeClassified;
        }
        field(9; UUID; Text[36])
        {
            Caption = 'UUID';
            DataClassification = ToBeClassified;
        }
        field(50338; "Invoice No. Series."; Code[20])
        {
            Caption = 'Invoice No. Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50339; "Credit Memo No. Series."; Code[20])
        {
            Caption = 'Credit Memo No. Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50340; "Trans. Shipmment No. Series."; Code[20])
        {
            Caption = 'Trans. Shipmment No. Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(PK; "TCR Id")
        {
            Clustered = true;
        }
    }
}