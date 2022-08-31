tableextension 50180 "Item Journal Batch Exts" extends "Item Journal Batch"
{
    Caption = 'Item Journal Batch Exts';
    fields
    {
        field(50180; "General Product Posting Group"; Code[20])
        {
            Caption = 'General Product Posting Group';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Product Posting Group";
        }
    }
}