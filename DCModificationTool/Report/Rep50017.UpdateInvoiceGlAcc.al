report 50017 "Update Invoice G/L Account"
{
    // Advanced Management Control (AMC)
    // Add On Released by Observing S.p.A. - ITALY
    // 
    // I Add On   I  Version  I      Date       I  Search String          I  Description                                  I
    // ------------------------------------------------------------------------------------------------------------------------------------
    //    AMC        7.00          29/03/13       7.00 29/03/13              Report Created
    // ------------------------------------------------------------------------------------------------------------------------------------

    Caption = 'Update Invoice G/L Account';
    Permissions = TableData 17 = rm,
                  TableData 113 = rm,
                  TableData 115 = rm,
                  TableData 123 = rm,
                  TableData 125 = rm;
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
                SalesInvoiceLine: Record 113;
                SalesCrMemoLine: Record 115;
                PurchInvLine: Record 123;
                PurchCrMemoLine: Record 125;
                GLEntry: Record 17;
            begin
                CASE TipoDoc OF
                    TipoDoc::"Sales Invoice":
                        BEGIN
                            SalesInvHeader2.GET(DocNo);
                            PostDate := SalesInvHeader2."Posting Date";
                            SalesInvoiceLine.RESET;
                            SalesInvoiceLine.SETRANGE("Document No.", DocNo);
                            SalesInvoiceLine.SETRANGE(Type, SalesInvoiceLine.Type::"G/L Account");
                            SalesInvoiceLine.SETRANGE("No.", OldGLAccount);
                            IF SalesInvoiceLine.FIND('-') THEN
                                REPEAT
                                    SalesInvoiceLine."No." := NewGLAccount;
                                    SalesInvoiceLine.MODIFY;
                                UNTIL SalesInvoiceLine.NEXT = 0;
                            LogEMTUpdate.InsertUpdate1(113, DocNo, 3, '', SalesInvoiceLine.FieldCaption("No."), OldGLAccount, NewGLAccount);
                        END;
                    TipoDoc::"Sales Credit Memo":
                        BEGIN
                            SalesCrMemoHeader2.GET(DocNo);
                            PostDate := SalesCrMemoHeader2."Posting Date";
                            SalesCrMemoLine.RESET;
                            SalesCrMemoLine.SETRANGE("Document No.", DocNo);
                            SalesCrMemoLine.SETRANGE(Type, SalesCrMemoLine.Type::"G/L Account");
                            SalesCrMemoLine.SETRANGE("No.", OldGLAccount);
                            IF SalesCrMemoLine.FIND('-') THEN
                                REPEAT
                                    SalesCrMemoLine."No." := NewGLAccount;
                                    SalesCrMemoLine.MODIFY;
                                UNTIL SalesCrMemoLine.NEXT = 0;
                            //LogEMTUpdate.InsertUpdate(Text001, 115, DocNo, Text002, OldGLAccount, NewGLAccount);
                            LogEMTUpdate.InsertUpdate1(115, DocNo, 3, '', SalesCrMemoLine.FieldCaption("No."), OldGLAccount, NewGLAccount);
                        END;
                    TipoDoc::"Purchase Invoice":
                        BEGIN
                            PurchInvHeader2.GET(DocNo);
                            PostDate := PurchInvHeader2."Posting Date";
                            PurchInvLine.RESET;
                            PurchInvLine.SETRANGE("Document No.", DocNo);
                            PurchInvLine.SETRANGE(Type, PurchInvLine.Type::"G/L Account");
                            PurchInvLine.SETRANGE("No.", OldGLAccount);
                            IF PurchInvLine.FIND('-') THEN
                                REPEAT
                                    PurchInvLine."No." := NewGLAccount;
                                    PurchInvLine.MODIFY;
                                UNTIL PurchInvLine.NEXT = 0;
                            LogEMTUpdate.InsertUpdate1(123, DocNo, 3, '', PurchInvLine.FieldCaption("No."), OldGLAccount, NewGLAccount);
                        END;
                    TipoDoc::"Purchase Credit Memo":
                        BEGIN
                            PurchCrMemoHdr2.GET(DocNo);

                            PostDate := PurchCrMemoHdr2."Posting Date";
                            PurchCrMemoLine.RESET;
                            PurchCrMemoLine.SETRANGE("Document No.", DocNo);
                            PurchCrMemoLine.SETRANGE(Type, PurchCrMemoLine.Type::"G/L Account");
                            PurchCrMemoLine.SETRANGE("No.", OldGLAccount);
                            IF PurchCrMemoLine.FINDSET THEN
                                REPEAT
                                    PurchCrMemoLine."No." := NewGLAccount;
                                    PurchCrMemoLine.MODIFY;
                                UNTIL PurchCrMemoLine.NEXT = 0;
                            LogEMTUpdate.InsertUpdate1(125, DocNo, 3, '', PurchCrMemoLine.FieldCaption("No."), OldGLAccount, NewGLAccount);
                        END;
                END;


                GLEntry.RESET;
                GLEntry.SETRANGE("Posting Date", PostDate);
                GLEntry.SETRANGE("Document No.", DocNo);
                GLEntry.SETRANGE("G/L Account No.", OldGLAccount);
                IF GLEntry.FIND('-') THEN
                    REPEAT
                        GLEntry."G/L Account No." := NewGLAccount;
                        GLEntry.MODIFY;
                    UNTIL GLEntry.NEXT = 0;


                GLEntry.RESET;
                GLEntry.SETRANGE("Posting Date", PostDate);
                GLEntry.SETRANGE("Document No.", DocNo);
                IF GLEntry.FIND('-') THEN
                    REPEAT
                    UNTIL GLEntry.NEXT = 0;
            end;

            trigger OnPreDataItem()
            begin
                // AMC4.15 02/05/06 Start
                IF DocNo = '' THEN
                    ERROR(Text1000000002);
                IF OldGLAccount = '' THEN
                    ERROR(Text1000000003);
                IF NewGLAccount = '' THEN
                    ERROR(Text1000000004);
                // AMC4.15 02/05/06 End
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
                    field(TipoDoc; TipoDoc)
                    {
                        Caption = 'Document Type';
                        OptionCaption = 'Sales Invoice,Sales Credit Memo,Purchase Invoice,Purchase Credit Memo';
                        ApplicationArea = all;
                    }
                    field(DocNo; DocNo)
                    {
                        Caption = 'Document No.';
                        ApplicationArea = all;

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            SalesInvHeader: Record 112;
                            SalesCrMemoHeader: Record 114;
                            PurchInvHeader: Record 122;
                            PurchCrMemoHdr: Record 124;
                        begin
                            CASE TipoDoc OF
                                TipoDoc::"Sales Invoice":
                                    BEGIN
                                        IF PAGE.RUNMODAL(0, SalesInvHeader) = ACTION::LookupOK THEN
                                            DocNo := SalesInvHeader."No.";
                                    END;
                                TipoDoc::"Sales Credit Memo":
                                    BEGIN
                                        IF PAGE.RUNMODAL(0, SalesCrMemoHeader) = ACTION::LookupOK THEN
                                            DocNo := SalesCrMemoHeader."No.";
                                    END;
                                TipoDoc::"Purchase Invoice":
                                    BEGIN
                                        IF PAGE.RUNMODAL(0, PurchInvHeader) = ACTION::LookupOK THEN
                                            DocNo := PurchInvHeader."No.";
                                    END;
                                TipoDoc::"Purchase Credit Memo":
                                    BEGIN
                                        IF PAGE.RUNMODAL(0, PurchCrMemoHdr) = ACTION::LookupOK THEN
                                            DocNo := PurchCrMemoHdr."No.";
                                    END;
                            END;
                        end;

                        trigger OnValidate()
                        begin
                            CASE TipoDoc OF
                                TipoDoc::"Sales Invoice":
                                    SalesInvHeader2.GET(DocNo);
                                TipoDoc::"Sales Credit Memo":
                                    SalesCrMemoHeader2.GET(DocNo);
                                TipoDoc::"Purchase Invoice":
                                    PurchInvHeader2.GET(DocNo);
                                TipoDoc::"Purchase Credit Memo":
                                    PurchCrMemoHdr2.GET(DocNo);
                            END;

                            OldGLAccount := '';
                            NewGLAccount := '';
                        end;
                    }
                    field(OldGLAccount; OldGLAccount)
                    {
                        Caption = 'G/L Account to Substitute';
                        ApplicationArea = all;

                        trigger OnLookup(var Text: Text): Boolean
                        var
                            TmpGLAccount: Record 15 temporary;
                            SalesInvoiceLine: Record 113;
                            SalesCrMemoLine: Record 115;
                            PurchInvLine: Record 123;
                            PurchCrMemoLine: Record 125;
                            GLAcc: Record 15;
                            GeneralPostingSetup: Record 252;
                            GLEntry: Record 17;
                        begin
                            CASE TipoDoc OF
                                TipoDoc::"Sales Invoice":
                                    BEGIN
                                        SalesInvoiceLine.Reset();
                                        SalesInvoiceLine.SETRANGE("Document No.", DocNo);
                                        SalesInvoiceLine.SetRange(type, SalesInvoiceLine.Type::"G/L Account");
                                        SalesInvoiceLine.SETFILTER("No.", '<>%1', '');
                                        IF SalesInvoiceLine.FIND('-') THEN
                                            REPEAT

                                                IF GLAcc.GET(SalesInvoiceLine."No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := SalesInvoiceLine."No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;

                                            UNTIL SalesInvoiceLine.NEXT = 0;

                                        /*
                                        GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Sale);
                                        IF GLEntry.FINDFIRST THEN
                                            REPEAT
                                                IF GLAcc.GET(GLEntry."G/L Account No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := GLEntry."G/L Account No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;

                                            UNTIL GLEntry.NEXT = 0*/

                                    END;
                                TipoDoc::"Sales Credit Memo":
                                    BEGIN
                                        /*GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Sale);
                                        IF GLEntry.FINDFIRST THEN
                                            REPEAT
                                                IF GLAcc.GET(GLEntry."G/L Account No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := GLEntry."G/L Account No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;

                                            UNTIL GLEntry.NEXT = 0
                                        */
                                        SalesCrMemoLine.Reset();
                                        SalesCrMemoLine.SETRANGE("Document No.", DocNo);
                                        SalesCrMemoLine.SetRange(type, SalesCrMemoLine.Type::"G/L Account");
                                        SalesCrMemoLine.SETFILTER("No.", '<>%1', '');
                                        IF SalesCrMemoLine.FIND('-') THEN
                                            REPEAT

                                                IF GLAcc.GET(SalesCrMemoLine."No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := SalesCrMemoLine."No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;

                                            UNTIL SalesCrMemoLine.NEXT = 0;

                                    END;
                                TipoDoc::"Purchase Invoice":
                                    BEGIN
                                        PurchInvLine.Reset();
                                        PurchInvLine.SETRANGE("Document No.", DocNo);
                                        PurchInvLine.SetRange(type, PurchInvLine.Type::"G/L Account");
                                        PurchInvLine.SETFILTER("No.", '<>%1', '');
                                        IF PurchInvLine.FIND('-') THEN
                                            REPEAT
                                                IF GLAcc.GET(PurchInvLine."No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := PurchInvLine."No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;

                                            UNTIL PurchInvLine.NEXT = 0;
                                        /*

                                        GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Purchase);
                                        IF GLEntry.FINDFIRST THEN
                                            REPEAT
                                                IF GLAcc.GET(GLEntry."G/L Account No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := GLEntry."G/L Account No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;

                                            UNTIL GLEntry.NEXT = 0
                                            */

                                    END;
                                TipoDoc::"Purchase Credit Memo":
                                    BEGIN
                                        PurchCrMemoLine.reset;
                                        PurchCrMemoLine.SETRANGE("Document No.", DocNo);
                                        PurchCrMemoLine.SetRange(type, PurchCrMemoLine.Type::"G/L Account");
                                        PurchCrMemoLine.SETFILTER("No.", '<>%1', '');
                                        IF PurchCrMemoLine.FIND('-') THEN
                                            REPEAT
                                                IF GLAcc.GET(PurchCrMemoLine."No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := PurchCrMemoLine."No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;

                                            UNTIL PurchCrMemoLine.NEXT = 0;
                                        /*
                                        GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Purchase);
                                        IF GLEntry.FINDFIRST THEN
                                            REPEAT
                                                IF GLAcc.GET(GLEntry."G/L Account No.") THEN BEGIN
                                                    TmpGLAccount.INIT;
                                                    TmpGLAccount."No." := GLEntry."G/L Account No.";
                                                    TmpGLAccount.Name := GLAcc.Name;
                                                    IF NOT TmpGLAccount.INSERT THEN;
                                                END;
                                            UNTIL GLEntry.NEXT = 0*/
                                    END;
                            END;

                            IF PAGE.RUNMODAL(0, TmpGLAccount) = ACTION::LookupOK THEN BEGIN
                                OldGLAccount := TmpGLAccount."No.";
                                OldGLAccountName := TmpGLAccount.Name;
                            END;

                        end;

                        trigger OnValidate()
                        var
                            GLEntry: Record 17;
                            GLAccount: Record 15;
                        begin

                            CASE TipoDoc OF
                                TipoDoc::"Sales Invoice":
                                    BEGIN
                                        GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Sale);
                                        GLEntry.SETRANGE("G/L Account No.", OldGLAccount);
                                        GLEntry.FINDFIRST;
                                    END;
                                TipoDoc::"Sales Credit Memo":
                                    BEGIN
                                        GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Sale);
                                        GLEntry.SETRANGE("G/L Account No.", OldGLAccount);
                                        GLEntry.FINDFIRST;
                                    END;
                                TipoDoc::"Purchase Invoice":
                                    BEGIN
                                        GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Purchase);
                                        GLEntry.SETRANGE("G/L Account No.", OldGLAccount);
                                        GLEntry.FINDFIRST;
                                    END;
                                TipoDoc::"Purchase Credit Memo":
                                    BEGIN
                                        GLEntry.SETRANGE(GLEntry."Document No.", DocNo);
                                        GLEntry.SETRANGE("Gen. Posting Type", GLEntry."Gen. Posting Type"::Purchase);
                                        GLEntry.SETRANGE("G/L Account No.", OldGLAccount);
                                        GLEntry.FINDFIRST;
                                    END;
                            END;
                            GLAccount.GET(OldGLAccount);
                            OldGLAccountName := GLAccount.Name;
                            EXIT;
                            CASE TipoDoc OF
                                TipoDoc::"Sales Invoice":
                                    BEGIN
                                        SalesInvoiceLine2.RESET;
                                        SalesInvoiceLine2.SETRANGE("Document No.", DocNo);
                                        SalesInvoiceLine2.SETRANGE(Type, SalesInvoiceLine2.Type::"G/L Account");
                                        SalesInvoiceLine2.SETRANGE("No.", OldGLAccount);
                                        IF SalesInvHeader2.ISEMPTY THEN
                                            ERROR(Text000, OldGLAccount);
                                    END;
                                TipoDoc::"Sales Credit Memo":
                                    BEGIN
                                        SalesCrMemoLine2.RESET;
                                        SalesCrMemoLine2.SETRANGE("Document No.", DocNo);
                                        SalesCrMemoLine2.SETRANGE(Type, SalesCrMemoLine2.Type::"G/L Account");
                                        SalesCrMemoLine2.SETRANGE("No.", OldGLAccount);
                                        IF SalesCrMemoLine2.ISEMPTY THEN
                                            ERROR(Text000, OldGLAccount);
                                    END;
                                TipoDoc::"Purchase Invoice":
                                    BEGIN

                                        PurchInvLine2.RESET;
                                        PurchInvLine2.SETRANGE("Document No.", DocNo);
                                        PurchInvLine2.SETRANGE(Type, PurchInvLine2.Type::"G/L Account");
                                        PurchInvLine2.SETRANGE("No.", OldGLAccount);
                                        IF PurchInvLine2.ISEMPTY THEN
                                            ERROR(Text000, OldGLAccount);

                                    END;
                                TipoDoc::"Purchase Credit Memo":
                                    BEGIN
                                        PurchCrMemoLine2.RESET;
                                        PurchCrMemoLine2.SETRANGE("Document No.", DocNo);
                                        PurchCrMemoLine2.SETRANGE(Type, PurchCrMemoLine2.Type::"G/L Account");
                                        PurchCrMemoLine2.SETRANGE("No.", OldGLAccount);
                                        IF PurchCrMemoLine2.ISEMPTY THEN
                                            ERROR(Text000, OldGLAccount);
                                    END;
                            END;
                        end;
                    }
                    field(OldGLAccountName; OldGLAccountName)
                    {
                        Editable = false;
                        ApplicationArea = all;
                        Caption = 'Old G/l Accont Name';
                    }
                    field(NewGLAccount; NewGLAccount)
                    {
                        Caption = 'New G/L Account';
                        TableRelation = "G/L Account" WHERE("Account Type" = FILTER(Posting),
                                                            "Direct Posting" = FILTER(true));
                        ApplicationArea = all;

                        trigger OnValidate()
                        var
                            GL_Account: Record 15;
                        begin
                            IF GL_Account.GET(NewGLAccount) THEN
                                NewGLAccountName := GL_Account.Name
                            ELSE
                                NewGLAccountName := '';
                        end;
                    }
                    field(NewGLAccountName; NewGLAccountName)
                    {
                        Editable = false;
                        ApplicationArea = all;
                        Caption = 'New G/l Account Name';
                    }
                }
            }
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        //EMTPermission: Codeunit 77068;
        TipoDoc: Option "Sales Invoice","Sales Credit Memo","Purchase Invoice","Purchase Credit Memo";
        DocNo: Code[20];
        OldGLAccount: Code[20];
        NewGLAccount: Code[20];
        SalesInvHeader2: Record 112;
        SalesCrMemoHeader2: Record 114;
        PurchInvHeader2: Record 122;
        PurchCrMemoHdr2: Record 124;
        GLAccount: Record 15;
        SalesInvoiceLine2: Record 113;
        SalesCrMemoLine2: Record 115;
        PurchInvLine2: Record 123;
        PurchCrMemoLine2: Record 125;
        Text000: Label 'G/L Account %1 doesn''t exist';
        SalesInvoiceLine3: Record 113;
        SalesCrMemoLine3: Record 115;
        PurchInvLine3: Record 123;
        PurchCrMemoLine3: Record 125;
        GLEntry2: Record 17;
        Text1000000005: Label 'You cannot change Account %1 to Account %2';
        PostDate: Date;
        Exist: Boolean;
        Text1000000002: Label 'Specify Doc. No. to modify';
        Text1000000003: Label 'Specify G/L Account to change';
        Text1000000004: Label 'Specify New G/L Account';
        OldGLAccountName: Text[50];
        NewGLAccountName: Text[50];
        LogEMTUpdate: Record "Log EMT Update";
        Text001: Label 'Account Upd.';
        Text002: Label 'G/L Account';

    procedure Setvalue(TipoDoc_loc: Option "Sales Invoice","Sales Credit Memo","Purchase Invoice","Purchase Credit Memo"; DocNo_loc: Code[20])
    begin
        TipoDoc := TipoDoc_loc;
        DocNo := DocNo_loc;
    end;
}