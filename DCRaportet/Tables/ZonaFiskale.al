table 50010 ZonaFiskale
{
    DataClassification = ToBeClassified;
    DataCaptionFields = Code;
    Permissions = tabledata 5600 = rimd;
    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Zona; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; CmimiRef; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; VlereTregu; Decimal)
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
        //   fieldgroup(DropDown; PrimKey, Zona, Cmimi, VlereTregu, VlerePerfu) { }
    }
}