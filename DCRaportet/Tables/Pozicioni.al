table 50013 Pozicioni
{
    DataClassification = ToBeClassified;


    fields
    {
        field(5; "Position Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            // AutoIncrement = true;
            // InitValue = 1;
        }
        field(1; Longitude; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 15;

        }
        field(2; Latitude; Decimal)
        {
            DataClassification = ToBeClassified;
            DecimalPlaces = 15;

        }
        field(3; UrlMap; Text[250])
        {
            DataClassification = ToBeClassified;
            ExtendedDatatype = URL;
            Editable = false;
        }
        field(4; "Asset No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Asset No", "Position Code")
        {
            Clustered = true;
        }
    }

    var
        url: Text;
}