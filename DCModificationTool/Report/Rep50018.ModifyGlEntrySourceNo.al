report 50018 "Modified G/L Entry-Source No."
{
    // Advanced Management Control (AMC)
    // Add On Released by Observing S.p.A. - ITALY
    // 
    // I Add On   I  Version  I      Date       I  Search String          I  Description                                  I
    // ------------------------------------------------------------------------------------------------------------------------------------
    //    AMC        7.00          29/03/13       7.00 29/03/13              Report Created
    // ------------------------------------------------------------------------------------------------------------------------------------

    Caption = 'Modified G/L Entry-Source No.';
    Permissions = TableData 17 = rm,
                  TableData 21 = rm,
                  TableData 23 = rm,
                  TableData 271 = rm,
                  TableData 379 = rm,
                  TableData 380 = rm;
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
                GLEntry3: Record 17;
                BankAccLedgerEntry: Record 271;
                BankAccountPostingGroup: Record 277;
                BankAccount: Record 270;
                LogEMTUpdate: Record "Log EMT Update";
                CustLedgerEntry: Record 21;
                VendorLedgerEntry: Record 25;
                Customer: Record 18;
                Vendor: Record 23;
                CustomerPostingGroup: Record 92;
                VendorPostingGroup: Record 93;
                DetailedCustLedgEntry: Record 379;
                DetailedVendorLedgEntry: Record 380;
            begin
                IF (OldNrConto <> NewNrConto) THEN BEGIN

                    GLEntry.GET(NrMovimento);
                    OldGLConto := GLEntry."G/L Account No.";

                    IF SourceType = SourceType::"Bank Account" THEN BEGIN

                        BankAccount.GET(NewNrConto);
                        BankAccountPostingGroup.GET(BankAccount."Bank Acc. Posting Group");

                        BankAccLedgerEntry.GET(NrMovimento);
                        CheckBankAccount(BankAccLedgerEntry);

                        LogEMTUpdate.InsertUpdate('Mod. banca', 271, FORMAT(BankAccLedgerEntry."Entry No."),
                                                BankAccLedgerEntry.FIELDCAPTION("Document No."),
                                                BankAccLedgerEntry."Bank Account No.", NewNrConto);



                        BankAccLedgerEntry."Bank Account No." := NewNrConto;
                        BankAccLedgerEntry."Bank Acc. Posting Group" := BankAccount."Bank Acc. Posting Group";
                        BankAccLedgerEntry.MODIFY;

                        NewGLConto := BankAccountPostingGroup."G/L Account No.";
                        GLEntry."G/L Account No." := NewGLConto;
                        GLEntry."Bal. Account No." := NewGLConto; //AMC121115
                        GLEntry."Source No." := NewNrConto;
                        GLEntry.MODIFY;

                    END;

                    IF (SourceType = SourceType::Customer) THEN BEGIN

                        Customer.GET(NewNrConto);
                        CustomerPostingGroup.GET(Customer."Customer Posting Group");

                        CustLedgerEntry.GET(NrMovimento);
                        CheckCustLdgEntry(CustLedgerEntry);

                        CustLedgerEntry."Customer No." := NewNrConto;
                        CustLedgerEntry."Sell-to Customer No." := NewNrConto;
                        CustLedgerEntry."Customer Posting Group" := Customer."Customer Posting Group";
                        //CustLedgerEntry."Bank Account" := ''; //AMC702Fix
                        CustLedgerEntry.MODIFY;

                        DetailedCustLedgEntry.SETRANGE("Cust. Ledger Entry No.", CustLedgerEntry."Entry No.");
                        IF DetailedCustLedgEntry.FINDSET THEN
                            REPEAT
                                DetailedCustLedgEntry.TESTFIELD("Customer No.", OldNrConto);
                                DetailedCustLedgEntry."Customer No." := NewNrConto;
                                DetailedCustLedgEntry.MODIFY;
                            UNTIL DetailedCustLedgEntry.NEXT = 0;

                        NewGLConto := CustomerPostingGroup."Receivables Account";
                        GLEntry."G/L Account No." := NewGLConto;
                        GLEntry."Bal. Account No." := NewGLConto; // AMC121115
                        GLEntry."Source No." := NewNrConto;
                        GLEntry.MODIFY;
                    END;

                    IF (SourceType = SourceType::Vendor) THEN BEGIN

                        Vendor.GET(NewNrConto);
                        VendorPostingGroup.GET(Vendor."Vendor Posting Group");

                        VendorLedgerEntry.GET(NrMovimento);
                        CheckVendLdgEntry(VendorLedgerEntry);

                        VendorLedgerEntry."Vendor No." := NewNrConto;
                        VendorLedgerEntry."Buy-from Vendor No." := NewNrConto;
                        VendorLedgerEntry."Vendor Posting Group" := Vendor."Vendor Posting Group";
                        //VendorLedgerEntry."Vendor Bank Acc. No." := ''; //AMC702Fix
                        VendorLedgerEntry.MODIFY;

                        DetailedVendorLedgEntry.SETRANGE("Vendor Ledger Entry No.", VendorLedgerEntry."Entry No.");
                        IF DetailedVendorLedgEntry.FINDSET THEN
                            REPEAT
                                DetailedVendorLedgEntry.TESTFIELD("Vendor No.", OldNrConto);
                                DetailedVendorLedgEntry."Vendor No." := NewNrConto;
                                DetailedVendorLedgEntry.MODIFY;
                            UNTIL DetailedVendorLedgEntry.NEXT = 0;

                        NewGLConto := VendorPostingGroup."Payables Account";
                        GLEntry."G/L Account No." := NewGLConto;
                        GLEntry."Bal. Account No." := NewGLConto; //AMC121115
                        GLEntry."Source No." := NewNrConto;
                        GLEntry.MODIFY;
                    END;

                    IF (SourceType = SourceType::"Fixed Asset") THEN BEGIN
                        ERROR(Text1000000012);
                    END;

                    GLEntry3.RESET;
                    GLEntry3.SETRANGE("Transaction No.", GLEntry."Transaction No.");
                    IF GLEntry3.FINDFIRST THEN
                        REPEAT
                            IF (GLEntry3."Bal. Account No." = OldNrConto) AND
                               (GLEntry3."Bal. Account Type" = GLEntry3."Bal. Account Type"::"Bank Account"/*"G/L Account"*/) THEN BEGIN
                                GLEntry3."Bal. Account No." := NewNrConto;
                                GLEntry3.MODIFY;
                            END;
                        UNTIL GLEntry3.NEXT = 0;
                END;
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
                    field(SourceType; SourceType)
                    {
                        Caption = 'Source Type';
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

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            Customer: Record 18;
                            Vendor: Record 23;
                            BankAccount: Record 270;
                            FixedAsset: Record 5600;
                        begin
                            IF (SourceType = SourceType::Customer) THEN BEGIN
                                IF PAGE.RUNMODAL(0, Customer) = ACTION::LookupOK THEN
                                    NewNrConto := Customer."No.";
                            END;

                            IF (SourceType = SourceType::Vendor) THEN BEGIN
                                IF PAGE.RUNMODAL(0, Vendor) = ACTION::LookupOK THEN
                                    NewNrConto := Vendor."No.";
                            END;

                            IF (SourceType = SourceType::"Bank Account") THEN BEGIN
                                IF PAGE.RUNMODAL(0, BankAccount) = ACTION::LookupOK THEN
                                    NewNrConto := BankAccount."No.";
                            END;

                            IF (SourceType = SourceType::"Fixed Asset") THEN BEGIN
                                IF PAGE.RUNMODAL(0, FixedAsset) = ACTION::LookupOK THEN
                                    NewNrConto := FixedAsset."No.";
                            END;
                        end;
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
            OldNrConto := GLEntry."Source No.";
            SourceType := GLEntry."Source Type";
        end;
    }

    labels
    {
    }

    var
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
        GLEntry2: Record 17;
        Text1000000010: Label 'It''s impossible to change from Account %1 to Account %2';
        GLEntry3: Record 17;
        NrMovimento: Integer;
        OldNrConto: Code[20];
        NewNrConto: Code[20];
        OldGLConto: Code[20];
        NewGLConto: Code[20];

        SourceType: Enum "Gen. Journal Source Type";
        NrMov: Integer;
        Exist: Boolean;
        Text1000000011: Label 'Impossibile modificare il Conto %1 con il Conto %2 perchè il movimento %3 risulta riconciliato';
        Text1000000012: Label 'Funzionalità non gestita';
        Text1000000013: Label 'Impossibile modificare cliente se ci sono movimenti dettagliati';
        Text1000000014: Label 'Impossibile modificare fornitore se ci sono movimenti dettagliati';
        Text1000000015: Label 'Possibile modificare cliente solo per movimenti di tipo pgamento o blank';
        Text1000000016: Label 'Possibile modificare fornitore solo per movimenti di tipo pgamento o blank';

    procedure CheckBankAccount(BankAccLedgerEntry_loc: Record 271)
    begin
        BankAccLedgerEntry_loc.TESTFIELD(Open);

        IF (BankAccLedgerEntry_loc."Statement No." <> '') OR
           (BankAccLedgerEntry_loc."Statement Line No." <> 0) THEN
            ERROR(Text1000000011, BankAccLedgerEntry_loc."Bank Account No.", NewNrConto, BankAccLedgerEntry_loc."Entry No.");

        // BankAccLedgerEntry_loc.CALCFIELDS("Applied Amount");
        // IF (BankAccLedgerEntry_loc."Applied Amount" <> 0) THEN
        //     ERROR(Text1000000011, BankAccLedgerEntry_loc."Bank Account No.", NewNrConto, BankAccLedgerEntry_loc."Entry No.");
    end;

    procedure CheckCustLdgEntry(CustLedgerEntry_Loc: Record 21)
    var
        DetailedCustLedgEntry: Record 379;
    begin
        CustLedgerEntry_Loc.CALCFIELDS(Amount, "Remaining Amount", "Amount (LCY)", "Remaining Amt. (LCY)");
        CustLedgerEntry_Loc.TESTFIELD(Amount, CustLedgerEntry_Loc."Remaining Amount");
        CustLedgerEntry_Loc.TESTFIELD("Amount (LCY)", CustLedgerEntry_Loc."Remaining Amt. (LCY)");


        IF (CustLedgerEntry_Loc."Document Type" <> CustLedgerEntry_Loc."Document Type"::" ") AND
           (CustLedgerEntry_Loc."Document Type" <> CustLedgerEntry_Loc."Document Type"::Payment) THEN
            ERROR(Text1000000015);


        DetailedCustLedgEntry.SETRANGE("Cust. Ledger Entry No.", CustLedgerEntry_Loc."Entry No.");
        DetailedCustLedgEntry.SETFILTER("Entry Type", '<>%1', DetailedCustLedgEntry."Entry Type"::"Initial Entry");
        IF NOT DetailedCustLedgEntry.ISEMPTY THEN
            ERROR(Text1000000013);
    end;

    procedure CheckVendLdgEntry(VendorLedgerEntry_loc: Record 25)
    var
        DetailedVendorLedgEntry: Record 380;
    begin
        VendorLedgerEntry_loc.CALCFIELDS(Amount, "Remaining Amount", "Amount (LCY)", "Remaining Amt. (LCY)");
        VendorLedgerEntry_loc.TESTFIELD(Amount, VendorLedgerEntry_loc."Remaining Amount");
        VendorLedgerEntry_loc.TESTFIELD("Amount (LCY)", VendorLedgerEntry_loc."Remaining Amt. (LCY)");


        IF (VendorLedgerEntry_loc."Document Type" <> VendorLedgerEntry_loc."Document Type"::" ") AND
           (VendorLedgerEntry_loc."Document Type" <> VendorLedgerEntry_loc."Document Type"::Payment) THEN
            ERROR(Text1000000016);


        DetailedVendorLedgEntry.SETRANGE("Vendor Ledger Entry No.", VendorLedgerEntry_loc."Entry No.");
        DetailedVendorLedgEntry.SETFILTER("Entry Type", '<>%1', DetailedVendorLedgEntry."Entry Type"::"Initial Entry");
        IF NOT DetailedVendorLedgEntry.ISEMPTY THEN
            ERROR(Text1000000014);
    end;
}

