pageextension 50011 "General Ledger Entries Exts" extends "General Ledger Entries"
{
    layout
    {
        addlast(Control1)
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