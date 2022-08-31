tableextension 50181 ItemJournalExts extends "Item Journal Line"
{
    fields
    {
        modify("Item No.")
        {
            trigger OnAfterValidate()
            var
                ItemJournalBatchExts: Record "Item Journal Batch";
            begin
                if ItemJournalBatchExts.Get(Rec."Journal Template Name", Rec."Journal Batch Name") then
                    if (ItemJournalBatchExts."General Product Posting Group" <> '') then
                        rec.Validate("Gen. Prod. Posting Group", ItemJournalBatchExts."General Product Posting Group");
            end;
        }
        modify("Entry Type")
        {
            trigger OnAfterValidate()
            var
                ItemJournalBatchExts: Record "Item Journal Batch";
            begin

                if ItemJournalBatchExts.Get(Rec."Journal Template Name", Rec."Journal Batch Name") then
                    if (ItemJournalBatchExts."General Product Posting Group" <> '') then
                        rec.Validate("Gen. Prod. Posting Group", ItemJournalBatchExts."General Product Posting Group");
            end;
        }
    }
}