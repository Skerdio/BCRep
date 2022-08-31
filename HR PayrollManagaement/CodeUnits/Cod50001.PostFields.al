codeunit 50001 "Post Fields"
{
    Permissions = tabledata "G/L Entry" = rimd;
    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Table, Database::"G/L Entry", 'OnAfterCopyGLEntryFromGenJnlLine', '', true, true)]
    local procedure "G/L Entry_OnAfterCopyGLEntryFromGenJnlLine"
    (
        var GLEntry: Record "G/L Entry";
        var GenJournalLine: Record "Gen. Journal Line"
    )
    var
        lGLE: Record "G/L Entry";
    begin
        GLEntry."Dimension allocator" := GenJournalLine."Dimension allocator";
        lGLE.Reset();
        if lGLE.Get(GenJournalLine."Source Entry No.") then begin
            lGLE."Allocated Dimension" := true;
            lGLE.Modify();
        end;
    end;
}