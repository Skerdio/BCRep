report 50015 "Change G/L Account"
{
    Caption = 'Change G/L Account';
    ProcessingOnly = true;

    dataset
    {
        dataitem(GLEntry1; "G/L Entry")
        {
            trigger OnAfterGetRecord()
            begin
                if gNewAccountNo <> '' then begin
                    gModDocCU.SetDoc(GLEntry1."Posting Date", GLEntry1."Document No.");
                    gModDocCU.SetNewAccountNo(GLEntry1."G/L Account No.", gNewAccountNo, gNewAccountDescription);
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
                    field("Nuovo Conto"; gNewAccountNo)
                    {
                        Caption = 'New Account No.';
                        ApplicationArea = all;
                        trigger OnLookup(var Text: Text): Boolean
                        begin
                            gNewAccountNo := '';

                            gGLAcc.Reset;
                            if gGLAcc.FindFirst then;
                            if PAGE.RunModal(PAGE::"Chart of Accounts", gGLAcc) = ACTION::LookupOK then
                                gNewAccountNo := gGLAcc."No.";

                            if gNewAccountNo <> '' then begin
                                gGLAcc.Get(gNewAccountNo);
                                gGLAcc.TestField("Direct Posting", true);
                                gNewAccountDescription := gGLAcc.Name;
                            end;
                        end;

                        trigger OnValidate()
                        begin
                            if gNewAccountNo <> '' then begin
                                gGLAcc.Get(gNewAccountNo);
                                gGLAcc.TestField("Direct Posting", true);
                                gNewAccountDescription := gGLAcc.Name;
                            end;
                        end;
                    }
                    field("Nuovo Conto Descr"; gNewAccountDescription)
                    {
                        Caption = 'New Account No. Descr.';
                        ApplicationArea = all;
                    }
                }
            }
        }
    }

    var
        gGLAcc: Record "G/L Account";
        gModDocCU: Codeunit "Modify Documents Tool";
        gNewAccountNo: Code[20];
        gNewAccountDescription: Text;
        Text005: Label 'Modification Completed';

    trigger OnPostReport()
    begin
        Message(Text005);
    end;
}