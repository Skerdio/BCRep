report 50002 "3i Trial Balance"
{

    DefaultLayout = RDLC;
    RDLCLayout = './Reports/3i Trial Balance.rdl';
    Caption = '3i Trial Balance';
    UseRequestPage = true;
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;

    dataset
    {
        dataitem("G/L Account"; "G/L Account")
        {
            DataItemTableView = SORTING("No.");
            RequestFilterFields = "No.", "Account Type", "Date Filter", "Global Dimension 1 Filter", "Global Dimension 2 Filter";
            column(FORMAT_TODAY_0_4_; Format(Today, 0, 4))
            {
            }
            column(Text11804___Period; Text11804 + Period)
            {
            }
            column(COMPANYNAME; CompanyName)
            {
            }
            column(G_L_Account__GETFILTERS; "G/L Account".GetFilters)
            {
            }
            column(USERID; UserId)
            {
            }
            column(RoundingText; RoundingText)
            {
            }
            column(FORMAT_FromDate_________FORMAT_EndDate_; Format(FromDate) + ' .. ' + Format(EndDate))
            {
            }
            column(Text11805_FORMAT_StartDate_; Text11805 + Format(StartDate))
            {
            }
            column(Text11805_FORMAT_EndDate_; Text11805 + Format(EndDate))
            {
            }
            column(FORMAT_FromDate_________FORMAT_EndDate__Control57; Format(FromDate) + ' .. ' + Format(EndDate))
            {
            }
            column(PageCaption; PageCaptionLbl)
            {
            }
            column(Printout_date_Caption; Printout_date_CaptionLbl)
            {
            }
            column(Net_ChangeCaption; Net_ChangeCaptionLbl)
            {
            }
            column(Net_Change_BalanceCaption; Net_Change_BalanceCaptionLbl)
            {
            }
            column(No_Caption; No_CaptionLbl)
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(DebitCaption; DebitCaptionLbl)
            {
            }
            column(CreditCaption; CreditCaptionLbl)
            {
            }
            column(DebitCaption_Control17; DebitCaption_Control17Lbl)
            {
            }
            column(CreditCaption_Control18; CreditCaption_Control18Lbl)
            {
            }
            column(BalanceCaption; BalanceCaptionLbl)
            {
            }
            column(DebitCaption_Control38; DebitCaption_Control38Lbl)
            {
            }
            column(CreditCaption_Control39; CreditCaption_Control39Lbl)
            {
            }
            column(BalanceCaption_Control40; BalanceCaption_Control40Lbl)
            {
            }
            column(DebitCaption_Control42; DebitCaption_Control42Lbl)
            {
            }
            column(CreditCaption_Control43; CreditCaption_Control43Lbl)
            {
            }
            column(G_L_Account_No_; "No.")
            {
            }
            dataitem(BlankLineCounter; "Integer")
            {
                DataItemTableView = SORTING(Number);
                column(BlankLineCounter_Number; Number)
                {
                }

                trigger OnPreDataItem()
                begin
                    SetRange(Number, 1, "G/L Account"."No. of Blank Lines");
                end;
            }
            dataitem("Integer"; "Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number = CONST(1));
                column(G_L_Account___No__; "G/L Account"."No.")
                {
                }
                column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name; PadStr('', "G/L Account".Indentation * 2) + "G/L Account".Name)
                {
                }
                column(DebitAmount; DebitAmount)
                {
                }
                column(CreditAmount; CreditAmount)
                {
                }
                column(NetChange; NetChange)
                {
                }
                column(NetChange_Control24; -NetChange)
                {
                }
                column(StartBalance; StartBalance)
                {
                }
                column(StartBalance_Control33; -StartBalance)
                {
                }
                column(EndBalance; EndBalance)
                {
                }
                column(EndBalance_Control45; -EndBalance)
                {
                }
                column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1000000033; PadStr('', "G/L Account".Indentation * 2) + "G/L Account".Name)
                {
                }
                column(DebitAmount_Control1000000034; DebitAmount)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(CreditAmount_Control1000000035; CreditAmount)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(NetChange_Control1000000036; NetChange)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(NetChange_Control1000000037; -NetChange)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(StartBalance_Control1000000038; StartBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(StartBalance_Control1000000039; -StartBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(EndBalance_Control1000000040; EndBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(EndBalance_Control1000000041; -EndBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(G_L_Account___No___Control1000000046; "G/L Account"."No.")
                {
                }
                column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1000000047; PadStr('', "G/L Account".Indentation * 2) + "G/L Account".Name)
                {
                }
                column(DebitAmount_Control1000000048; DebitAmount)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(CreditAmount_Control1000000049; CreditAmount)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(NetChange_Control1000000050; NetChange)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(NetChange_Control1000000051; -NetChange)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(StartBalance_Control1000000052; StartBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(StartBalance_Control1000000053; -StartBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(EndBalance_Control1000000054; EndBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(EndBalance_Control1000000055; -EndBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(G_L_Account___No___Control1000000060; "G/L Account"."No.")
                {
                }
                column(G_L_Account___No___Control25; "G/L Account"."No.")
                {
                }
                column(PADSTR_____G_L_Account__Indentation___2_____G_L_Account__Name; PadStr('', "G/L Account".Indentation * 2) + "G/L Account".Name)
                {
                }
                column(EndBalance_Control86; -EndBalance)
                {
                }
                column(EndBalance_Control87; EndBalance)
                {
                }
                column(NetChange_Control88; -NetChange)
                {
                }
                column(NetChange_Control89; NetChange)
                {
                }
                column(DebitAmount_Control90; DebitAmount)
                {
                }
                column(CreditAmount_Control91; CreditAmount)
                {
                }
                column(StartBalance_Control94; StartBalance)
                {
                }
                column(StartBalance_Control95; -StartBalance)
                {
                }
                column(EndBalance_Control1000000005; -EndBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(EndBalance_Control1000000006; EndBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(NetChange_Control1000000008; -NetChange)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(NetChange_Control1000000009; NetChange)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(CreditAmount_Control1000000011; CreditAmount)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(DebitAmount_Control1000000012; DebitAmount)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(StartBalance_Control1000000014; -StartBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(StartBalance_Control1000000015; StartBalance)
                {
                    DecimalPlaces = 0 : 0;
                }
                column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1000000016; PadStr('', "G/L Account".Indentation * 2) + "G/L Account".Name)
                {
                }
                column(G_L_Account___No___Control1000000018; "G/L Account"."No.")
                {
                }
                column(EndBalance_Control1000000019; -EndBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(EndBalance_Control1000000020; EndBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(NetChange_Control1000000022; -NetChange)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(NetChange_Control1000000023; NetChange)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(CreditAmount_Control1000000025; CreditAmount)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(DebitAmount_Control1000000026; DebitAmount)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(StartBalance_Control1000000028; -StartBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(StartBalance_Control1000000029; StartBalance)
                {
                    DecimalPlaces = 1 : 1;
                }
                column(PADSTR_____G_L_Account__Indentation___2___G_L_Account__Name_Control1000000030; PadStr('', "G/L Account".Indentation * 2) + "G/L Account".Name)
                {
                }
                column(G_L_Account___No___Control1000000032; "G/L Account"."No.")
                {
                }
                column(Integer_Number; Number)
                {
                }
            }

            trigger OnAfterGetRecord()
            begin
                StartBalance := 0;
                EndBalance := 0;
                NetChange := 0;
                DebitAmount := 0;
                CreditAmount := 0;
                "G/L Account".SetRange("G/L Account"."Date Filter", 0D, ClosingDate(StartDate));
                CalcFields("Balance at Date");
                StartBalance := "Balance at Date";
                "G/L Account".SetRange("G/L Account"."Date Filter", 0D, EndDate);
                CalcFields("Balance at Date");
                EndBalance := "Balance at Date";
                "G/L Account".SetRange("G/L Account"."Date Filter", FromDate, EndDate);
                CalcFields("Debit Amount");
                CalcFields("Credit Amount");
                DebitAmount := "Debit Amount";
                CreditAmount := "Credit Amount";
                NetChange := EndBalance - StartBalance;
                if SkipAccounts and (DebitAmount = 0) and (EndBalance = 0) and (EndBalance = 0) then
                    CurrReport.Skip;

                case RoundingFactor of
                    RoundingFactor::"1":
                        begin
                            StartBalance := Round(StartBalance, 1);
                            EndBalance := Round(EndBalance, 1);
                            NetChange := Round(NetChange, 1);
                            DebitAmount := Round(DebitAmount, 1);
                            CreditAmount := Round(CreditAmount, 1);
                        end;
                    RoundingFactor::"1000":
                        begin
                            StartBalance := Round(StartBalance / 1000, 0.1);
                            EndBalance := Round(EndBalance / 1000, 0.1);
                            NetChange := Round(NetChange / 1000, 0.1);
                            DebitAmount := Round(DebitAmount / 1000, 0.1);
                            CreditAmount := Round(CreditAmount / 1000, 0.1);
                        end;
                    RoundingFactor::"1000000":
                        begin
                            StartBalance := Round(StartBalance / 1000000, 0.1);
                            EndBalance := Round(EndBalance / 1000000, 0.1);
                            NetChange := Round(NetChange / 1000000, 0.1);
                            DebitAmount := Round(DebitAmount / 1000000, 0.1);
                            CreditAmount := Round(CreditAmount / 1000000, 0.1);
                        end;
                end;
                //IF PrintToExcel THEN
                //MakeExcelDataBody;
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
                }
                field("Skip Acc Without Net Change"; SkipAccounts)
                {
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

    trigger OnPostReport()
    begin
        if PrintToExcel then
            CreateExcelbook;
    end;

    trigger OnPreReport()
    begin
        GLAccFilter := "G/L Account".GetFilters;
        Period := "G/L Account".GetFilter("Date Filter");
        FromDate := "G/L Account".GetRangeMin("Date Filter");
        StartDate := CalcDate('<-1D>', FromDate);
        EndDate := "G/L Account".GetRangeMax("Date Filter");

        RoundingText := '';

        case RoundingFactor of
            RoundingFactor::"1":
                begin
                    RoundingText := Text11801;
                end;
            RoundingFactor::"1000":
                begin
                    RoundingText := Text11802;
                end;
            RoundingFactor::"1000000":
                begin
                    RoundingText := Text11803;
                end;
        end;
        if PrintToExcel then
            MakeExcelInfo;
    end;

    var
        Text000: Label 'Period: %1';
        ExcelBuf: Record "Excel Buffer" temporary;
        GLFilter: Text[250];
        PeriodText: Text[30];
        PrintToExcel: Boolean;
        Text001: Label 'Trial Balance';
        Text002: Label 'Data';
        Text003: Label 'Debit';
        Text004: Label 'Credit';
        Text005: Label 'Company Name';
        Text006: Label 'Report No.';
        Text007: Label 'Report Name';
        Text008: Label 'User ID';
        Text009: Label 'Date';
        Text010: Label 'G/L Filter';
        CurrFormat: Text[30];
        Text011: Label 'Period Filter';
        GLAccFilter: Text[250];
        Period: Text[30];
        SkipAccounts: Boolean;
        EndBalance: Decimal;
        StartBalance: Decimal;
        FromDate: Date;
        EndDate: Date;
        StartDate: Date;
        NetChange: Decimal;
        DebitAmount: Decimal;
        CreditAmount: Decimal;
        RoundingFactor: Option "None","1","1000","1000000";
        RoundingText: Text[50];
        Text11801: Label 'Amount rounding in whole numbers';
        Text11802: Label 'Amounts are in thousands';
        Text11803: Label 'Amounts are in millions';
        Text11804: Label 'Trial Balance for period: ';
        Text11805: Label 'on ';
        PageCaptionLbl: Label 'Page';
        Printout_date_CaptionLbl: Label 'Printout date:';
        Net_ChangeCaptionLbl: Label 'Net Change';
        Net_Change_BalanceCaptionLbl: Label 'Net Change Balance';
        No_CaptionLbl: Label 'No.';
        NameCaptionLbl: Label 'Name';
        DebitCaptionLbl: Label 'Debit';
        CreditCaptionLbl: Label 'Credit';
        DebitCaption_Control17Lbl: Label 'Debit';
        CreditCaption_Control18Lbl: Label 'Credit';
        BalanceCaptionLbl: Label 'Balance';
        DebitCaption_Control38Lbl: Label 'Debit';
        CreditCaption_Control39Lbl: Label 'Credit';
        BalanceCaption_Control40Lbl: Label 'Balance';
        DebitCaption_Control42Lbl: Label 'Debit';
        CreditCaption_Control43Lbl: Label 'Credit';

    procedure MakeExcelInfo()
    begin
        /*ExcelBuf.SetUseInfoSheed;
        ExcelBuf.AddInfoColumn(FORMAT(Text005),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(COMPANYNAME,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text007),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(FORMAT(Text001),FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text006),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(REPORT::"Trial Balance",FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text008),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(USERID,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text009),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn(TODAY,FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text010),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn("G/L Account".GETFILTER("No."),FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.NewRow;
        ExcelBuf.AddInfoColumn(FORMAT(Text011),FALSE,'',TRUE,FALSE,FALSE,'');
        ExcelBuf.AddInfoColumn("G/L Account".GETFILTER("Date Filter"),FALSE,'',FALSE,FALSE,FALSE,'');
        ExcelBuf.ClearNewRow;
        MakeExcelDataHeader;*/

    end;

    local procedure MakeExcelDataHeader()
    begin
        /*ExcelBuf.AddColumn("G/L Account".FIELDCAPTION("No."),FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn("G/L Account".FIELDCAPTION(Name),FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn(
          FORMAT('Balance' + ' - ' + Text003 + ' - ')  + FORMAT(StartDate),FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn(
          FORMAT('Balance' + ' - ' + Text004 + ' - ')  + FORMAT(StartDate),FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn(
          FORMAT('Net Change' + ' - ' + Text003 + ' - ') + FORMAT(FromDate) + ' - ' + FORMAT(EndDate),FALSE,'',TRUE,FALSE,TRUE,'');
        
        ExcelBuf.AddColumn(
          FORMAT('Net Change' + ' - ' + Text004 + ' - ')  + FORMAT(FromDate) + ' - ' + FORMAT(EndDate),FALSE,'',TRUE,FALSE,TRUE,'');
        
        
        ExcelBuf.AddColumn(
          FORMAT('Net Change Balance' + ' - ' + Text003 + ' - ')  + FORMAT(FromDate) + ' - ' + FORMAT(EndDate),FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn(
          FORMAT('Net Change Balance' + ' - ' + Text004 + ' - ')  + FORMAT(FromDate) + ' - ' + FORMAT(EndDate),FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn(
          FORMAT("G/L Account".FIELDCAPTION("Balance at Date") + ' - ' + Text003 + ' - ') + FORMAT(EndDate),FALSE,'',TRUE,FALSE,TRUE,'');
        ExcelBuf.AddColumn(
          FORMAT("G/L Account".FIELDCAPTION("Balance at Date") + ' - ' + Text004 + ' - ') + FORMAT(EndDate),FALSE,'',TRUE,FALSE,TRUE,'');*/

    end;

    procedure MakeExcelDataBody()
    var
        BlankFiller: Text[250];
    begin
        /*BlankFiller := PADSTR(' ',MAXSTRLEN(BlankFiller),' ');
        ExcelBuf.NewRow;
        ExcelBuf.AddColumn(
          "G/L Account"."No.",FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
          FALSE,FALSE,'');
        IF "G/L Account".Indentation = 0 THEN
          ExcelBuf.AddColumn(
            "G/L Account".Name,FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
            FALSE,FALSE,'@')
        ELSE
          ExcelBuf.AddColumn(
            COPYSTR(BlankFiller,1,2 * "G/L Account".Indentation) + "G/L Account".Name,
            FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'@');
        
        
        CASE TRUE OF
         StartBalance = 0:
            BEGIN
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
            END;
         StartBalance > 0:
            BEGIN
              ExcelBuf.AddColumn(
               StartBalance,FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat);
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
            END;
          StartBalance < 0:
            BEGIN
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
              ExcelBuf.AddColumn(
                -StartBalance,FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat);
            END;
        END;
        
        IF "G/L Account"."Debit Amount"<>0   THEN
              ExcelBuf.AddColumn(
             "G/L Account"."Debit Amount",FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat)
        ELSE
              ExcelBuf.AddColumn(
             '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat);
        IF  "G/L Account"."Credit Amount"<>0   THEN
              ExcelBuf.AddColumn(
               "G/L Account"."Credit Amount",FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'')
        ELSE      ExcelBuf.AddColumn(
               '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
        
        
        
        "G/L Account".CALCFIELDS("Net Change");
        CASE TRUE OF
          "G/L Account"."Net Change" = 0:
            BEGIN
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
            END;
          "G/L Account"."Net Change" > 0:
            BEGIN
              ExcelBuf.AddColumn(
                "G/L Account"."Net Change",FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat);
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
            END;
          "G/L Account"."Net Change" < 0:
            BEGIN
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
              ExcelBuf.AddColumn(
                -"G/L Account"."Net Change",FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat);
            END;
        END;
        
        CASE TRUE OF
          "G/L Account"."Balance at Date" = 0:
            BEGIN
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
            END;
          "G/L Account"."Balance at Date" > 0:
            BEGIN
              ExcelBuf.AddColumn(
                "G/L Account"."Balance at Date",FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat);
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
            END;
          "G/L Account"."Balance at Date" < 0:
            BEGIN
              ExcelBuf.AddColumn(
                '',FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,FALSE,FALSE,'');
              ExcelBuf.AddColumn(
                -"G/L Account"."Balance at Date",FALSE,'',"G/L Account"."Account Type" <> "G/L Account"."Account Type"::Posting,
                FALSE,FALSE,CurrFormat);
            END;
        END;*/

    end;

    procedure CreateExcelbook()
    begin
        /*ExcelBuf.CreateBook;
        ExcelBuf.CreateSheet(Text002,Text001,COMPANYNAME,USERID);
        ExcelBuf.GiveUserControl;
        //ERROR('');  */

    end;
}

