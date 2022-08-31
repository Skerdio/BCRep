pageextension 50050 PagExtGenLedgerSetup extends "General Ledger Setup"
{
    layout
    {
        addlast(General)
        {
            field("Default Gen. Jnl Tempalate"; Rec."Default Gen. Jnl Tempalate")
            {
                ApplicationArea = All;
            }
            field("Default Gen. Jnl Batch"; Rec."Default Gen. Jnl Batch")
            {
                ApplicationArea = All;
            }
        }
    }
}