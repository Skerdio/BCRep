table 50016 Bashkepronaret
{
    // DataClassification = ToBeClassified;
    // LookupPageId = Bashkepronaret;
    // DrillDownPageId = Bashkepronaret;
    DataCaptionFields = "Asset No";

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Emer; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Mbiemer; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Perqindja; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Pjeset; Text[5])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Asset No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
        }
    }

    keys
    {
        key(Key1; "Asset No", Code)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        //  fieldgroup(DropDown; PrimKey, Emri, Mbiemer, Perqindja, Pjeset) { }
    }


    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
    end;

    trigger OnRename()
    begin
    end;
}