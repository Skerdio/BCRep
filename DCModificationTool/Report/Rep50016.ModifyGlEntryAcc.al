report 50016 "Modified G/L Entry-Account"
{
    // Advanced Management Control (AMC)
    // Add On Released by Observing S.p.A. - ITALY
    // 
    // I Add On   I  Version  I      Date       I  Search String          I  Description                                  I
    // ------------------------------------------------------------------------------------------------------------------------------------
    //    AMC        7.00          29/03/13       7.00 29/03/13              Report Created
    // ------------------------------------------------------------------------------------------------------------------------------------

    Caption = 'Modified G/L Entry-Account';
    Permissions = TableData 17 = rm;
    ProcessingOnly = true;

    dataset
    {
        dataitem("Integer"; Integer)
        {
            DataItemTableView = SORTING(Number)
                                ORDER(Ascending)
                                WHERE(Number = CONST(1));

            trigger OnAfterGetRecord()
            var
                GLEntry: Record 17;
                GLEntry2: Record 17;
                GLEntry3: Record 17;
                GLRegister: Record 45;
                NrRegistri: Integer;
                GLAccount: Record 15;
                LogEMTUpdate: Record "Log EMT Update";
            begin
                GLEntry.GET(NrMovimento);

                GLAccount.GET(GLEntry."G/L Account No.");
                IF (GLEntry.Description = GLAccount.Name) THEN BEGIN
                    GLAccount.GET(NewNrConto);
                    GLEntry.Description := GLAccount.Name;
                END;
                IF NewNrConto = '' THEN
                    ERROR(Text1000000012);

                GLEntry."G/L Account No." := NewNrConto;
                GLEntry.MODIFY;

                // LogEMTUpdate.InsertUpdate(Text001, 17, FORMAT(GLEntry."Entry No."),
                //                           GLEntry.FIELDCAPTION("Document No."),
                //                           OldNrConto, NewNrConto);
                LogEMTUpdate.InsertUpdate1(17, Format(GLEntry."Entry No."), 3, '', GLEntry.FIELDCAPTION("Document No."), OldNrConto, NewNrConto);
                GLEntry3.RESET;
                GLEntry3.SETRANGE("Transaction No.", GLEntry."Transaction No.");
                GLEntry3.SETRANGE("Bal. Account No.", FORMAT(OldNrConto));
                IF GLEntry3.FINDFIRST THEN BEGIN
                    GLEntry3."Bal. Account No." := NewNrConto;
                    GLEntry3.MODIFY;
                END;

                GLEntry3.RESET;
                GLEntry3.SETRANGE("Transaction No.", GLEntry."Transaction No.");
                IF GLEntry3.FINDFIRST THEN
                    REPEAT
                    UNTIL GLEntry3.NEXT = 0;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NrMovimento; NrMovimento)
                    {
                        Caption = 'Entry No.';
                        Editable = false;
                        ApplicationArea = all;
                    }
                    field(OldNrConto; OldNrConto)
                    {
                        Caption = 'Old Account';
                        Editable = false;
                        ApplicationArea = all;
                    }
                    field(NewNrConto; NewNrConto)
                    {
                        Caption = 'New Account';
                        ApplicationArea = all;
                        TableRelation = "G/L Account" WHERE("Account Type" = FILTER(Posting),
                                                             "Direct Posting" = FILTER(true));
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        var
            GLEntry: Record 17;
        begin

            GLEntry.GET(NrMovimento);
            OldNrConto := GLEntry."G/L Account No.";
        end;
    }

    labels
    {
    }

    var
        NrMovimento: Integer;
        OldNrConto: Code[20];
        NewNrConto: Code[20];
        GLAccount: Record 15;
        Text1000000001: Label 'It''s Impossible to Modify G/L Entry if it''s an Invoice';
        Text1000000002: Label 'It''s Impossible to Modify G/L Entry if it''s a Credit Memo';
        Text1000000003: Label 'Impossible to modify description of entry invoice or credit memo.';
        Text1000000004: Label 'It''s Impossible to Modify G/L Entry if it has already been printed on Book Jnl';
        Text1000000006: Label 'It''s Impossible to modify entries related to closed Ledger period';
        AccountPeriod: Record 50;
        Text1000000007: Label 'It''s Impossible to Modify G/L Entry if Source Type is "Bank"';
        Text1000000008: Label 'It''s Impossible to Modify G/L Entry if Source type is "Customer"';
        Text1000000009: Label 'It''s Impossible to Modify G/L Entry if Source Type is "Vendor"';
        Text1000000010: Label 'It''s impossible to change from Account %1 to Account %2';
        NrMov: Integer;
        Exist: Boolean;
        Text1000000011: Label 'It''s impossible to change from Account %1 to Account %2';
        Text001: Label 'Account Edit';
        Text1000000012: Label 'Account No. must be specified.';

    procedure GetEntryNo(EntryNo: Integer)
    var
        GLEntry: Record 17;
        CustLedgerEntry: Record 21;
        VendorLedgerEntry: Record 25;
        BankAccLedgerEntry: Record 271;
        GLRegister: Record 45;
    begin
        NrMovimento := EntryNo;

        GLEntry.GET(NrMovimento);
        IF (GLEntry."Document Type" = GLEntry."Document Type"::Invoice) THEN
            ERROR(Text1000000001);
        IF (GLEntry."Document Type" = GLEntry."Document Type"::"Credit Memo") THEN
            ERROR(Text1000000002);

        IF BankAccLedgerEntry.GET(NrMovimento) THEN
            ERROR(Text1000000007);

        IF VendorLedgerEntry.GET(NrMovimento) THEN
            ERROR(Text1000000009);

        IF CustLedgerEntry.GET(NrMovimento) THEN
            ERROR(Text1000000008);

        AccountPeriod.SETFILTER("Starting Date", '>%1', GLEntry."Posting Date");
        IF AccountPeriod.FIND('-') AND AccountPeriod.Closed THEN
            ERROR(Text1000000006);
    end;
}