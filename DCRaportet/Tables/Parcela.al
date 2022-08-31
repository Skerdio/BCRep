table 50012 Parcela
{
    DataClassification = ToBeClassified;
    LookupPageId = Parcela;
    DrillDownPageId = Parcela;

    fields
    {
        field(1; "Parcela No."; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Parcela No.")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Parcela No.", Description) { }
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