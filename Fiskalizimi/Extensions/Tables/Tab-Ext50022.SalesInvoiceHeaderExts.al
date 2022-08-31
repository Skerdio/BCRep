tableextension /*50300*/50022 "Sales Invoice Header Exts" extends "Sales Invoice Header"
{
    fields
    {
        field(50300; "Invoice Type"; Enum "Invoice Type")
        {
            Caption = 'Invoice Type';
            DataClassification = ToBeClassified;
        }
        field(50301; "Type of Self Iss"; Enum "Type of Self IIS")
        {
            Caption = 'Type of Self Iss';
            DataClassification = ToBeClassified;
        }
        field(50302; "Is Reversed"; Boolean)
        {
            Caption = 'Is Reversed Charge';
            DataClassification = ToBeClassified;
        }
        field(50303; "Is E-Invoice"; Boolean)
        {
            Caption = 'Is E-Invoice';
            DataClassification = ToBeClassified;
        }
        field(50304; "Is Summary"; Boolean)
        {
            Caption = 'Is Summary';
            DataClassification = ToBeClassified;
        }
        field(50305; NSLF; Code[32])
        {
            Caption = 'NSLF';
            DataClassification = ToBeClassified;
        }
        field(50306; "Subseq Deliv Type"; Enum "Subsequent Delivery Type")
        {
            Caption = 'Subsequent Delivery Type';
            DataClassification = ToBeClassified;
        }
        field(50307; "Is Simplified Inv"; Boolean)
        {
            Caption = 'Is Simplified Invoice';
            DataClassification = ToBeClassified;
        }
        field(50308; NIVF; Text[36])
        {
            Caption = 'NIVF';
            DataClassification = ToBeClassified;
        }
        field(50309; "Fiscalization Date"; Text[65])
        {
            Caption = 'Fiscalization Date';
            DataClassification = ToBeClassified;
        }
        field(50310; "Correc. Inv Type"; Enum "Corrective Envoice Type")
        {
            Caption = 'Corrective Invoice Type';
            DataClassification = ToBeClassified;
        }
        field(50311; "Sum Inv IIC Refs"; Text[500])
        {
            Caption = 'Sum Inv IIC Refs';
            DataClassification = ToBeClassified;
        }
        field(50312; UUID; Text[36])
        {
            Caption = 'UUID';
            DataClassification = ToBeClassified;
        }
        field(50313; "Invoice File Name"; Text[225])
        {
            Caption = 'Invoice File Name';
            DataClassification = ToBeClassified;
        }
        field(50314; "E-Invoice Type Code"; Enum "E-Invoice Type Code")
        {
            Caption = 'E-Invoice Type Code';
            DataClassification = ToBeClassified;
        }
        field(50315; "Invoice Business Process"; Enum "Invoice Business Process")
        {
            Caption = 'Invoice Business Process';
            DataClassification = ToBeClassified;
        }
        // field(50316; "Reason for Invoice Item Charge"; Text[100])
        // {
        //     Caption = 'Reason for Invoice Item Charge';
        //     DataClassification = ToBeClassified;
        // }
        // field(50317; "Accounting Charge"; Text[100])
        // {
        //     Caption = 'Accounting Charge';
        //     DataClassification = ToBeClassified;
        // }
        field(50318; "Project Reference"; Text[100])
        {
            Caption = 'Project Reference';
            DataClassification = ToBeClassified;
        }
        field(50319; "Contract Doc. Reference"; Text[100])
        {
            Caption = 'Contract Document Reference';
            DataClassification = ToBeClassified;
        }
        field(50320; "Order Reference"; Text[100])
        {
            Caption = 'Order Reference';
            DataClassification = ToBeClassified;
        }
        field(50321; "Receipt Doc. Reference"; Text[100])
        {
            Caption = 'Receipt Document Reference';
            DataClassification = ToBeClassified;
        }
        field(50322; "Despatch Doc. Reference"; Text[100])
        {
            Caption = 'Despatch Document Reference';
            DataClassification = ToBeClassified;
        }
        field(50323; "Originator Doc. Reference"; Text[100])
        {
            Caption = 'Originator Document Reference';
            DataClassification = ToBeClassified;
        }
        field(50324; "Additional Doc. Reference"; Text[100])
        {
            Caption = 'Additional Document Reference';
            DataClassification = ToBeClassified;
        }
        field(50325; "Sales Order Reference"; Text[100])
        {
            Caption = 'Sales Order Reference';
            DataClassification = ToBeClassified;
        }
        field(50326; "Start Date"; Date)
        {
            Caption = 'Start Date';
            DataClassification = ToBeClassified;
        }
        field(50327; "End Date"; Date)
        {
            Caption = 'End Date';
            DataClassification = ToBeClassified;
        }
        field(50328; "Discount Reason"; Text[400])
        {
            Caption = 'Discount Reason';
            DataClassification = ToBeClassified;
        }
        field(50329; EIC; Text[36])
        {
            Caption = 'EIC';
            DataClassification = ToBeClassified;
        }
        field(50331; "Corrective/Is Bad Debt Invoice"; Enum "Corrective/BadDebt Invoice")
        {
            Caption = 'Corrective/Is Bad Debt Invoice';
            DataClassification = ToBeClassified;
        }
        field(50332; "Inv IIC Refs"; Text[500])
        {
            Caption = 'Inv IIC Refs';
            DataClassification = ToBeClassified;
        }
        field(50333; "FE Deactivate"; Boolean)
        {
            Caption = 'FE Deactivate';
            DataClassification = ToBeClassified;
        }
        field(50334; "Bank ACC. No."; Code[20])
        {
            Caption = 'Bank Account No.';
            DataClassification = ToBeClassified;
        }
        field(50335; "IIC Signature"; Code[512])
        {
            Caption = 'IIC Signature';
            DataClassification = ToBeClassified;
        }
        field(50336; "E-Invoice File Name"; Text[225])
        {
            Caption = 'E-Invoice File Name';
            DataClassification = ToBeClassified;
        }
        field(50337; "Delivery Require"; Boolean)
        {
            Caption = 'Delivery Require';
            DataClassification = ToBeClassified;
        }
        field(50338; "Fiscalised Invoice number"; Code[20])
        {
            Caption = 'Fiscalised Invoice number';
            DataClassification = ToBeClassified;
        }
        field(50339; "TCR Id"; Text[50])
        {
            Caption = 'TCR ID';
            DataClassification = ToBeClassified;
        }
    }
}