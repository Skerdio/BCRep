pageextension 50171 PurchInvoiceSubExts extends "Purch. Invoice Subform"
{
    actions
    {
        addlast("&Line")
        {
            action("Split Dimension Code")
            {
                ApplicationArea = All;
                Caption = 'Split Dimension Cost';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = CopyDimensions;

                trigger OnAction()
                var
                    lPL: Record "Purchase Line";
                    lDimValue: Record "Dimension Value";
                    lDimMng: Codeunit DimensionManagement;
                    lGLSetup: record "General Ledger Setup";
                    lTempDimSetEntry: Record "Dimension Set Entry" temporary;
                    PrjCode: Code[20];
                    lError1: Label 'You must allocate dimensions only for %1 G/L Account.';
                    lError2: Label 'Nothing to allocate.';
                    lError3: Label 'You must select %1 to allocate';
                begin
                    lGLSetup.Get();
                    lPL.Copy(Rec);
                    CurrPage.SETSELECTIONFILTER(lPL);
                    lPL.SetFilter("Type", '<>%1', lPL.Type::"G/L Account");
                    if not lPL.IsEmpty() then
                        Error(lError1, lPL.FieldCaption("Type"));
                    lPL.SetRange("Type");
                    if lPL.FindSet() then
                        repeat begin
                            lTempDimSetEntry.Reset();
                            lTempDimSetEntry.DeleteAll();
                            lDimMng.GetDimensionSet(lTempDimSetEntry, lPL."Dimension Set ID");
                            lDimValue.Reset();
                            lDimValue.SetRange("Dimension Code", lGLSetup."Dimension Code To Allocate");
                            lDimValue.SetRange(toAllocate, true);
                            if lDimValue.FindFirst() then begin
                                lTempDimSetEntry.SetRange("Dimension Code", lGLSetup."Dimension Code To Allocate");
                                lTempDimSetEntry.SetRange("Dimension Value Code", lDimValue."Code");
                                if lTempDimSetEntry.IsEmpty() then
                                    Error(lError2);
                            end
                            else
                                Error(lError3, lTempDimSetEntry.FieldCaption("Dimension Value Code"));
                        end until lPL.Next() = 0;
                    Report.RunModal(Report::DimensionAllocation, true, false, lPL);
                end;
            }
        }
    }
}