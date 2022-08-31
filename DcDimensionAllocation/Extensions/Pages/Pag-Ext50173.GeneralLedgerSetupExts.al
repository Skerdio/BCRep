pageextension 50173 "General Ledger Setup Exts" extends "General Ledger Setup"
{
    layout
    {
        addfirst(Control1900309501)
        //? addbefore("Global Dimension 1 Code")
        {
            field("Dim. Alloc. Journal Temp. Name"; Rec."Dim. Alloc. Journal Temp. Name")
            {
                ApplicationArea = All;
            }
            field("Dim. Alloc. Journal Batch Name"; Rec."Dim. Alloc. Journal Batch Name")
            {
                ApplicationArea = All;
            }
            field("Dimension Code To Allocate"; Rec."Dimension Code To Allocate")
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast("F&unctions")
        {
            action("Dimension Allocation Setup")
            {
                Caption = 'Dimension  Allocation Setup';
                ApplicationArea = All;
                Promoted = true;
                Image = CostAccountingDimensions;
                RunObject = page "Dimension Allocation Setup";
                RunPageLink = "Dimension Code" = field("Dimension Code To Allocate");
            }
        }
    }
}