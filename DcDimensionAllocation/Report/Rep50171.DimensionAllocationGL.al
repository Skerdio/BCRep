report 50171 "Dimension Allocation G/L"
{
    ApplicationArea = All;
    Caption = 'Dimension Allocation';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;
    dataset
    {
        dataitem("G/L Entry"; "G/L Entry")
        {
            trigger OnPreDataItem()
            var
                lGJL: Record "Gen. Journal Line";
            begin
                gGLSetup.Get();
                lGJL.Reset();
                lGJL.SetRange(lGJL."Journal Template Name", gGLSetup."Dim. Alloc. Journal Temp. Name");
                lGJL.SetRange(lGJL."Journal Batch Name", gGLSetup."Dim. Alloc. Journal Batch Name");
                if lGJL.FindLast() then
                    gLineNo := lGJL."Line No.";

                "G/L Entry".SetRange("Dimension allocator", false);
                "G/L Entry".SetRange("Allocated Dimension", false);
            end;

            trigger OnAfterGetRecord()
            var
                lGLAcc: Record "G/L Account";
                lDimValue: Record "Dimension Value";
                lDimMng: Codeunit DimensionManagement;
                lTempDimSetEntry: Record "Dimension Set Entry" temporary;
                lTempNewDimSetEntry: Record "Dimension Set Entry" temporary;
                lDimAllocSetup: Record "Dimension Allocation Setup";
                PrjCode: Code[20];
                lDimToAllocFrom: Code[20];
                lDimValueFilter: Text[30];
                lDimValueCode: Text[30];
                lTotalAllocPerc: Decimal;
                lTotAllocatedAmount: Decimal;
                c1: Integer;
                c: Integer;
            begin
                lGLAcc.Get("G/L Entry"."G/L Account No.");
                if (lGLAcc."Income/Balance" = lGLAcc."Income/Balance"::"Balance Sheet") and not lGLAcc."Acc. To Allocate" then
                    CurrReport.Skip();
                lTempDimSetEntry.Reset();
                lTempDimSetEntry.DeleteAll();
                lDimMng.GetDimensionSet(lTempDimSetEntry, "G/L Entry"."Dimension Set ID");
                lDimValue.Reset();
                lDimValue.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
                lDimValue.SetRange(toAllocate, true);
                if lDimValue.FindFirst() then begin
                    lTempDimSetEntry.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
                    lTempDimSetEntry.SetRange("Dimension Value Code", lDimValue."Code");
                    if lTempDimSetEntry.IsEmpty() then
                        CurrReport.Skip();
                end
                else
                    CurrReport.Skip();

                lTempDimSetEntry.Reset();
                lTempDimSetEntry.DeleteAll();
                lDimMng.GetDimensionSet(lTempDimSetEntry, "G/L Entry"."Dimension Set ID");
                lTempDimSetEntry.Reset();
                if lTempDimSetEntry.FindSet() then
                    repeat begin
                        lTempNewDimSetEntry := lTempDimSetEntry;
                        lTempNewDimSetEntry."Dimension Set ID" := 0;
                        lTempNewDimSetEntry.Insert();
                    end until lTempDimSetEntry.Next() = 0;
                lDimValue.Reset();
                lDimValue.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
                lDimValue.SetRange(toAllocate, true);
                if lDimValue.FindFirst() then begin
                    lTempDimSetEntry.SetRange("Dimension Code", gGLSetup."Dimension Code To Allocate");
                    lTempDimSetEntry.SetRange("Dimension Value Code", lDimValue."Code");
                    lTempDimSetEntry.SetRange("Dimension Value Code", lDimValue."Code");
                    if lTempDimSetEntry.FindFirst() then begin
                        lDimToAllocFrom := lTempDimSetEntry."Dimension Value Code";
                    end;
                end;

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
                    lDimAllocSetup.SetRange("Dimension ToAllocate To", lDimValueCode);
                    if lDimAllocSetup.FindSet() then
                        repeat begin
                            gTempDimAllocSetup := lDimAllocSetup;
                            gTempDimAllocSetup.Insert();
                            lTotalAllocPerc += gTempDimAllocSetup.Percentage;
                        end until lDimAllocSetup.Next() = 0;
                until StrLen(lDimValueFilter) = 0;

                // Shkrim
                gNewJGLine.Reset();
                gNewJGLine.Init();
                gNewJGLine.Validate("Journal Template Name", gGLSetup."Dim. Alloc. Journal Temp. Name");
                gNewJGLine.Validate("Journal Batch Name", gGLSetup."Dim. Alloc. Journal Batch Name");
                gLineNo += 10;
                gNewJGLine.Validate("Line No.", gLineNo);
                gNewJGLine.Insert(true);

                gNewJGLine.Validate("Posting Date", "G/L Entry"."Posting Date");
                gNewJGLine.Validate("Document Date", "G/L Entry"."Document Date");
                gNewJGLine.Validate("Document Type", "G/L Entry"."Document Type");
                gNewJGLine.Validate("Document No.", "G/L Entry"."Document No.");
                gNewJGLine.Validate("Account Type", gNewJGLine."Account Type"::"G/L Account");
                gNewJGLine.Validate("Account No.", "G/L Entry"."G/L Account No.");
                gNewJGLine.Validate("External Document No.", "G/L Entry"."External Document No.");
                gNewJGLine.Validate(Description, "G/L Entry".Description);
                gNewJGLine.Validate("Business Unit Code", "G/L Entry"."Business Unit Code");
                gNewJGLine.Validate("Shortcut Dimension 1 Code", "G/L Entry"."Global Dimension 1 Code");
                gNewJGLine.Validate("Shortcut Dimension 2 Code", "G/L Entry"."Global Dimension 2 Code");
                gNewJGLine.Validate("Dimension Set ID", "G/L Entry"."Dimension Set ID");
                gNewJGLine.Validate("Source Code", "G/L Entry"."Source Code");
                gNewJGLine.Validate("Source Type", "G/L Entry"."Source Type");
                gNewJGLine.Validate("Source No.", "G/L Entry"."Source No.");
                gNewJGLine.Validate("Job No.", "G/L Entry"."Job No.");
                gNewJGLine.Validate(Quantity, "G/L Entry".Quantity);
                gNewJGLine.Validate("Reason Code", "G/L Entry"."Reason Code");
                gNewJGLine.Validate("IC Partner Code", "G/L Entry"."IC Partner Code");
                gNewJGLine.Validate("Gen. Posting Type", "G/L Entry"."Gen. Posting Type");
                gNewJGLine.Validate("Gen. Bus. Posting Group", "G/L Entry"."Gen. Bus. Posting Group");
                gNewJGLine.Validate("Gen. Prod. Posting Group", "G/L Entry"."Gen. Prod. Posting Group");
                gNewJGLine.Validate("VAT Bus. Posting Group", "G/L Entry"."VAT Bus. Posting Group");
                gNewJGLine.Validate("VAT Prod. Posting Group", "G/L Entry"."VAT Prod. Posting Group");
                gNewJGLine.Validate("Tax Area Code", "G/L Entry"."Tax Area Code");
                gNewJGLine.Validate("Tax Liable", "G/L Entry"."Tax Liable");
                gNewJGLine.Validate("Tax Group Code", "G/L Entry"."Tax Group Code");
                gNewJGLine.Validate("Use Tax", "G/L Entry"."Use Tax");
                gNewJGLine.Validate(Amount, -"G/L Entry".Amount);
                gNewJGLine.Validate("Dimension Allocator", true);
                gNewJGLine.Modify(true);

                if gTempDimAllocSetup.FindSet() then begin
                    lTotAllocatedAmount := 0;
                    c1 := 0;
                    c := gTempDimAllocSetup.Count();
                    repeat
                        c1 += 1;
                        gNewJGLine.Reset();
                        gNewJGLine.Init();
                        gNewJGLine.Validate("Journal Template Name", gGLSetup."Dim. Alloc. Journal Temp. Name");
                        gNewJGLine.Validate("Journal Batch Name", gGLSetup."Dim. Alloc. Journal Batch Name");
                        gLineNo += 10;
                        gNewJGLine.Validate("Line No.", gLineNo);
                        gNewJGLine.Insert(true);

                        gNewJGLine.Validate("Posting Date", "G/L Entry"."Posting Date");
                        gNewJGLine.Validate("Document Date", "G/L Entry"."Document Date");
                        gNewJGLine.Validate("Document Type", "G/L Entry"."Document Type");
                        gNewJGLine.Validate("Document No.", "G/L Entry"."Document No.");
                        gNewJGLine.Validate("Account Type", gNewJGLine."Account Type"::"G/L Account");
                        gNewJGLine.Validate("Account No.", "G/L Entry"."G/L Account No.");
                        gNewJGLine.Validate("External Document No.", "G/L Entry"."External Document No.");
                        gNewJGLine.Validate(Description, "G/L Entry".Description);
                        gNewJGLine.Validate("Business Unit Code", "G/L Entry"."Business Unit Code");
                        gNewJGLine.Validate("Shortcut Dimension 1 Code", "G/L Entry"."Global Dimension 1 Code");
                        gNewJGLine.Validate("Shortcut Dimension 2 Code", "G/L Entry"."Global Dimension 2 Code");
                        gNewJGLine.Validate("Dimension Set ID", "G/L Entry"."Dimension Set ID");
                        gNewJGLine.Validate("Source Code", "G/L Entry"."Source Code");
                        gNewJGLine.Validate("Source Type", "G/L Entry"."Source Type");
                        gNewJGLine.Validate("Source No.", "G/L Entry"."Source No.");
                        gNewJGLine.Validate("Job No.", "G/L Entry"."Job No.");
                        gNewJGLine.Validate(Quantity, "G/L Entry".Quantity);
                        gNewJGLine.Validate("Reason Code", "G/L Entry"."Reason Code");
                        gNewJGLine.Validate("IC Partner Code", "G/L Entry"."IC Partner Code");
                        gNewJGLine.Validate("Gen. Posting Type", "G/L Entry"."Gen. Posting Type");
                        gNewJGLine.Validate("Gen. Bus. Posting Group", "G/L Entry"."Gen. Bus. Posting Group");
                        gNewJGLine.Validate("Gen. Prod. Posting Group", "G/L Entry"."Gen. Prod. Posting Group");
                        gNewJGLine.Validate("VAT Bus. Posting Group", "G/L Entry"."VAT Bus. Posting Group");
                        gNewJGLine.Validate("VAT Prod. Posting Group", "G/L Entry"."VAT Prod. Posting Group");
                        gNewJGLine.Validate("Tax Area Code", "G/L Entry"."Tax Area Code");
                        gNewJGLine.Validate("Tax Liable", "G/L Entry"."Tax Liable");
                        gNewJGLine.Validate("Tax Group Code", "G/L Entry"."Tax Group Code");
                        gNewJGLine.Validate("Use Tax", "G/L Entry"."Use Tax");
                        gNewJGLine.Validate("Source Entry No.", "Entry No.");

                        if gAllocateEqually then
                            gNewJGLine.Validate(Amount, "G/L Entry".Amount / c)
                        else
                            gNewJGLine.Validate(Amount, "G/L Entry".Amount * gTempDimAllocSetup.Percentage / lTotalAllocPerc);
                        lTotAllocatedAmount += Round(gNewJGLine.Amount, gGLSetup."Unit-Amount Rounding Precision");
                        if c = c1 then
                            if lTotAllocatedAmount <> Round("G/L Entry".Amount, gGLSetup."Unit-Amount Rounding Precision") then
                                gNewJGLine.Validate(Amount, Round(gNewJGLine.Amount, gGLSetup."Unit-Amount Rounding Precision")
                                + Round(("G/L Entry".Amount - lTotalAllocPerc), gGLSetup."Unit-Amount Rounding Precision"));

                        if lTempDimSetEntry.Get(0, lTempDimSetEntry."Dimension Code") then begin
                            lTempNewDimSetEntry.Validate("Dimension Value Code", gTempDimAllocSetup."Dimension ToAllocate To");
                            lTempNewDimSetEntry.Modify();
                        end;
                        lTempNewDimSetEntry.Reset();
                        gNewJGLine."Dimension Set ID" := lDimMng.GetDimensionSetID(lTempNewDimSetEntry);
                        lDimMng.UpdateGlobalDimFromDimSetID(gNewJGLine."Dimension Set ID", gNewJGLine."Shortcut Dimension 1 Code", gNewJGLine."Shortcut Dimension 2 Code");

                        gNewJGLine.Validate("Dimension Allocator", true);
                        gNewJGLine.Modify(true);
                    until gTempDimAllocSetup.Next() = 0;
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
                group(Information)
                {
                    field(DimensionCode; DimensionCode)
                    {
                        ApplicationArea = All;
                        Caption = 'Choose Dimensions';
                        Editable = false;
                        AssistEdit = true;
                        trigger OnAssistEdit()
                        var
                            DimensionCodeT: Record "Dimension Allocation Setup";
                        begin
                            gGLSetup.Get();
                            DimensionCode := SelectDimensionValue(DimensionCodeT)
                        end;
                    }

                    field("Allocate Equally"; gAllocateEqually)
                    {
                        ApplicationArea = All;
                        Caption = 'Split dimensions allocation equally';
                        Editable = true;
                    }
                    field(gPost; gPost)
                    {
                        Caption = 'Post';
                        ApplicationArea = All;
                    }
                }
            }
        }
    }

    trigger OnPreReport()
    begin
        gGLSetup.Get();
        if gPost then
            if Confirm(Text001, false) then
                gConfirmed := true;
    end;

    trigger OnPostReport()
    begin
        if not gPost then begin
            if Confirm(StrSubstNo(Text002, gNewJGLine.TableCaption), false) then
                Page.Run(39, gNewJGLine);
        end
        else
            if gConfirmed then
                CODEUNIT.Run(CODEUNIT::"Gen. Jnl.-Post", gNewJGLine);
    end;

    var
        gLineNo: integer;
        gGLSetup: Record "General Ledger Setup";
        gTempDimAllocSetup: Record "Dimension Allocation Setup" temporary;
        DimensionCode: text;
        gNewJGLine: Record "Gen. Journal Line";
        gAllocateEqually: Boolean;
        gPost: Boolean;
        gConfirmed: Boolean;
        Text001: Label 'Do you want to post allocated entries?';
        Text002: Label 'Dimension Allocation entries are created successfully.\Do you want to open %1?';

    local procedure SelectDimensionValue(var Dimension: Record "Dimension Allocation Setup"): Text
    var
        DimensionValuePage: Page "Dimension Allocation Setup";
    begin
        Dimension.SetFilter("Dimension Code", gGLSetup."Dimension Code To Allocate");
        DimensionValuePage.SetTableView(Dimension);
        DimensionValuePage.LookupMode(true);
        if DimensionValuePage.RunModal() = Action::LookupOK then
            exit(DimensionValuePage.GetSelectedDim());
    end;
}