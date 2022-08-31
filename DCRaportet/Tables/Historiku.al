table 50009 Historiku
{
    // DataClassification = ToBeClassified;
    // LookupPageId = Historiku;
    // DrillDownPageId = Historiku;
    DataCaptionFields = "Asset No";


    fields
    {
        field(1; "Code"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; MainProna; Code[20])
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Fixed Asset"."Asset Dependence No." where("No." = field("Asset No")));

        }
        field(3; Pronari; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Data; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Komente; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Asset No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
            //NotBlank = true;
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
        // fieldgroup(DropDown; PrimKey, MainProna, Prona, Data, Komente) { }
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