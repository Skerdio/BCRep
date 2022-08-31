report 50014 "Change Posting Date"
{
    Caption = 'Change Posting Date';
    ProcessingOnly = true;

    dataset
    {
        dataitem(GLEntry1; "G/L Entry")
        {
            trigger OnAfterGetRecord()
            begin
                if gNewPostingDate <> 0D then begin
                    gModDocCU.SetDoc(GLEntry1."Posting Date", GLEntry1."Document No.");
                    gModDocCU.SetNewPostingDate(gNewPostingDate);
                    gModDocCU.Run();
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
                group(GroupName)
                {
                    field("Nuova Data Registrazione"; gNewPostingDate)
                    {
                        Caption = 'New Posting Date';
                        ApplicationArea = all;
                    }
                }
            }
        }
    }

    var
        gModDocCU: Codeunit "Modify Documents Tool";
        gNewPostingDate: Date;
        Text005: Label 'Modification Completed';

    trigger OnPostReport()
    begin
        Message(Text005);
    end;
}