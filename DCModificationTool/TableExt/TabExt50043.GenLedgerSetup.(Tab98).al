tableextension 50043 TabExtGLS extends "General Ledger Setup"
{
    fields
    {
        field(50242; "Default Gen. Jnl Tempalate"; Code[10])
        {
            Caption = 'Default Gen. Jnl. Tempalate';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Journal Template".Name WHERE(Type = CONST(General), Recurring = CONST(false));

            trigger OnValidate()
            begin
                "Default Gen. Jnl Batch" := '';
            end;
        }
        field(50243; "Default Gen. Jnl Batch"; Code[10])
        {
            Caption = 'Default Gen. Jnl Batch';
            DataClassification = ToBeClassified;
            TableRelation = "Gen. Journal Batch".Name WHERE("Journal Template Name" = FIELD("Default Gen. Jnl Tempalate"));
        }
    }
}