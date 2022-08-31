table /*50302*/ 50022 "CashUserSetup"
{
    Caption = 'Cash User Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Operator Code"; Text[10])
        {
            Caption = 'Operator Code';
            DataClassification = ToBeClassified;
        }
        field(2; "Bank Acc. No."; Code[20])
        {
            Caption = 'Bank Acc. No.';
            DataClassification = ToBeClassified;
        }
        field(3; "UserID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Operator Code", "Bank Acc. No.", UserID)
        {
            Clustered = true;
        }
    }
}