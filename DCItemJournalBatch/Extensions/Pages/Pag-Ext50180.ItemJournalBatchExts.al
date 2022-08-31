pageextension 50180 "Item Journal Batch Exts" extends "Item Journal Batches"
{
    layout
    {
        addlast(Control1)
        {
            field("General Product Posting Group"; Rec."General Product Posting Group")
            {
                ApplicationArea = All;
            }
        }
    }
}
