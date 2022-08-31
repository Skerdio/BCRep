report 50003 DimensionAllocation
{
    ApplicationArea = All;
    Caption = 'Dimension Allocation';
    UsageCategory = Tasks;
    ProcessingOnly = true;

    dataset
    {
        dataitem("Purchase Line"; "Purchase Line")
        {
            trigger OnAfterGetRecord()
            var
                lDimVal: Record "Dimension Value";
                lPL: Record "Purchase Line";
                lDimAllocSetup: Record "Dimension Allocation Setup";
                lTempDimSetEntry: Record "Dimension Set Entry" temporary;
                lTempNewDimSetEntry: Record "Dimension Set Entry" temporary;
                lDimMng: Codeunit DimensionManagement;
                c: Integer;
                c1: Integer;
                LastNo: Integer;
                lDimToAllocFrom: Code[20];
                lTotalAllocPerc: Decimal;
                lTotAllocatedAmount: Decimal;
                lDimValueFilter: Text[30];
                lDimvalueCode: Text[30];
            begin
                gGLSetup.Get();
                lPL.Reset();
                lPL.SetRange(lPL."Document No.", "Purchase Line"."Document No.");
                lPL.SetRange(lPL."Document Type", "Purchase Line"."Document Type");
                if lPL.FindLast() then
                    LastNo := lPL."Line No.";

                lTempDimSetEntry.Reset();
                lTempDimSetEntry.DeleteAll();
                lDimMng.GetDimensionSet(lTempDimSetEntry, "Purchase Line"."Dimension Set ID");

                lTempDimSetEntry.Reset();
                if lTempDimSetEntry.FindSet() then
                    repeat begin
                        lTempNewDimSetEntry := lTempDimSetEntry;
                        lTempNewDimSetEntry."Dimension Set ID" := 0;
                        lTempNewDimSetEntry.Insert();
                    end until lTempDimSetEntry.Next() = 0;

                lDimVal.Reset();
                lDimVal.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
                lDimVal.SetRange(toAllocate, true);
                if lDimVal.FindFirst() then begin
                    lTempDimSetEntry.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
                    lTempDimSetEntry.SetRange("Dimension Value Code", lDimVal."Code");
                    if lTempDimSetEntry.FindFirst() then begin
                        lDimToAllocFrom := lTempDimSetEntry."Dimension Value Code";
                    end;
                end;
                "Purchase Line".TestField(Quantity);
                gTempDimAllocSetup.Reset();
                gTempDimAllocSetup.DeleteAll();
                lDimValueFilter := DimensionCode;
                lTotalAllocPerc := 0;
                repeat
                    if StrPos(lDimValueFilter, '|') > 0 then begin
                        lDimvalueCode := CopyStr(lDimValueFilter, 1, StrPos(lDimValueFilter, '|') - 1);
                        lDimValueFilter := CopyStr(lDimValueFilter, StrPos(lDimValueFilter, '|') + 1);
                    end
                    else begin
                        lDimValueCode := lDimValueFilter;
                        lDimValueFilter := '';
                    end;
                    lDimAllocSetup.Reset();
                    lDimAllocSetup.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
                    lDimAllocSetup.SetFilter("Dimension ToAllocate From", lDimToAllocFrom);
                    lDimAllocSetup.SetRange("Dimension ToAllocate To", lDimvalueCode);
                    if lDimAllocSetup.FindSet() then
                        repeat begin
                            gTempDimAllocSetup := lDimAllocSetup;
                            gTempDimAllocSetup.Insert();
                            lTotalAllocPerc += gTempDimAllocSetup.Percentage;
                        end until lDimAllocSetup.Next() = 0;
                until StrLen(lDimValueFilter) = 0;

                if gTempDimAllocSetup.FindSet() then begin
                    lTotAllocatedAmount := 0;
                    c1 := 0;
                    c := gTempDimAllocSetup.Count();
                    repeat
                        c1 += 1;
                        gNewPurchaseLine.Reset();
                        gNewPurchaseLine.Init();
                        gNewPurchaseLine.TransferFields("Purchase Line");
                        LastNo += 10;
                        gNewPurchaseLine."Line No." := LastNo;

                        if gAllocateEqually then
                            gNewPurchaseLine.Validate("Direct Unit Cost", "Purchase Line"."Direct Unit Cost" / c)
                        else
                            gNewPurchaseLine.Validate("Direct Unit Cost", "Purchase Line"."Direct Unit Cost" * gTempDimAllocSetup.Percentage / lTotalAllocPerc);
                        lTotAllocatedAmount += Round(gNewPurchaseLine."Direct Unit Cost", gGLSetup."Unit-Amount Rounding Precision");
                        if c = c1 then
                            if lTotAllocatedAmount <> Round("Purchase Line"."Direct Unit Cost", gGLSetup."Unit-Amount Rounding Precision") then
                                gNewPurchaseLine.Validate("Direct Unit Cost", Round(gNewPurchaseLine."Direct Unit Cost", gGLSetup."Unit-Amount Rounding Precision")
                                + Round(("Purchase Line"."Direct Unit Cost" - lTotalAllocPerc), gGLSetup."Unit-Amount Rounding Precision"));

                        if lTempNewDimSetEntry.Get(0, lTempDimSetEntry."Dimension Code") then begin
                            lTempNewDimSetEntry.Validate("Dimension Value Code", gTempDimAllocSetup."Dimension ToAllocate To");
                            lTempNewDimSetEntry.Modify();
                        end;
                        lTempNewDimSetEntry.Reset();
                        gNewPurchaseLine."Dimension Set ID" := lDimMng.GetDimensionSetID(lTempNewDimSetEntry);
                        lDimMng.UpdateGlobalDimFromDimSetID(gNewPurchaseLine."Dimension Set ID", gNewPurchaseLine."Shortcut Dimension 1 Code", gNewPurchaseLine."Shortcut Dimension 2 Code");
                        gNewPurchaseLine.Insert();
                    until gTempDimAllocSetup.Next() = 0;
                    "Purchase Line".Delete(true);
                end;
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group("Dimensions Info")
                {
                    field(Dimension; DimensionCode)
                    {
                        ApplicationArea = All;
                        Caption = 'Choose Dimension';
                        Editable = false;
                        AssistEdit = true;
                        trigger OnAssistEdit()
                        var
                            DimensionValueT: Record "Dimension Allocation Setup";
                        begin
                            gGLSetup.Get();
                            DimensionCode := SelectDimensionValue(DimensionValueT);
                        end;
                    }

                    field("Allocate Equally"; gAllocateEqually)
                    {
                        ApplicationArea = All;
                        Caption = 'Split dimensions allocation equally';
                        Editable = true;
                    }
                }
            }
        }

        local procedure SelectDimensionValue(var Dimension: Record "Dimension Allocation Setup"): Text
        var
            DimensValuePage: Page "Dimension Allocation Setup";
        begin
            Dimension.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
            DimensValuePage.SetTableView(Dimension);
            DimensValuePage.LookupMode(true);
            if DimensValuePage.RunModal = Action::LookupOK then
                exit(DimensValuePage.GetSelectedDim());

        end;
    }

    var
        gNewPurchaseLine: Record "Purchase Line";
        gGLSetup: Record "General Ledger Setup";
        gTempDimAllocSetup: Record "Dimension Allocation Setup" temporary;
        gAllocateEqually: Boolean;
        DimensionCode: text;
}