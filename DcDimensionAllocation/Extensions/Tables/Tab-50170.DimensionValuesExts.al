tableextension 50170 DimensionValuesExts extends "Dimension Value"
{
    fields
    {
        field(50230; toAllocate; Boolean)
        {
            Caption = 'toAllocate';
            DataClassification = ToBeClassified;

            trigger OnValidate()
            var
                lDimValue: Record "Dimension Value";
                lError01: Label 'You must specify only One %1 as %2';
            begin
                if Rec.toAllocate then begin
                    lDimValue.Reset();
                    lDimValue.SetRange(toAllocate, true);
                    lDimValue.SetFilter(Code, '<> %1', Rec.Code);
                    if not lDimValue.IsEmpty()
                    then
                        Error(lError01, rec.TableCaption, Rec.FieldCaption(toAllocate));
                end;
            end;
        }
    }
    fieldgroups
    {
        addlast(DropDown; toAllocate)
        {
        }
    }
}