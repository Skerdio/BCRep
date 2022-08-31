report 50000 "Import Payroll"
{
    ApplicationArea = All;
    Caption = 'Import Payroll';
    UsageCategory = Tasks;
    ProcessingOnly = true;
    Permissions = tabledata "Gen. Journal Line" = rimd, tabledata "Dimension Set Tree Node" = rimd, tabledata "Dimension Set Entry" = rimd;

    dataset
    { }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(FileInformation)
                {
                    field("File Name"; FileName)
                    {
                        ApplicationArea = All;
                        Caption = 'Choose File';
                        Editable = false;
                        AssistEdit = true;

                        trigger OnAssistEdit()
                        begin
                            FileName := FileManagement.BLOBImportWithFilter(TempBlob, ImportTxt, FileName, StrSubstNo(FileDialogTxt, FilterTxt), FilterTxt);
                            FileExt := FileManagement.GetExtension(FileName);
                            if (FileName = '') or (not TempBlob.HasValue()) OR NOT (FileExt IN ['xlsx', 'xls ']) then begin
                                FileName := '';
                                Error(FileNameErr);
                            end;
                            TempBlob.CreateInStream(ImportedInStream);
                        end;

                    }
                    field(SheetName; SheetName)
                    {
                        ApplicationArea = All;
                        Caption = 'Choose Sheet Name';
                        Editable = false;

                        trigger OnAssistEdit()
                        begin
                            if (FileName = '') or (not TempBlob.HasValue())
                            then
                                Error(FileNameErr);
                            SheetName := TempExcelBuffer.SelectSheetsNameStream(ImportedInStream);
                        end;
                    }
                    field(DocNo; DocNo)
                    {
                        Caption = 'Document No.';
                        ApplicationArea = All;
                    }
                }
                group(Options)
                {
                    Caption = 'Option';
                    field(gPostingDate; gPostingDate)
                    {
                        ApplicationArea = All;
                        Caption = 'Posting Date';
                    }
                }
            }
        }

        trigger OnOpenPage()
        begin
            FileName := FileManagement.BLOBImportWithFilter(TempBlob, ImportTxt, FileName, StrSubstNo(FileDialogTxt, FilterTxt), FilterTxt);
            FileExt := FileManagement.GetExtension(FileName);
            if (FileName = '') or (not TempBlob.HasValue()) or not (FileExt in ['xlsx', 'xls']) then begin
                FileName := '';
                Message(FileNameErr);
            end else
                TempBlob.CreateInStream(ImportedInStream);
        end;
    }

    trigger OnPreReport()
    begin
        if (gPostingDate = 0D) then
            Error(PostingDateErr);

        TempExcelBuffer.Reset();
        TempExcelBuffer.DeleteAll();
        TempExcelBuffer.OpenBookStream(ImportedInStream, SheetName);
        TempExcelBuffer.ReadSheetContinous(SheetName, true);
    end;

    trigger OnPostReport()
    begin
        //Import from Excel to Buffer
        ImportExcelData(TempExcelBuffer);
        Message(ImportFinished);
    end;

    var
        gHRSetup: Record "Human Resources Setup";
        TempExcelBuffer: Record "Excel Buffer" temporary;
        FileManagement: Codeunit "File Management";
        TempBlob: Codeunit "Temp Blob";
        ImportedInStream: InStream;
        gPostingDate: Date;
        FileName: Text;
        FileExt: Text;
        SheetName: Text;
        EmployErr: Label 'Employee %1 not found!';
        PostingDateErr: Label 'Please fill Posting Date!';
        FileNameErr: Label 'Please choose proper file';
        FileDialogTxt: Label 'Import (%1)|%1';
        ImportTxt: Label 'Import Excel File';
        FilterTxt: Label '*.xlsx;*.xls;*.*', Locked = true;
        ImportFinished: Label 'Import done!';
        DocNo: Code[20];

    //Import from Excel to Buffer
    local procedure ImportExcelData(pExcelBuffer: Record "Excel Buffer")
    var
        lRowNo: Integer;
        lMaxRowNo: Integer;
        lImportPayroll: Record "Import Payroll";
        lGenJnlBatch: Record "Gen. Journal Batch";
        lEmployee: Record Employee;
        NoSeriesMgt: Codeunit NoSeriesManagement;
        lDocNo: Code[20];
        lEmployeeId: Text;
        lAmount: Decimal;
    begin
        lRowNo := 0;
        lMaxRowNo := 0;
        TempExcelBuffer.Reset();
        if TempExcelBuffer.FindLast() then begin
            gHRSetup.Get();
            gHRSetup.TestField("Payroll Journal Template Name");
            gHRSetup.TestField("Payroll Journal Batch Name");
            lGenJnlBatch.Get(gHRSetup."Payroll Journal Template Name", gHRSetup."Payroll Journal Batch Name");
            lDocNo := '';

            if (DocNo <> '') then
                lDocNo := DocNo
            else begin
                NoSeriesMgt.SetParametersBeforeRun(lGenJnlBatch."No. Series", gPostingDate);
                NoSeriesMgt.Run();
                lDocNo := NoSeriesMgt.GetNextNoAfterRun();
            end;

            lMaxRowNo := TempExcelBuffer."Row No.";
            for lRowNo := gHRSetup."Starting Row No." to lMaxRowNo - 1 do begin
                lEmployeeId := GetValueAtCell(lRowNo, gHRSetup."Employee Col Id");
                lEmployee.Reset;
                lEmployee.SetCurrentKey("Social Security No.");
                lEmployee.SetRange("Social Security No.", lEmployeeId);
                if (not lEmployee.FindFirst()) or (lEmployeeId = '') then
                    Error(EmployErr, lEmployeeId);

                lImportPayroll.Reset();
                if lImportPayroll.findset() then
                    repeat
                        if Evaluate(lAmount, GetValueAtCell(lRowNo, lImportPayroll.Celesi)) then
                            CreateGenJournalLine(lEmployee, lDocNo, lImportPayroll."Account Type",
                                                   lImportPayroll."Account No.",
                                                   lImportPayroll."Bal. Account Type",
                                                   lImportPayroll."Bal. Account No.",
                                                   lAmount);
                    until lImportPayroll.Next() = 0;
            end;
        end;
    end;

    local procedure GetValueAtCell(pRowNo: Integer; pColId: Text[10]): Text
    begin
        TempExcelBuffer.Reset();
        TempExcelBuffer.SetRange("Row No.", pRowNo);
        TempExcelBuffer.SetRange(xlColID, pColId);
        if TempExcelBuffer.FindFirst() then
            exit(TempExcelBuffer."Cell Value as Text");
        exit('');
    end;

    local procedure CreateGenJournalLine(var pEmployee: Record Employee;
                                             pDocNo: Code[20];
                                             pAccType: Enum "Gen. Journal Account Type";
                                             pAccNo: Code[20];
                                             pBalAccType: Enum "Gen. Journal Account Type";
                                             pBalAccNo: Code[20];
                                             pAmount: Decimal)
    var
        lLineNo: Integer;
        lGenJournalLine: Record "Gen. Journal Line";
        lGenJournalLine2: Record "Gen. Journal Line";
        DimMgt: CodeUnit DimensionManagement;
    begin
        lLineNo := 1;
        lGenJournalLine2.Reset();
        lGenJournalLine2.SetRange("Journal Template Name", gHRSetup."Payroll Journal Template Name");
        lGenJournalLine2.SetRange("Journal Batch Name", gHRSetup."Payroll Journal Batch Name");
        if lGenJournalLine2.FindLast() then
            lLineNo := lGenJournalLine2."Line No." + 1;
        lGenJournalLine.Init();
        lGenJournalLine.Validate("Journal Template Name", gHRSetup."Payroll Journal Template Name");
        lGenJournalLine.Validate("Journal Batch Name", gHRSetup."Payroll Journal Batch Name");
        lGenJournalLine.Validate("Line No.", lLineNo);
        lGenJournalLine.Insert();
        lGenJournalLine.Validate("Posting Date", gPostingDate);
        lGenJournalLine.Validate("Document Date", gPostingDate);
        lGenJournalLine.Validate("Document Type", lGenJournalLine."Document Type"::" ");
        lGenJournalLine.Validate("Document No.", pDocNo);
        lGenJournalLine.Validate("Account Type", pAccType);
        lGenJournalLine.Validate("Account No.", pAccNo);
        lGenJournalLine.Validate("Bal. Account Type", pBalAccType);
        lGenJournalLine.Validate("Bal. Account No.", pBalAccNo);
        lGenJournalLine.Validate(Amount, pAmount);

        //Dimensions 
        lGenJournalLine.CreateDim(DimMgt.TypeToTableID1(lGenJournalLine."Account Type"::Employee.AsInteger()), pEmployee."No.",
                  DimMgt.TypeToTableID1(lGenJournalLine."Bal. Account Type".AsInteger()), lGenJournalLine."Bal. Account No.",
                  DATABASE::Job, lGenJournalLine."Job No.",
                  DATABASE::"Salesperson/Purchaser", lGenJournalLine."Salespers./Purch. Code",
                  DATABASE::Campaign, lGenJournalLine."Campaign No.");
        lGenJournalLine.Modify();
    end;
}