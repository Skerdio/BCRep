tableextension /*50310*/50032 "Sales Line Exts" extends "Sales Line"
{
    fields
    {
        field(50310; "Is Investment"; Boolean)
        {
            Caption = 'Is Investment';
            DataClassification = ToBeClassified;
        }
        field(50311; "Package Type"; Enum "Package Type")
        {
            Caption = 'Package type';
            DataClassification = ToBeClassified;
        }
        field(50313; "Reas. for Disc. On Inv. Item"; Text[100])
        {
            Caption = 'Reason for Discount on invoice Item';
            DataClassification = ToBeClassified;
        }

        modify("No.")
        {
            trigger OnAfterValidate()
            var
                Item: Record Item;
                GenLedgSet: Record "General Ledger Setup";
            begin
                GenLedgSet.GET(GenLedgSet."Primary Key");

                if rec.Type = rec.Type::"Fixed Asset" then begin
                    rec."Is Investment" := true;
                end;
                if (rec.Type = rec.Type::Item) then begin
                    Item.Get("No.");
                    if (Item."Package Type" <> Item."Package Type"::" ") then
                        rec."Package Type" := Item."Package Type";
                end;
                if rec.Type = rec.Type::"G/L Account" then
                    rec."Allow Invoice Disc." := GenLedgSet."Allow Inv Disc For G/L Account";
            end;
        }
    }
}