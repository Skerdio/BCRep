pageextension /*50315*/50035 "VAT Posting Setup Exts" extends "VAT Posting Setup"
{
    layout
    {
        addafter("VAT Prod. Posting Group")
        {
            field("VAT Excluded"; Rec."VAT Excluded")
            {
                ApplicationArea = all;
            }
            field("VAT Exemption Type"; Rec."VAT Exemption Type")
            {
                ApplicationArea = All;
            }
            field(Export; Rec.Export)
            {
                ApplicationArea = All;
            }
        }
    }
}