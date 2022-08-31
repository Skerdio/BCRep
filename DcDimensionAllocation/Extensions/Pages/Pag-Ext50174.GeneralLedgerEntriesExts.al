pageextension 50174 "General Ledger Entries Exts" extends "General Ledger Entries"
{
    layout
    {
        addafter("Document No.")
        {
            field("Allocated Dimension"; Rec."Allocated Dimension")
            {
                ApplicationArea = All;
            }
            field("Dimension allocator"; Rec."Dimension allocator")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast(processing)
        //? addbefore(ReverseTransaction)
        {
            action("Split Dimension Cost")
            {
                Caption = 'Split Dimension Cost';
                ApplicationArea = All;
                Image = CopyDimensions;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                RunObject = Report "Dimension Allocation G/L";
            }
        }
    }
}