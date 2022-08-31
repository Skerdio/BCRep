pageextension 50012 "GL Account Exts" extends "G/L Account Card"
{
    layout
    {
        addlast(General)
        {
            field("Acc. to Allocate"; Rec."Acc. to Allocate")
            {
                ToolTip = 'Specifies the value of the Acc. to Allocate field';
                ApplicationArea = All;
                Editable = gEditAccToAllocate;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        gEditAccToAllocate := Rec."Income/Balance" = Rec."Income/Balance"::"Balance Sheet";
    end;

    trigger OnAfterGetCurrRecord()
    begin
        gEditAccToAllocate := Rec."Income/Balance" = Rec."Income/Balance"::"Balance Sheet";
    end;

    var
        gEditAccToAllocate: Boolean;
}