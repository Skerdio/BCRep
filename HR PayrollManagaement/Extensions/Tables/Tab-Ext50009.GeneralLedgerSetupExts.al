tableextension 50009 "General Ledger Setup Exts" extends "General Ledger Setup"
{
    fields
    {
        field(50170; "Dimension Code To Allocate"; Code[20])
        {
            Caption = 'Dimension Code To Allocate';
            DataClassification = ToBeClassified;
            TableRelation = Dimension.Code;
        }
        field(50171; "Dim. Alloc. Journal Temp. Name"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Dimension Allocation Journal Template Name';
            TableRelation = "Gen. Journal Template";
        }
        field(50172; "Dim. Alloc. Journal Batch Name"; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Dimension Allocation Journal Batch Name';
            TableRelation = "Gen. Journal Batch".Name where("Journal Template Name" = field("Dim. Alloc. Journal Temp. Name"));
        }
    }
}