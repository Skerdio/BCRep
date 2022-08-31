table 50014 "Pronesia e Parceles"
{
    DataClassification = ToBeClassified;
    LookupPageId = PronesiaParceles;
    DrillDownPageId = PronesiaParceles;

    fields
    {
        field(1; "Pronesia No."; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Parcela No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Parcela;
            Editable = false;
        }
        field(3; Owner; text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Asset No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
        }
        field(5; Owner2; Text[20])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Pronesia No.", "Parcela No.", "Asset No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Pronesia No.", Owner, Owner2) { }
    }



    trigger OnInsert()
    var
        FixedAss: Record "Fixed Asset";
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