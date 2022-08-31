table 50011 Kufizimet
{
    DataCaptionFields = "Asset No";

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Veri; Text[10])
        {
            DataClassification = ToBeClassified;

        }
        field(3; Jug; Text[10])
        {
            DataClassification = ToBeClassified;

        }
        field(4; Perendim; Text[10])
        {
            DataClassification = ToBeClassified;

        }
        field(5; Lindje; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Asset No"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
        }
    }

    keys
    {
        key(Key1; Code, "Asset No")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        //  fieldgroup(DropDown; PrimKey, veri, Jug, Perendim, Lindje) { }
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