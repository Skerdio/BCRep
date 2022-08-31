table 50170 "Dimension Allocation Setup"
{
    Caption = 'Dimension Allocation Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Dimension ToAllocate From"; Code[20])
        {
            Caption = 'Dimension ToAllocate From';
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = field("Dimension Code"), toAllocate = const(true));
        }
        field(2; "From Dimension Name"; Text[50])
        {
            Caption = 'From Dimension Name ';
            FieldClass = FlowField;
            CalcFormula = lookup("Dimension Value".Name where(Code = field("Dimension ToAllocate From")));
        }
        field(3; "Dimension ToAllocate To"; Code[20])
        {
            Caption = 'Dimension ToAllocate To';
            DataClassification = ToBeClassified;
            TableRelation = "Dimension Value".Code where("Dimension Code" = field("Dimension Code"), toAllocate = const(false));
        }
        field(4; "To Dimension Name "; Text[50])
        {
            Caption = 'To Dimension Name';
            FieldClass = FlowField;
            CalcFormula = lookup("Dimension Value".Name where(Code = field("Dimension ToAllocate To")));
        }
        field(5; Percentage; Decimal)
        {
            Caption = 'Percentage';
            DataClassification = ToBeClassified;
        }
        field(6; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(key1; "Dimension Code", "Dimension ToAllocate From", "Dimension ToAllocate To")
        {
            Clustered = true;
        }
    }
}