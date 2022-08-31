table /*50301*/ 50021 "Discount Reason"
{
    Caption = 'Discount Reason';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Discount Reason Code"; Code[5])
        {
            Caption = 'Discount Reason Code';
            DataClassification = ToBeClassified;
        }
        field(2; "Discount Description"; Text[400])
        {
            Caption = 'Discount Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Discount Reason Code")
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; "Discount Reason Code", "Discount Description")
        { }
    }
}