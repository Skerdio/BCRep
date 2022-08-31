pageextension 50172 DimensionValuesExts extends "Dimension Values"
{
    layout
    {
        addafter(Name)
        {
            field(toAllocate; Rec.toAllocate)
            {
                ApplicationArea = all;
            }
        }
    }
}