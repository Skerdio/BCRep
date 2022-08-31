table /*50300*/50020 "Company Setup -  e-Invoice"
{
    Caption = 'Company Setup E-Invoice';
    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            DataClassification = ToBeClassified;
        }
        field(4; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(5; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            DataClassification = ToBeClassified;
        }
        field(6; City; Text[30])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Country/Region Code" = CONST()) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code".City WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            ValidateTableRelation = false;
        }
        field(7; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
            DataClassification = ToBeClassified;
            trigger OnValidate();
            var
                VATRegNoFormat: Record 381;
                GLSetup: Record 98;
            begin
            end;
        }
        field(8; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            DataClassification = ToBeClassified;
            TableRelation = IF ("Country/Region Code" = CONST()) "Post Code".Code
            ELSE
            IF ("Country/Region Code" = FILTER(<> '')) "Post Code".Code WHERE("Country/Region Code" = FIELD("Country/Region Code"));
            ValidateTableRelation = false;
        }
        field(9; Country; Text[30])
        {
            Caption = 'Country';
            DataClassification = ToBeClassified;
        }
        field(10; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
            DataClassification = ToBeClassified;
        }
        // field(11; "Fiscal Code"; Code[20])
        // {
        //     Caption = 'Fiscal Code';
        //     DataClassification = ToBeClassified;
        // }
        field(12; "FE Activated"; Boolean)
        {
            Caption = 'FE Activated';
            DataClassification = ToBeClassified;
        }
        // field(13; "e-Doc. Sending Series No."; Code[10])
        // {
        //     Caption = 'e-Doc. Sending Series No. ';
        //     TableRelation = "No. Series";
        //     DataClassification = ToBeClassified;
        // }
        field(15; "File Path"; Text[250])
        {
            Caption = 'File Path';
            DataClassification = ToBeClassified;
        }
        field(16; "File Path Sales"; Text[250])
        {
            Caption = 'Sales Request File Path';
            DataClassification = ToBeClassified;
        }
        field(17; "TCR Code"; Text[10])
        {
            Caption = 'TCR Code';
            DataClassification = ToBeClassified;
        }
        field(18; "Soft Code"; Text[10])
        {
            Caption = 'SoftCode';
            DataClassification = ToBeClassified;
        }
        field(19; "Maintainer Code"; Text[10])
        {
            Caption = 'Maintainer Code';
            DataClassification = ToBeClassified;
        }
        field(20; "Security Certificate Path"; Text[250])
        {
            Caption = 'Security Certificate Path';
            DataClassification = ToBeClassified;
        }
        field(21; "Device Registration File Path"; Text[250])
        {
            Caption = 'Device Registration File Path';
            DataClassification = ToBeClassified;
        }
        field(22; "Sales Response File Path"; Text[250])
        {
            Caption = 'Sales Response File Path';
            DataClassification = ToBeClassified;
        }
        field(23; "Device Reg Response File Path "; Text[250])
        {
            Caption = 'Device Reg Response File Path';
            DataClassification = ToBeClassified;
        }
        field(24; "Register TCR Request URL"; Text[250])
        {
            Caption = 'Register TCR Request URL';
            DataClassification = ToBeClassified;
        }
        field(25; "Register Invoice Request URL"; Text[250])
        {
            Caption = 'Register Invoice Request URL';
            DataClassification = ToBeClassified;
        }
        field(26; "Environment URL"; Text[250])
        {
            Caption = 'Environment URL';
            DataClassification = ToBeClassified;
        }
        field(27; "Business Unit Code"; Text[10])
        {
            Caption = 'Business Unit Code';
            DataClassification = ToBeClassified;
        }
        field(28; "TCR Type"; Enum "TCR Type")
        {
            Caption = 'TCR Type';
            DataClassification = ToBeClassified;
        }
        field(29; IDType; Enum "Identification Type")
        {
            Caption = 'ID Type';
            DataClassification = ToBeClassified;
        }
        field(30; "Personal ID No."; Text[10])
        {
            Caption = 'Personal ID Number';
            DataClassification = ToBeClassified;
        }
        field(32; "TAX No."; Text[20])
        {
            Caption = 'TAX No.';
            DataClassification = ToBeClassified;
        }
        field(33; "Is Issuer In VAT"; Boolean)
        {
            Caption = 'Is Issuer In VAT';
            DataClassification = ToBeClassified;
        }
        field(34; "Register Cash Request URL"; Text[250])
        {
            Caption = 'Register Cash Request URL';
            DataClassification = ToBeClassified;
        }
        field(35; "Cash Reg Request File Path"; Text[250])
        {
            Caption = 'Cash Request File Path';
            DataClassification = ToBeClassified;
        }
        field(36; "Cash Reg Response File Path"; Text[250])
        {
            Caption = 'Cash Response File Path';
            DataClassification = ToBeClassified;
        }
        field(37; "Default Unit of Measure"; Text[50])
        {
            Caption = 'Default Unit of Measure';
            DataClassification = ToBeClassified;
        }
        field(39; "TCR Id"; Text[50])
        {
            Caption = 'TCR ID';
            DataClassification = ToBeClassified;

        }
        field(40; "Valid From"; Date)
        {
            Caption = 'Valid From';
            DataClassification = ToBeClassified;
        }
        field(41; "Valid To"; Date)
        {
            Caption = 'Valid To';
            DataClassification = ToBeClassified;
        }
        field(42; "E-Invoice Environment URL"; Text[250])
        {
            Caption = 'E-Invoice Environment URL';
            DataClassification = ToBeClassified;
        }
        field(43; "E-Invoice Register URL"; Text[250])
        {
            Caption = 'E-Invoice Register URL';
            DataClassification = ToBeClassified;
        }
        field(44; "E-Invoice Type Code"; Enum "E-Invoice Type Code")
        {
            Caption = 'E-Invoice Type Code';
            DataClassification = ToBeClassified;
        }
        field(45; "Invoice Business Process"; Enum "Invoice Business Process")
        {
            DataClassification = ToBeClassified;
            Caption = 'Invoice Business Process';
        }
        field(46; "Identifier Specifications"; Text[100])
        {
            Caption = 'Identifier Specifications';
            DataClassification = ToBeClassified;
        }
        field(47; "Equity of ShareHolders"; Text[100])
        {
            Caption = 'Equity of ShareHolders';
            DataClassification = ToBeClassified;
        }
        field(49; "VAT Date Effective"; Date)
        {
            Caption = 'VAT Date Effective';
            DataClassification = ToBeClassified;
        }
        field(51; "Tax Representative Name"; Text[100])
        {
            Caption = 'Tax Representative Name';
            DataClassification = ToBeClassified;
        }
        field(52; "Tax Representative Vat Reg No."; TExt[20])
        {
            Caption = 'Tax Representative Vat Reg No.';
            DataClassification = ToBeClassified;
        }
        field(53; "Tax Representative Address"; Text[50])
        {
            Caption = 'Tax Representative Address';
            DataClassification = ToBeClassified;
        }
        field(54; "Tax Representative Address 2"; Text[50])
        {
            Caption = 'Tax Representative Address 2';
            DataClassification = ToBeClassified;
        }
        field(55; "Tax Representative City"; Text[30])
        {
            Caption = 'Tax Representative City';
            DataClassification = ToBeClassified;
        }
        field(56; "Tax Representative Post Code"; Text[30])
        {
            Caption = 'Tax Representative Post Code';
            DataClassification = ToBeClassified;
        }
        field(57; "Tax Rep. Country/Region Code"; Code[10])
        {
            Caption = 'Tax Representative Country/Region Code';
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
        field(58; "Tax Representative Country"; Text[50])
        {
            Caption = 'Tax Representative Country';
            DataClassification = ToBeClassified;
        }
        field(59; "Tax Representative"; Boolean)
        {
            Caption = 'Tax Representative';
            DataClassification = ToBeClassified;
        }
        field(60; "E-Invoice Response File Path"; Text[250])
        {
            Caption = 'E-Invoice Response File Path';
            DataClassification = ToBeClassified;
        }
        field(61; "Companion Inv. Req. File Path"; Text[250])
        {
            Caption = 'Companion Inv. Req. File Path';
            DataClassification = ToBeClassified;
        }
        field(62; "Companion Inv. Resp. File Path"; Text[250])
        {
            Caption = 'Companion Inv. Resp. File Path';
            DataClassification = ToBeClassified;
        }
        field(63; "Tax Payers Req. File Path"; Text[250])
        {
            Caption = 'Tax Payers Req. File Path';
            DataClassification = ToBeClassified;
        }
        field(64; "Tax Payers Resp. File Path"; Text[250])
        {
            Caption = 'Tax Payers Resp. File Path';
            DataClassification = ToBeClassified;
        }
        field(65; "Companion Inv. Request URL"; Text[250])
        {
            Caption = 'Companion Inv. Request URL';
            DataClassification = ToBeClassified;
        }
        field(66; "Response File suffixes"; Text[250])
        {
            Caption = 'Response File suffixes';
            DataClassification = ToBeClassified;
        }
        field(67; "Security Certificate pass key"; Text[250])
        {
            Caption = 'Security Certificate pass key';
            DataClassification = ToBeClassified;
        }
        field(68; "E-CreditMemo Type Code"; Enum "E-Credit Memo Type Code")
        {
            Caption = 'E-Credit Memo Type Code';
            DataClassification = ToBeClassified;
        }
        field(69; "E-Invoice Request File Path"; Text[250])
        {
            Caption = 'E-Invoice Request File Path';
            DataClassification = ToBeClassified;
        }
        field(70; "Invoice No. Series."; Code[20])
        {
            Caption = 'Invoice No. Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(71; "Credit Memo No. Series."; Code[20])
        {
            Caption = 'Credit Memo No. Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(72; "Trans. Shipmment No. Series."; Code[20])
        {
            Caption = 'Trans. Shipmment No. Series';
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(73; "Credit Memo Business Process"; Enum "Credit Memo Business Process")
        {
            DataClassification = ToBeClassified;
            Caption = 'E-Credit Memo Business Process';
        }

    }
    keys
    {
        key(Key1; "Primary Key")
        { }
    }
}