table 50000 "Import Payroll"
{
    Caption = 'Import Payroll Setup';
    DataClassification = ToBeClassified;
    LookupPageId = "Import Payroll";
    DrillDownPageId = "Import Payroll";

    fields
    {
        field(1; Celesi; Code[2])
        {
            Caption = 'Celesi';
            DataClassification = ToBeClassified;
        }
        field(2; "Account Type"; Enum "Gen. Journal Account Type")
        {
            Caption = 'Account Type';
            DataClassification = ToBeClassified;
        }

        field(3; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            DataClassification = ToBeClassified;

            TableRelation = IF ("Account Type" = CONST("G/L Account")) "G/L Account" WHERE("Account Type" = CONST(Posting),
                                                                                              Blocked = CONST(false),
                                                                                              "Direct Posting" = const(true))
            ELSE
            IF ("Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Account Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Account Type" = CONST("Bank Account")) "Bank Account"
            ELSE
            IF ("Account Type" = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Account Type" = CONST("IC Partner")) "IC Partner"
            ELSE
            IF ("Account Type" = CONST(Employee)) Employee;
        }

        field(4; "Bal. Account Type"; Enum "Gen. Journal Account Type")
        {
            Caption = 'Bal. Account Type';
            DataClassification = ToBeClassified;
        }
        field(5; "Bal. Account No."; Code[20])
        {
            Caption = 'Bal. Account No.';
            DataClassification = ToBeClassified;

            TableRelation = IF ("Bal. Account Type" = CONST("G/L Account")) "G/L Account" WHERE("Account Type" = CONST(Posting),
                                                                                                   Blocked = CONST(false),
                                                                                                   "Direct Posting" = const(true))

            ELSE
            IF ("Bal. Account Type" = CONST(Customer)) Customer
            ELSE
            IF ("Bal. Account Type" = CONST(Vendor)) Vendor
            ELSE
            IF ("Bal. Account Type" = CONST("Bank Account")) "Bank Account"
            ELSE
            IF ("Bal. Account Type" = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Bal. Account Type" = CONST("IC Partner")) "IC Partner"
            ELSE
            IF ("Bal. Account Type" = CONST(Employee)) Employee;
        }
    }

    keys
    {
        key(PK; Celesi)
        {
            Clustered = true;
        }
    }
}