page 50170 "Dimension Allocation Setup"
{
    Caption = 'Dimension Allocation Setup';
    PageType = List;
    SourceTable = "Dimension Allocation Setup";
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Dimension ToAllocate From"; Rec."Dimension ToAllocate From")
                {
                    ToolTip = 'Specifies the value of the Dimension ToAllocate From field';
                    ApplicationArea = All;
                }
                field("From Dimension Name"; Rec."From Dimension Name")
                {
                    ToolTip = 'Specifies the value of the From Dimension Name field';
                    ApplicationArea = All;
                }
                field("Dimension ToAllocate To"; Rec."Dimension ToAllocate To")
                {
                    ToolTip = 'Specifies the value of the Dimension ToAllocate To field';
                    ApplicationArea = All;
                }
                field("To Dimension Name"; Rec."To Dimension Name ")
                {
                    ToolTip = 'Specifies the value of the ToDimension Name field';
                    ApplicationArea = All;
                }
                field("Dimension Code"; Rec."Dimension Code")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
                field(Percentage; Rec.Percentage)
                {
                    ToolTip = 'Specifies the value of the Percentage field';
                    ApplicationArea = All;
                }
            }
        }
    }
    var
        gDimensionCode: Code[30];

    trigger OnOpenPage()
    begin
        if gDimensionCode <> '' then begin
            Rec.FilterGroup(2);
            Rec.SetRange("Dimension Code", gDimensionCode);
            Rec.FilterGroup(0);
        end;
    end;

    procedure SetDimensionCode(pDimensionCode: Code[30])
    begin
        gDimensionCode := pDimensionCode;
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    var
        lDim: Record "Dimension Allocation Setup";
        x: Integer;
    begin
        x := 0;
        lDim.Reset();
        lDim.SetRange("Dimension Code", Rec."Dimension Code");
        if lDim.FindSet() then begin
            repeat
                x := x + lDim.Percentage;
            Until lDim.Next() = 0;
            if (x <> 100) then
                Error('Perqindja shperndarjes eshte e pasakte: %1', x);
        end;
    end;

    procedure GetSelectedDim(): Text
    var
        Dim: Record "Dimension Allocation Setup";
        DimensionCode: text;
    begin
        CurrPage.SetSelectionFilter(Dim);
        if Dim.FindSet() then begin
            repeat
                if DimensionCode <> '' then
                    DimensionCode += '|';
                DimensionCode += Dim."Dimension ToAllocate To";
            until Dim.Next() = 0;
        end;
        exit(DimensionCode);
    end;
}