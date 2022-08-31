dotnet
{
    assembly(mscorlib)
    {
        type(System.Array; mscorlib_System_Array) { } //"'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Array"
        type(System.Convert; mscorlib_System_Convert) { } //"'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Convert"
        type(System.IO.MemoryStream; mscorlib_System_IO_MemoryStream) { } //"'mscorlib, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.IO.MemoryStream"
        type(System.EventArgs; mscorlib_System_EventArgs) { } //"'mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.EventArgs"
        type(System.IO.StreamReader; mscorlib_System_IO_StreamReader) { } //"'mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.IO.StreamReader"
        type(System.Text.Encoding; mscorlib_System_Text_Encoding) { }//"'mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Text.Encoding"
    }
    assembly(System)
    {
        Version = '4.0.0.0';
        Culture = 'neutral';
        PublicKeyToken = 'b77a5c561934e089';
        type(System.Diagnostics.Process; System_System_Diagnostics_Process) { } //"'System, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Diagnostics.Process"
        type(System.Collections.Specialized.NameValueCollection; System_System_Collections_Specialized_NameValueCollection) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Collections.Specialized.NameValueCollection"
        type(System.Diagnostics.DataReceivedEventArgs; System_System_Diagnostics_DataReceivedEventArgs) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Diagnostics.DataReceivedEventArgs"
        type(System.Net.DecompressionMethods; System_System_Net_DecompressionMethods) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Net.DecompressionMethods"
        type(System.Net.HttpStatusCode; System_System_Net_HttpStatusCode) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Net.HttpStatusCode"
        type(System.Net.HttpWebRequest; System_System_Net_HttpWebRequest) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Net.HttpWebRequest"
        type(System.Net.HttpWebResponse; System_System_Net_HttpWebResponse) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Net.HttpWebResponse"
        type(System.Net.WebException; System_System_Net_WebException) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Net.WebException"
        type(System.Net.WebExceptionStatus; System_System_Net_WebExceptionStatus) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Net.WebExceptionStatus"
        type(System.Uri; System_System_Uri) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Uri"
        type(System.UriKind; System_System_UriKind) { } //"'System, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.UriKind"
    }
    assembly(System.Xml)
    {
        Version = '4.0.0.0';
        Culture = 'neutral';
        PublicKeyToken = 'b77a5c561934e089';
        type(System.Xml.XmlAttribute; System_Xml_System_Xml_XmlAttribute) { } //"'System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Xml.XmlAttribute"
        type(System.Xml.XmlDocument; System_Xml_System_Xml_XmlDocument) { } //"'System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Xml.XmlDocument"
        type(System.Xml.XmlNamedNodeMap; System_Xml_System_Xml_XmlNamedNodeMap) { } //"'System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Xml.XmlNamedNodeMap"
        //type(System.Xml.XmlNode;System_Xml_System_Xml_XmlNode){} //"'System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Xml.XmlNode"
        type(System.Xml.XmlNodeChangedEventArgs; System_Xml_System_Xml_XmlNodeChangedEventArgs) { } //"'System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Xml.XmlNodeChangedEventArgs"
        type(System.Xml.XmlNodeList; System_Xml_System_Xml_XmlNodeList) { } //"'System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Xml.XmlNodeList"
        type(System.Xml.Xsl.XslCompiledTransform; System_Xml_System_Xml_Xsl_XslCompiledTransform) { } //"'System.Xml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089'.System.Xml.Xsl.XslCompiledTransform"
        type(System.Xml.XmlNode; System_Xml_System_Xml_XmlNode) { }
    }
    assembly(FiscalizationDLL)
    {
        Version = '1.0.0.0';
        Culture = 'neutral';
        // PublicKeyToken = 'b77a5c561934e089';
        type(FiscalizationDLL.IICGenerator; IICGenerator) { }
        type(FiscalizationDLL.SignatureGenerator; SignatureGenerator) { }
        type(FiscalizationDLL.CreateSoapEnvelope; CreateSoapEnvelope) { }
        type(FiscalizationDLL.WebService_Connection; WebService_Connection) { }
        type(FiscalizationDLL.ReadXML; ReadXML) { }
        type(FiscalizationDLL.XmlnsRemover; XmlnsRemover) { }
        type(FiscalizationDLL.UBLSignatureGenerator; UBLSignatureGenerator) { }
    }
}
codeunit /*50300*/50008 XMLGenerator
{
    Permissions = TableData 112 = rimd, TableData 114 = rimd, TableData "Company Setup -  e-Invoice" = rimd, tabledata 271 = rimd;
    trigger OnRun();
    var
        lSIH: Record "Sales Invoice Header";
        lCI: Record "Company Information";
    begin
        // OnRunFn;
    end;

    var
        CompanyInfo_eInv: Record "Company Setup -  e-Invoice";//50300;
        Customer: Record Customer;
        RBMgt: Codeunit "File Management";
        [WithEvents]
        XMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        XMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        XMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        gFilePathAndName: Text;
        DocNameSpace: Text[100];
        gPurchaseNo: Code[20];
        VendorFilter: Code[20];
        DDTNoFilter: Code[20];
        CrossRefFilter: Code[20];
        PriceFilter: Decimal;
        QtyFilter: Decimal;
        LineNoFilter: Integer;

        [WithEvents]
        FiscIICGen: DotNet IICGenerator;
        SignGen: Dotnet SignatureGenerator;
        FiscCreateSoap: DotNet CreateSoapEnvelope;
        WebService: Dotnet WebService_Connection;
        ReadXml: DotNet ReadXml;
        UBLSignatureGenerator: Dotnet UBLSignatureGenerator;
        gDevRegResponseFilePathAndName: Text;
        gCashRegResponseFilePathAndName: Text;
        gSalesResponseFilePathAndName: Text;
        gEInvoiceResponseFilePathAndName: Text;
        gTaxPayersResponseFileAndName: Text;
        gEInvoiceResponseFileAndName: TExt;
        gCompanionResponseFilePathAndName: Text;
        gRegTCRReqURL: Text;
        gRegInvoiceReqURL: Text;
        gEnvironmentURL: Text;
        gCompanionReqURL: Text;
        gRegCASHReqUrl: Text;
        gSoapFilePathAndName: Text;
        gEInvoiceEnvironmentURL: Text;
        gRegEInvoiceReqURL: Text;

        [WithEvents]
        gAppendDoc: DotNet System_Xml_System_Xml_XmlDocument;
        GChildNode: DotNet System_Xml_System_Xml_XmlNode;
        GNodeList: DotNet System_Xml_System_Xml_XmlNodeList;
        FormatNameDate: Text;
        BareName: Text;
        gInvoice_IIC: Text;
        gInvoice_IIC_Signature: Text;
        gCRMemo_IIC: Text;
        gCRMemo_IIC_Signature: Text;
        gInvoiceExRate: Decimal;
        gCRMemoExRate: Decimal;
        gUblInvoiceBase64: Text;
        gUblCRMemoBase64: Text;
        gDocType: Option "Invoice","Credit Memo";
        gNrFatTatimore: code[20];

        ErrorTxt001: Label 'Operatori i perzgjedhur nuk mund te kryej veprimi mbi kete arke';//The selected operator can not perform the action on this cash device
        ErrorTxt002: Label 'Nuk mund te Postohet/Fiskalizohet nje fature CASH pa deklaruar arken';//A CASH invoice can not be posted / fiscalized without declaring the checkout
        ErrorTxt003: Label 'Nuk mund te Postohet/Fiskalizohet veprimi pa percaktuar DEPOSIT/WITHDRAW';//The action can not be posted/fiscalized without specifying DEPOSIT/WITHDRAW
        ErrorTxt004: Label 'Fatura nuk mund te Postohet/Fiskalizohet pa percaktuar piken e mberritjes';//The invoice can not be posted/fiscalized without specifying the point of arrival
        ErrorTxt005: Label 'Fatura nuk mund te Postohet/Fiskalizohet pa percaktuar piken e nisjes';//The invoice can not be posted/fiscalized without specifying the starting point
        ErrorTxt006: Label 'Fatura nuk mund te Postohet/Fiskalizohet pa percaktuar kodin e agjentit';//The invoice can not be posted/fiscalized without specifying the agent code
        ErrorTxt007: Label 'Fatura nuk mund te Postohet/Fiskalizohet pa percaktuar kursin e kembimit';//Invoice can not be posted / Fiscalized without specifying the exchange rate
        ErrorTxt008: Label 'Fatura nuk mund te Postohet/Fiskalizohet pa arsyen e zbritjes se aplikuar ne nivel fature';//The invoice can not be posted / Fiscalized without the reason of the discount applied at the invoice level
        ErrorTxt009: Label 'Fatura nuk mund te Postohet/Fiskalizohet sepse klienti i zgjedhur nuk eshte i vlefshem per vetfaturim';//Invoice can not be posted / Fiscalized because the selected client is not valid for self-billing
        ErrorTxt010: Label 'Fatura nuk mund te Postohet/Fiskalizohet sepse nqs eshte Vetë-faturim nuk mund te lejohet te jete E-Invoice';//Invoice can not be posted / Fiscalized because if it is Self-invoicing can not be allowed to be E-Invoice
        ErrorTxt011: Label 'Fatura nuk mund te Postohet/Fiskalizohet, Rikontrollo elementet e saj';//Invoice can not be posted / Fiscalized, Re-check its elements
        ErrorTxt012: Label 'Fatura korigjuese nuk mund te Postohet/Fiskalizohet pa percaktuar nqs eshte e borxhit te keq ose korigjuese';//Correction invoice can not be posted / Fiscalized without specifying if it is bad debt or correction
        ErrorTxt013: Label 'Fatura korigjuese nuk mund te Postohet/Fiskalizohet pa percaktuar tipin e fatures korigjuese';//Correction invoice can not be posted / Fiscalized without specifying the type of correction invoice
        ErrorTxt014: Label 'Fatura nuk mund te Postohet/Fiskalizohet, sepse menyra e pageses nuk perkon me tipin e fatures';//Invoice can not be posted / Fiscalized, because the payment method does not match the type of invoice
        ErrorTxt015: Label 'Fatura nuk mund te Postohet/Fiskalizohet, sepse Operatori i perzgjedhur nuk mund te kryej veprimi mbi kete arke';//Invoice can not be posted / Fiscalized, because the selected Operator can not perform the action on this box
        ErrorTxt016: Label 'Fatura nuk mund te Postohet/Fiskalizohet, sepse ka kaluar totalin e lejuar per pagesa CASH';//The invoice can not be posted / Fiscalized, because it has exceeded the total allowed for CASH payments
        ErrorTxt017: Label 'Gabim ne ridergimin e fatures';//Error sending invoice
        ErrorTxt018: Label 'Gabim ne regjistrimin e gjendjes se parave ne arke, FCDC nuk u gjenerua';//Error recording cash balance, FCDC not generated
        ErrorTxt019: Label 'Problem me gjenerimin e TCR';//Problem generating TCR Code
        ErrorTxt020: Label 'Fatura nuk mund te Postohet/Fiskalizohet sepse Duhen plotesuar vlerat per menyren e pageses';//The invoice was not posted / fiscalized because the values for the payment method must be completed
        ErrorTxt021: Label 'IIC/NSLF nuk u gjenerua';//IIC / NSLF was not generated
        ErrorTxt022: Label 'Duhen plotesuar vlerat per menyren e pageses, Fatura nuk u fiskalizua!';//The values for the payment method must be completed, the invoice was not fiscalized!
        ErrorTxt023: Label 'Nuk mund te dergohet kerkesa pa percaktuar veprimin qe do te kryhet me arken';//The request can not be sent without specifying the action to be performed with this box
        ErrorTxt024: Label 'WTNIC/NSLFSH nuk u gjenerua'; //WTNIC/NSLFSH was not generated
        MessageTxt001: Label 'Fatura u ridergua me sukses';//The invoice was successfully redistributed
        MessageTxt002: Label 'Gjendja e parave ne arke u dergua me sukses';//The cash balance was successfully declared
        MessageTxt003: Label 'Kerkesa per te mar E-Invoice u dergua me sukses';//The request to receive the E-Invoice was successfully sent
        MessageTxt004: Label 'Problem ne dergimin E-Invoice';//Problem sending E-Invoice
        MessageTxt005: Label 'Fatura nuk u gjenerua'; //The invoice was not generated
        MessageTxt006: Label 'Te dhenat u perditesuan';//Data updated
        MessageTxt007: Label 'E-Invoice u dergua dhe pergjigja u mor me sukses';//The e-Invoice was sent and the reply was successfully received
        MessageTxt010: Label 'Fatura u ruajt lokalisht por nuk u dergua te tatime';//The invoice was stored locally but was not sent to CIS
        MessageTxt011: Label 'Fatura u fiskalizua';//The invoice was fiscalized
        MessageTxt012: Label 'Gabim ne fiskalizimin e fatures, NIVF nuk u gjenerua';//Invoice has problems, NIVF was not generated
        MessagexTxt013: Label 'Gabim ne krijimin e fatures shoqeruese';//Error creating accompanying invoice
        MessagexTxt014: Label 'Fatura Shoqeruese krijua me sukses';//The Accompanying Invoice was successfully created
        MessagexTxt015: Label 'Pajisa TCR u regjistrua me sukses';//The TCR device was successfully registered
        OVehOwnership: Label 'OWNER';
        ThVehOwnership: Label 'THIRDPARTY';

    local procedure CreateUUID(): Text;
    begin
        EXIT(DELCHR(LOWERCASE(FORMAT(CREATEGUID)), '=', '{}'));
    end;

    procedure GetCompanyInfo_eInv();
    begin
        CompanyInfo_eInv.GET;
    end;

    procedure GetCustomer(CustomerNo: Code[20]);
    begin
        Customer.GET(CustomerNo);
        Customer.TESTFIELD("Country/Region Code");
    end;

    procedure GetFileName(pPath: Text): Text;
    var
        FileMgt: Codeunit 419;
    begin
        EXIT(FileMgt.GetFileName(pPath));
    end;

    procedure ExportLocalXML
    (
        pDocType: Option Invoice,"Credit Memo","Bank Account","Gen. Journal Line";
        var pSalesInvHeader: Record 112;
        var pSalesCrMemoHeader: Record 114;
        var pBankAccount: Record 270;
        var pGenJournalLine: Record 81;
        var pBankAccountLedgerEntry: Record 271
    )
    var
        lPathFile: Text;
        lcuFileMgt: Codeunit 419;
        lText001: Label 'Save';
        lText002: Label 'File saved';
    begin
        GetCompanyInfo_eInv;
        CASE pDocType OF
            pDocType::Invoice:
                BEGIN
                    IF CompanyInfo_eInv."File Path Sales" <> '' THEN
                        Create_SalesInvoice(pSalesInvHeader, TRUE, '')
                    ELSE BEGIN
                        lPathFile := lcuFileMgt.SaveFileDialog(lText001, '', '');
                        Create_SalesInvoice(pSalesInvHeader, TRUE, lPathFile);
                    END;
                END;
            pDocType::"Credit Memo":
                BEGIN
                    IF CompanyInfo_eInv."File Path Sales" <> '' THEN
                        Create_SalesCrMemo(pSalesCrMemoHeader, TRUE, '')
                    ELSE BEGIN
                        lPathFile := lcuFileMgt.SaveFileDialog(lText001, '', '');
                        Create_SalesCrMemo(pSalesCrMemoHeader, TRUE, lPathFile);
                    END;
                END;
            pDocType::"Bank Account":
                BEGIN
                    IF CompanyInfo_eInv."Cash Reg Request File Path" <> '' THEN
                        Cash_Reg(pBankAccount, pGenJournalLine, pBankAccountLedgerEntry, pDocType::"Bank Account", TRUE, '')
                    ELSE BEGIN
                        lPathFile := lcuFileMgt.SaveFileDialog(lText001, '', '');
                        Cash_Reg(pBankAccount, pGenJournalLine, pBankAccountLedgerEntry, pDocType::"Bank Account", TRUE, lPathFile);
                    END;
                END;
            pDocType::"Gen. Journal Line":
                BEGIN
                    IF CompanyInfo_eInv."Cash Reg Request File Path" <> '' THEN
                        Cash_Reg(pBankAccount, pGenJournalLine, pBankAccountLedgerEntry, pDocType::"Gen. Journal Line", TRUE, '')
                    ELSE BEGIN
                        lPathFile := lcuFileMgt.SaveFileDialog(lText001, '', '');
                        Cash_Reg(pBankAccount, pGenJournalLine, pBankAccountLedgerEntry, pDocType::"Gen. Journal Line", TRUE, lPathFile);
                    END;
                END;
        END;
    end;

    procedure Open_File(
                          //pType: Option Save,Update,Open;
                          pDocType: Option Invoice,"Credit Memo","Bank Account","Gen. Journal Line";
                      var pSalesInvoiceHeader: Record "Sales Invoice Header";
                      var pSalesCrMemoHeader: Record "Sales Cr.Memo Header";
                      var pGenJournalLine: Record "Gen. Journal Line";
                      var pBankAccountLedgerEntry: Record "Bank Account Ledger Entry";
                          pDocNo: Code[20]
                        )
    var
        lBankAccount: Record 270;
        lCompanySetupeInvoice: Record "Company Setup -  e-Invoice";//50300;
    begin
        lCompanySetupeInvoice.GET;
        // CASE pType OF
        //     pType::Save:
        //         BEGIN
        IF (pDocType = pDocType::Invoice) /*AND (lSalesInvoiceHeader.GET(pDocNo))*/ THEN
            ExportLocalXML(pDocType::Invoice, pSalesInvoiceHeader, pSalesCrMemoHeader, lBankAccount, pGenJournalLine, pBankAccountLedgerEntry)
        ELSE
            IF (pDocType = pDocType::"Credit Memo") /*AND (lSalesCrMemoHeader.GET(pDocNo))*/ THEN
                ExportLocalXML(pDocType::"Credit Memo", pSalesInvoiceHeader, pSalesCrMemoHeader, lBankAccount, pGenJournalLine, pBankAccountLedgerEntry)
            ELSE
                IF (pDocType = pDocType::"Bank Account") AND (lBankAccount.GET(pDocNo)) THEN
                    ExportLocalXML(pDocType::"Bank Account", pSalesInvoiceHeader, pSalesCrMemoHeader, lBankAccount, pGenJournalLine, pBankAccountLedgerEntry)
                ELSE
                    IF (pDocType = pDocType::"Gen. Journal Line") AND (lBankAccount.GET(pGenJournalLine."Account No.")) then
                        ExportLocalXML(pDocType::"Gen. Journal Line", pSalesInvoiceHeader, pSalesCrMemoHeader, lBankAccount, pGenJournalLine, pBankAccountLedgerEntry)
        // END;
        // END;
    END;

    procedure CalcSalesInvLineTotal(var SalesInvoiceLine: Record 113; var SubTotal: Decimal; var RetainAmt: Decimal; DocumentNo: Code[20]);
    begin
        SalesInvoiceLine.RESET;
        SalesInvoiceLine.SETRANGE("Document No.", DocumentNo);
        SalesInvoiceLine.SETRANGE(Type, SalesInvoiceLine.Type::"G/L Account", SalesInvoiceLine.Type::"Charge (Item)");
        SalesInvoiceLine.SETFILTER(Quantity, '<>%1', 0);
        IF SalesInvoiceLine.FINDSET THEN
            REPEAT
                SalesInvoiceLine.TESTFIELD(Quantity);
                SalesInvoiceLine.TESTFIELD("Unit Price");
                SalesInvoiceLine.TESTFIELD(Description);
                SubTotal := SubTotal + (SalesInvoiceLine.Quantity * SalesInvoiceLine."Unit Price");
                RetainAmt := RetainAmt + (SalesInvoiceLine."Amount Including VAT" - SalesInvoiceLine.Amount);
            UNTIL SalesInvoiceLine.NEXT = 0;
    end;

    procedure CalcSalesCrMemoLineTotal(var SalesCrMemoLine: Record 115; var SubTotal: Decimal; var RetainAmt: Decimal; DocumentNo: Code[20]);
    begin
        SalesCrMemoLine.RESET;
        SalesCrMemoLine.SETRANGE("Document No.", DocumentNo);
        SalesCrMemoLine.SETRANGE(Type, SalesCrMemoLine.Type::"G/L Account", SalesCrMemoLine.Type::"Charge (Item)");
        SalesCrMemoLine.SETFILTER(Quantity, '<>%1', 0);
        IF SalesCrMemoLine.FINDSET THEN
            REPEAT
                SalesCrMemoLine.TESTFIELD(Quantity);
                SalesCrMemoLine.TESTFIELD("Unit Price");
                SalesCrMemoLine.TESTFIELD(Description);
                SubTotal := SubTotal + (SalesCrMemoLine.Quantity * SalesCrMemoLine."Unit Price");
                RetainAmt := RetainAmt + (SalesCrMemoLine."Amount Including VAT" - SalesCrMemoLine.Amount);
            UNTIL SalesCrMemoLine.NEXT = 0;
    end;

    procedure GetVATAmountLines_SalesInvoice(var VATAmountLine: Record 290 temporary; pDocumentNo: Code[20])
    var
        lSalesInvoiceLine: Record 113;
    begin
        lSalesInvoiceLine.RESET;
        lSalesInvoiceLine.SETRANGE("Document No.", pDocumentNo);
        IF lSalesInvoiceLine.FINDSET THEN
            REPEAT
                VATAmountLine.INIT;
                VATAmountLine."VAT Identifier" := lSalesInvoiceLine."VAT Identifier";
                VATAmountLine."VAT Calculation Type" := lSalesInvoiceLine."VAT Calculation Type";
                VATAmountLine."Tax Group Code" := lSalesInvoiceLine."Tax Group Code";
                VATAmountLine."VAT %" := lSalesInvoiceLine."VAT %";
                VATAmountLine."VAT Base" := lSalesInvoiceLine.Amount;
                VATAmountLine."Amount Including VAT" := lSalesInvoiceLine."Amount Including VAT";
                VATAmountLine."Line Amount" := lSalesInvoiceLine."Line Amount";
                IF lSalesInvoiceLine."Allow Invoice Disc." THEN
                    VATAmountLine."Inv. Disc. Base Amount" := lSalesInvoiceLine."Line Amount";
                VATAmountLine."Invoice Discount Amount" := lSalesInvoiceLine."Inv. Discount Amount";
                VATAmountLine."VAT Clause Code" := lSalesInvoiceLine."VAT Clause Code";
                VATAmountLine.Quantity := lSalesInvoiceLine.Quantity;
                VATAmountLine.InsertLine1();
            until lSalesInvoiceLine.Next() = 0;
    end;

    procedure GetVATAmountLines_SalesCM(var VATAmountLine: Record 290 temporary; pDocumentNo: Code[20]);
    VAR
        lSalesCMLine: Record 115;
    begin
        lSalesCMLine.Reset();
        lSalesCMLine.SetRange("Document No.", pDocumentNo);
        if lSalesCMLine.FindSet() then
            repeat
                VATAmountLine.INIT;
                VATAmountLine."VAT Identifier" := lSalesCMLine."VAT Identifier";
                VATAmountLine."VAT Calculation Type" := lSalesCMLine."VAT Calculation Type";
                VATAmountLine."Tax Group Code" := lSalesCMLine."Tax Group Code";
                VATAmountLine."VAT %" := lSalesCMLine."VAT %";
                VATAmountLine."VAT Base" := lSalesCMLine.Amount;
                VATAmountLine."Amount Including VAT" := lSalesCMLine."Amount Including VAT";
                VATAmountLine."Line Amount" := lSalesCMLine."Line Amount";
                IF lSalesCMLine."Allow Invoice Disc." THEN
                    VATAmountLine."Inv. Disc. Base Amount" := lSalesCMLine."Line Amount";
                VATAmountLine."Invoice Discount Amount" := lSalesCMLine."Inv. Discount Amount";
                VATAmountLine."VAT Clause Code" := lSalesCMLine."VAT Clause Code";
                VATAmountLine.Quantity := lSalesCMLine.Quantity;
                VATAmountLine.InsertLine1;
            until lSalesCMLine.Next() = 0;
    end;

    local procedure AddElement(var XMLNode: DotNet System_Xml_System_Xml_XmlNode;
                                    NodeName: Text[250];
                                    NodeText: Text[250];
                                    NameSpace: Text[250];
                              var CreatedXMLNode: DotNet System_Xml_System_Xml_XmlNode): Boolean;

    var
        NewChildNode: DotNet System_Xml_System_Xml_XmlNode;
    begin
        NewChildNode := XMLNode.OwnerDocument.CreateNode('element', NodeName, NameSpace);
        IF ISNULL(NewChildNode) THEN
            EXIT(FALSE);

        IF NodeText <> '' THEN
            NewChildNode.Value := RemoveInvalidChars(NodeText);
        XMLNode.AppendChild(NewChildNode);
        CreatedXMLNode := NewChildNode;
        EXIT(TRUE);
    end;

    local procedure AddAttribute(var XMLDomDocParam: DotNet System_Xml_System_Xml_XmlDocument;
                                 var XMLDomNode: DotNet System_Xml_System_Xml_XmlNode;
                                 AttribName: Text[250];
                                 AttribValue: Text[1024]): Boolean;

    var
        XMLDomAttribute: DotNet System_Xml_System_Xml_XmlAttribute;
    begin
        XMLDomAttribute := XMLDomDocParam.CreateAttribute(AttribName);
        IF ISNULL(XMLDomAttribute) THEN
            EXIT(FALSE);

        IF AttribValue <> '' THEN BEGIN
            XMLDomAttribute.Value := RemoveInvalidChars(AttribValue);
            XMLDomNode.Attributes.SetNamedItem(XMLDomAttribute);
        END;
        CLEAR(XMLDomAttribute);
        EXIT(TRUE);
    end;

    local procedure InitXMLNew(formatoTrasmissione: Text[10]);
    var
        xsltTag: Text;
    begin
        // Create instance
        IF ISNULL(XMLdocOut) THEN
            XMLdocOut := XMLdocOut.XmlDocument;
        // Root element
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        XMLdocOut.LoadXml := '<?xml version="1.0" encoding="UTF-8"?>' + xsltTag +
                             '<RegisterInvoiceRequest xmlns="https://eFiskalizimi.tatime.gov.al/FiscalizationService/schema" xmlns:ns2="http://www.w3.org/2000/09/xmldsig#" Version="3" Id="Request"> </RegisterInvoiceRequest>';
        XMLCurrNode := XMLdocOut.DocumentElement;
    end;

    local procedure GetLineDescription(pNo: Code[20]; pType: enum "Sales Line Type"): Text
    var
        lItem: Record Item;
        lResource: Record Resource;
        lGLAcc: Record "G/L Account";
        lFixAssets: Record "Fixed Asset";
        lItemCharg: Record "Item Charge";
    begin
        if pType = pType::Item then
            if lItem.Get(pNo) then
                exit(lItem.Description);

        if pType = pType::Resource then
            if lResource.Get(pNo) then
                exit(lResource.Name);

        if pType = pType::"G/L Account" then
            if lGLAcc.Get(pNo) then
                exit(lGLAcc.Name);

        if pType = pType::"Fixed Asset" then
            if lFixAssets.Get(pNo) then
                exit(lFixAssets.Description);

        if pType = pType::"Charge (Item)" then
            if lItemCharg.Get(pNo) then
                exit(lItemCharg.Description);
    end;

    procedure Create_SalesInvoice(var SalesInvHeader: Record 112; pXMLExport: Boolean; pFilePath: Text);
    var
        lCompInfo: Record "Company Information";
        lEISetup: record "Company Setup -  e-Invoice";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        lPayMethod: Record "Payment Method";
        lUserSet: Record "User Setup";
        lSalesInvHeader: Record "Sales Invoice Header";
        lSalesCRMemo: Record "Sales Cr.Memo Header";
        lSalesInvoiceLine: Record "Sales Invoice Line";
        SalesInvoiceLine: Record "Sales Invoice Line";
        TmpVATAmountLine: Record "VAT Amount Line" temporary;
        lVATPostingSetup: Record "VAT Posting Setup";
        lUPB: Decimal;
        FileNameEdoc: Text[1024];
        FilePathEdoc: Text[1024];
        SubTotal: Decimal;
        RetainAmt: Decimal;
        TmpServerFile: Text[1024];
        lformatTrassmis: Text[10];
        lIIC_IICSign: Text[650];
        lUuid: Text[38];
        lDataFiskalizmi: Text;
        lNIVF: Text;
        lDiferenca: Decimal;
        lLineNo: Decimal;
        lAmountInclVat: Decimal;
        lHeaderAmntIncVat: Decimal;
        lRoundValue: Decimal;
        lVatBase: Decimal;
        lExemptFromVat: Text;
        lFeeAmount: Decimal;
        FileNameEdocResponse: Text;
        SoapFileNameEdoc: Text;
        PB: Decimal;
        lTotPriceWoVAT: Decimal;

    begin
        lCompInfo.Get();
        lEISetup.Get();
        GetCompanyInfo_eInv;
        GetCustomer(SalesInvHeader."Bill-to Customer No.");
        SalesInvHeader.TESTFIELD("No.");
        CalcSalesInvLineTotal(SalesInvoiceLine, SubTotal, RetainAmt, SalesInvHeader."No.");
        // Export := TRUE;

        //InitXML;
        InitXMLNew(lformatTrassmis);
        WITH SalesInvHeader DO BEGIN
            SalesInvHeader.CalcFields(Amount, "Amount Including VAT", "Invoice Discount Amount");
            gInvoiceExRate := 1;
            if (SalesInvHeader."Currency Code" <> '') and (SalesInvHeader."Currency Code" <> 'ALL') then begin
                if SalesInvHeader."Currency Factor" <> 0 then
                    gInvoiceExRate := round((1 / SalesInvHeader."Currency Factor"), 0.01)
                else
                    gInvoiceExRate := 1;
            end;
            //<Header>
            AddElement(XMLCurrNode, 'Header', '', '', XMLNewChild);
            lUuid := CreateUUID();
            lDataFiskalizmi := FiscIICGen.IIcGenerator().DateTimeFormat(CurrentDateTime);
            SalesInvHeader.Validate("Fiscalization Date", lDataFiskalizmi);
            AddAttribute(XMLdocOut, XMLNewChild, 'SendDateTime', Format(SalesInvHeader."Fiscalization Date"));
            AddAttribute(XMLdocOut, XMLNewChild, 'UUID', lUuid);
            SalesInvHeader.Validate(SalesInvHeader.UUID, lUuid);

            //<invoice>
            AddElement(XMLCurrNode, 'Invoice', '', '', XMLNewChild);
            XMLCurrNode := XMLNewChild;
            AddAttribute(XMLdocOut, XMLCurrNode, 'TypeOfInv', Format(SalesInvHeader."Invoice Type"));
            if (SalesInvHeader."Type of Self Iss" <> SalesInvHeader."Type of Self Iss"::" ") then
                AddAttribute(XMLdocOut, XMLCurrNode, 'TypeOfSelfIss', Format(SalesInvHeader."Type of Self Iss"));
            AddAttribute(XMLdocOut, XMLCurrNode, 'IsSimplifiedInv', FormatBoolean(SalesInvHeader."Is Simplified Inv"));
            AddAttribute(XMLdocOut, XMLCurrNode, 'IssueDateTime', Format(SalesInvHeader."Fiscalization Date"));
            // if (lEISetup."TCR Code" = '') then begin
            //     // Device_Reg(lEISetup); eshte bere deklarimi i pajises nga TCRDevice 
            //     Message(MessageTxt009);
            // end;
            if lEISetup."FE Activated" then
                if SalesInvHeader."FE Deactivate" = false then begin
                    gNrFatTatimore := NoSeriesMgt.GetNextNo(lEISetup."Invoice No. Series.", WORKDATE, TRUE);

                    if (SalesInvHeader."Invoice Type" = SalesInvHeader."Invoice Type"::CASH) then
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', gNrFatTatimore + '/' + Format(Date2DMY(Today, 3)) + '/' + lEISetup."TCR Code")
                    else
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', gNrFatTatimore + '/' + Format(Date2DMY(Today, 3)));
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvOrdNum', Format(gNrFatTatimore));
                    SalesInvHeader.Validate(SalesInvHeader."Fiscalised invoice number", gNrFatTatimore);
                end
                else begin
                    if (SalesInvHeader."Invoice Type" = SalesInvHeader."Invoice Type"::CASH) then
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesInvHeader."No." + '/' + Format(Date2DMY(Today, 3)) + '/' + lEISetup."TCR Code")
                    else
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesInvHeader."No." + '/' + Format(Date2DMY(Today, 3)));
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvOrdNum', Format(SalesInvHeader."No."));
                end
            else begin
                if (SalesInvHeader."Invoice Type" = SalesInvHeader."Invoice Type"::CASH) then
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesInvHeader."No." + '/' + Format(Date2DMY(Today, 3)) + '/' + lEISetup."TCR Code")
                else
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesInvHeader."No." + '/' + Format(Date2DMY(Today, 3)));
                AddAttribute(XMLdocOut, XMLCurrNode, 'InvOrdNum', Format(SalesInvHeader."No."));
            end;
            if SalesInvHeader."Invoice Type" = SalesInvHeader."Invoice Type"::CASH then
                AddAttribute(XMLdocOut, XMLCurrNode, 'TCRCode', lEISetup."TCR Code");
            AddAttribute(XMLdocOut, XMLCurrNode, 'IsIssuerInVAT', FormatBoolean(CompanyInfo_eInv."Is Issuer In VAT"));

            TmpVATAmountLine.Reset();
            TmpVATAmountLine.DeleteAll();
            GetVATAmountLines_SalesInvoice(TmpVATAmountLine, SalesInvHeader."No.");
            TmpVATAmountLine.RESET;
            IF TmpVATAmountLine.FindSet() THEN
                repeat
                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesInvHeader."VAT Bus. Posting Group");
                    lVATPostingSetup.SETRANGE(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                    if lVATPostingSetup.FindSet() then begin
                        lTotPriceWoVAT := 0;
                        IF (lVATPostingSetup."VAT Exemption Type" = lVATPostingSetup."VAT Exemption Type"::TAX_FREE) THEN begin
                            lVatBase += TmpVATAmountLine."VAT Base";
                            lTotPriceWoVAT := Round(lVatBase * gInvoiceExRate, 0.01);
                            AddAttribute(XMLdocOut, XMLCurrNode, 'TaxFreeAmt', FormatAmount(Round(lVatBase * gInvoiceExRate, 0.01)));
                        end;
                        if (lVATPostingSetup.Export) then begin
                            lVatBase += TmpVATAmountLine."VAT Base";
                            lTotPriceWoVAT := (Round(lVatBase * gInvoiceExRate, 0.01));
                            AddAttribute(XMLdocOut, XMLCurrNode, 'GoodsExAmt', FormatAmount(Round(lVatBase * gInvoiceExRate, 0.01)));
                        end;
                        ///////////////////
                        if (lVATPostingSetup.Export = false)
                            and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                            and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                            and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE) then
                            if (TmpVATAmountLine."VAT Id. Counter" > 0) then
                                repeat
                                    ///
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesInvHeader."VAT Bus. Posting Group");
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                                    if lVATPostingSetup.FindSet() then begin
                                        if (lVATPostingSetup.Export = false)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE) then begin
                                            ////
                                            lTotPriceWoVAT += Round(TmpVATAmountLine."VAT Base"/*"Line Amount"*/ * gInvoiceExRate, 0.01);
                                        end;
                                    end;
                                until TmpVATAmountLine.Next() = 0;
                        ////////////////////////////
                    end;
                until TmpVATAmountLine.Next() = 0;
            AddAttribute(XMLdocOut, XMLCurrNode, 'TotPriceWoVAT', FormatAmount(Round(/*SalesInvHeader.Amount * gInvoiceExRate*/lTotPriceWoVAT, 0.01)));
            AddAttribute(XMLdocOut, XMLCurrNode, 'TotVATAmt', FormatAmount(Round((SalesInvHeader."Amount Including VAT" - SalesInvHeader.Amount) * gInvoiceExRate, 0.01)));
            AddAttribute(XMLdocOut, XMLCurrNode, 'TotPrice', FormatAmount(Round(SalesInvHeader."Amount Including VAT" * gInvoiceExRate, 0.01)));
            lUserSet.Get(UserId());
            AddAttribute(XMLdocOut, XMLCurrNode, 'OperatorCode', lUserSet."Operator Code");
            AddAttribute(XMLdocOut, XMLCurrNode, 'BusinUnitCode', lEISetup."Business Unit Code");
            AddAttribute(XMLdocOut, XMLCurrNode, 'SoftCode', lEISetup."Soft Code");
            SalesInvHeader.CalcFields("Amount Including VAT");
            if not ((lCompInfo."VAT Registration No." = '') or (SalesInvHeader."No." = '') or (lEISetup."Soft Code" = '') or (lEISetup."TCR Code" = '')) then begin
                lIIC_IICSign := FiscIICGen.IICGenerator().GenerateIICSignature(lEISetup."VAT Registration No." + '|'
                                                               + Format(FiscIIcGen.IIcGenerator().DateTimeFormat(CurrentDateTime)) + '|'
                                                               + SalesInvHeader."No." + '|'
                                                               + lEISetup."Business Unit Code" + '|'
                                                               + lEISetup."TCR Code" + '|'
                                                               + lEISetup."Soft Code" + '|'
                                                               + Format(SalesInvHeader."Amount Including VAT"),
                                                            lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
            end;
            if (lIIC_IICSign = '') then
                Error(ErrorTxt021);
            gInvoice_IIC := CopyStr(lIIC_IICSign, 1, StrPos(lIIC_IICSign, '|') - 1);
            gInvoice_IIC_Signature := CopyStr(lIIC_IICSign, StrPos(lIIC_IICSign, '|') + 1);
            SalesInvHeader.Validate(SalesInvHeader.NSLF, gInvoice_IIC);
            SalesInvHeader.Validate(SalesInvHeader."IIC Signature", gInvoice_IIC_Signature);
            AddAttribute(XMLdocOut, XMLCurrNode, 'IIC', gInvoice_IIC);
            AddAttribute(XMLdocOut, XMLCurrNode, 'IICSignature', SalesInvHeader."IIC Signature");
            AddAttribute(XMLdocOut, XMLCurrNode, 'IsReverseCharge', FormatBoolean(SalesInvHeader."Is Reversed"));
            AddAttribute(XMLdocOut, XMLCurrNode, 'PayDeadline', FormatDateTime(SalesInvHeader."Due Date"));
            if (SalesInvHeader."Is E-Invoice") then begin
                AddAttribute(XMLdocOut, XMLCurrNode, 'IsEinvoice', FormatBoolean(SalesInvHeader."Is E-Invoice"));
            end;
            //<Corrective> 
            if SalesInvHeader."Corrective/Is Bad Debt Invoice" = SalesInvHeader."Corrective/Is Bad Debt Invoice"::"Is Corrective" then begin
                // if (SalesInvHeader."Is Corrective" = true) then begin
                AddElement(XMLCurrNode, 'CorrectiveInv', '', '', XMLNewChild);
                if SalesInvHeader."Correc. Inv Type" <> SalesInvHeader."Correc. Inv Type"::" " then begin
                    AddAttribute(XMLdocOut, XMLNewChild, 'IICRef', Format(SalesInvHeader."Inv IIC Refs"));//"Corrective IIC Ref"));
                    AddAttribute(XMLdocOut, XMLNewChild, 'Type', Format(SalesInvHeader."Correc. Inv Type"));
                    lSalesInvHeader.SetRange(NSLF, SalesInvHeader."Inv IIC Refs");//"Corrective IIC Ref");
                    if lSalesInvHeader.FindSet() then begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IssueDateTime', lSalesInvHeader."Fiscalization Date");
                    end;
                end;
            end;
            //<SumInvIICRefs> 
            if (SalesInvHeader."Is Summary" = true) then begin
                AddElement(XMLCurrNode, 'SumInvIICRefs', '', '', XMLNewChild);
                XMLCurrNode := XMLNewChild;
                lSalesInvHeader.Reset();
                lSalesInvHeader.SetFilter(NSLF, SalesInvHeader."Sum Inv IIC Refs");
                if lSalesInvHeader.FindSet() then
                    repeat
                        AddElement(XmlCurrNode, 'SumInvIICRef', '', '', XMLNewChild);
                        AddAttribute(XMLdocOut, XMLNewChild, 'IIC', lSalesInvHeader.NSLF);
                        AddAttribute(XMLdocOut, XMLNewChild, 'IssueDateTime', lSalesInvHeader."Fiscalization Date");
                    until lSalesInvHeader.Next() = 0;
                XMLCurrNode := XMLCurrNode.ParentNode;
            end;
            //</SumInvIICRefs>
            //<SupplyDateOrPeriod> 
            IF (SalesInvHeader."Start Date" <> 0D) AND (SalesInvHeader."End Date" <> 0D) then begin
                AddElement(XmlCurrNode, 'SupplyDateOrPeriod', '', '', XMLNewChild);
                AddAttribute(XMLdocOut, XMLNewChild, 'Start', FormatDateTime(SalesInvHeader."Start Date"));
                AddAttribute(XMLdocOut, XMLNewChild, 'End', FormatDateTime(SalesInvHeader."End Date"));
            end;
            // <PayMethods> 
            AddElement(XmlCurrNode, 'PayMethods', '', '', XMLNewChild);
            XMLCurrNode := XMLNewChild;
            AddElement(XmlCurrNode, 'PayMethod', '', '', XMLNewChild);
            if (SalesInvHeader."Payment Method Code" <> '') then begin
                lPayMethod.SetRange(lPayMethod.Code, SalesInvHeader."Payment Method Code");
                IF lPayMethod.FindSet() then begin
                    if (lPayMethod."EInvoice Payment Method Code" <> '') then begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'Type', lPayMethod."EInvoice Payment Method Code");
                        AddAttribute(XMLdocOut, XMLNewChild, 'Amt', FormatAmount(Round(SalesInvHeader."Amount Including VAT" * gInvoiceExRate, 0.01)));
                        if lPayMethod."EInvoice Payment Method Code" = 'COMPANY' THEN
                            AddAttribute(XMLdocOut, XMLNewChild, 'CompCard', Format(lPayMethod."Company Card No."))
                    end
                    else
                        Error(ErrorTxt022);
                end;
            end;
            XMLCurrNode := XMLCurrNode.ParentNode;
            // </PayMethods>
            //<Currency> 
            if (SalesInvHeader."Currency Code" <> '') and (SalesInvHeader."Currency Code" <> 'ALL') then begin
                AddElement(XmlCurrNode, 'Currency', '', '', XMLNewChild);
                AddAttribute(XMLdocOut, XMLNewChild, 'Code', SalesInvHeader."Currency Code");
                if SalesInvHeader."Currency Factor" <> 0 then begin
                    AddAttribute(XMLdocOut, XMLNewChild, 'ExRate', FormatAmount(Round(1 / SalesInvHeader."Currency Factor", 0.01)));
                end
                else begin
                    AddAttribute(XMLdocOut, XMLNewChild, 'ExRate', FormatAmount(0));
                end
            end;
            // <Seller> 
            AddElement(XmlCurrNode, 'Seller', '', '', XMLNewChild);
            AddAttribute(XMLdocOut, XMLNewChild, 'IDType', Format(lEISetup.IDType));
            case lEISetup.IDType of
                lEISetup.IDType::ID:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."Personal ID No."));
                    end;
                lEISetup.IDType::NUIS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."VAT Registration No."));
                    end;
                lEISetup.IDType::PASS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."Personal ID No."));
                    end;
                lEISetup.IDType::SOC:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."Personal ID No."));
                    end;
                lEISetup.IDType::VAT:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."VAT Registration No."));
                    end;
                lEISetup.IDType::TAX:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."TAX No."));
                    end;
            end;
            AddAttribute(XMLdocOut, XMLNewChild, 'Name', Format(lCompInfo.Name));
            AddAttribute(XMLdocOut, XMLNewChild, 'Address', Format(lCompInfo.Address));
            AddAttribute(XMLdocOut, XMLNewChild, 'Town', FormaT(lCompInfo.City));
            AddAttribute(XMLdocOut, XMLNewChild, 'Country', Format(lCompInfo."Country/Region Code"));
            // </Seller>
            // <Buyer>
            AddElement(XmlCurrNode, 'Buyer', '', '', XMLNewChild);
            Customer.SetRange(Customer."No.", SalesInvHeader."Sell-to Customer No.");
            if Customer.FindSet() then
                AddAttribute(XMLdocOut, XMLNewChild, 'IDType', Format(Customer.IDType));
            case Customer.IDType of
                Customer.IDType::ID:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Personal ID"));
                    end;
                Customer.IDType::NUIS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."VAT Registration No."));
                    end;
                Customer.IDType::PASS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Personal ID"));
                    end;
                Customer.IDType::SOC:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Personal ID"));
                    end;
                Customer.IDType::VAT:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."VAT Registration No."));
                    end;
                Customer.IDType::TAX:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Tax No."));
                    end;
            end;
            AddAttribute(XMLdocOut, XMLNewChild, 'Name', Format(SalesInvHeader."Sell-to Customer Name"));
            AddAttribute(XMLdocOut, XMLNewChild, 'Address', Format(SalesInvHeader."Sell-to Address"));
            AddAttribute(XMLdocOut, XMLNewChild, 'Town', Format(SalesInvHeader."Sell-to City"));
            AddAttribute(XMLdocOut, XMLNewChild, 'Country', Format(SalesInvHeader."Sell-to Country/Region Code"));
            // </buyer>
            //<Items>
            AddElement(XmlCurrNode, 'Items', '', '', XMLNewChild);
            XMLCurrNode := XMLNewChild;
            lLineNo := 1;
            SalesInvoiceLine.SetRange("Document No.", SalesInvHeader."No.");
            if SalesInvoiceLine.FindSet() then
                repeat
                    if SalesInvoiceLine.Type <> SalesInvoiceLine.Type::" " THEN begin
                        lAmountInclVat := Round(SalesInvoiceLine."Amount Including VAT" * gInvoiceExRate, 0.01);
                        lRoundValue := lRoundValue + lAmountInclVat;
                        IF (lLineNo = SalesInvoiceLine.Count()) Then begin
                            lHeaderAmntIncVat := Round((SalesInvHeader."Amount Including VAT" * gInvoiceExRate), 0.01);
                            if (lRoundValue <> lHeaderAmntIncVat) then begin
                                lDiferenca := lHeaderAmntIncVat - lRoundValue;
                                lAmountInclVat := lAmountInclVat + lDiferenca;
                            end;
                        end;
                        AddElement(XmlCurrNode, 'I', '', '', XMLNewChild);
                        AddAttribute(XMLdocOut, XMLNewChild, 'N', GetLineDescription(SalesInvoiceLine."No.", SalesInvoiceLine.Type));
                        AddAttribute(XMLdocOut, XMLNewChild, 'C', SalesInvoiceLine."No.");
                        if (SalesInvoiceLine."Unit of Measure" <> '') then
                            AddAttribute(XMLdocOut, XMLNewChild, 'U', SalesInvoiceLine."Unit of Measure")
                        else
                            AddAttribute(XMLdocOut, XMLNewChild, 'U', lEISetup."Default Unit of Measure");
                        AddAttribute(XMLdocOut, XMLNewChild, 'Q', Format(SalesInvoiceLine.Quantity));
                        if (SalesInvHeader."Prices Including VAT") THEN begin
                            lUPB := Round((SalesInvoiceLine."Unit Price" / (1 + SalesInvoiceLine."VAT %" / 100)) * gInvoiceExRate, 0.01);
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPB', FormatAmount(lUPB));
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPA', FormatAmount(Round(SalesInvoiceLine."Unit Price" * gInvoiceExRate, 0.01)));
                            PB := ((SalesInvoiceLine."Line Amount" / (1 + SalesInvoiceLine."VAT %" / 100)) - (SalesInvoiceLine."Inv. Discount Amount" / (1 + SalesInvoiceLine."VAT %" / 100))) * gInvoiceExRate;
                            AddAttribute(XMLdocOut, XMLNewChild, 'PB', FormatAmount(Round(PB, 0.01)));
                        end
                        else begin
                            lUPB := Round(SalesInvoiceLine."Unit Price" * gInvoiceExRate, 0.01);
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPB', FormatAmount(lUPB));
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPA', FormatAmount(Round((SalesInvoiceLine."Unit Price" * (1 + (SalesInvoiceLine."VAT %" / 100))) * gInvoiceExRate, 0.01)));
                            PB := (SalesInvoiceLine."Line Amount" - SalesInvoiceLine."Inv. Discount Amount") * gInvoiceExRate;
                            AddAttribute(XMLdocOut, XMLNewChild, 'PB', FormatAmount(Round(PB, 0.01)))
                        end;
                        if (SalesInvoiceLine."Line Discount %" <> 0) then begin
                            AddAttribute(XMLdocOut, XMLNewChild, 'R', FormatAmount(Round(SalesInvoiceLine."Line Discount %", 0.01)));
                            AddAttribute(XMLdocOut, XMLNewChild, 'RR', 'true');
                        end;
                        // if (SalesInvHeader."Is Reversed" = true) then //and not (lEISetup."Is Issuer In VAT" = true) and not (SalesInvHeader."Type of Self Iss" <> SalesInvHeader."Type of Self Iss"::" ") then
                        AddAttribute(XMLdocOut, XMLNewChild, 'VR', FormatAmount(SalesInvoiceLine."VAT %"));
                        TmpVATAmountLine.Reset();
                        TmpVATAmountLine.DeleteAll();
                        GetVATAmountLines_SalesInvoice(TmpVATAmountLine, SalesInvHeader."No.");
                        TmpVATAmountLine.Reset();
                        lExemptFromVat := '';
                        lVATPostingSetup.SETRANGE(lVATPostingSetup."VAT Identifier", SalesInvoiceLine."VAT Identifier");
                        if lVATPostingSetup.FindSet() then begin
                            if (lVATPostingSetup."VAT Excluded") or (lVATPostingSetup.Export) then
                                if lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::" " then begin
                                    lExemptFromVat := Format(lVATPostingSetup."VAT Exemption Type");
                                    AddAttribute(XMLdocOut, XMLNewChild, 'EX', Format(lExemptFromVat));
                                end;
                        end;

                        IF (SalesInvoiceLine."VAT %" <> 0) then  //and not (lEISetup."Is Issuer In VAT" = true) and not (SalesInvHeader."Type of Self Iss" <> SalesInvHeader."Type of Self Iss"::" ") then
                            AddAttribute(XMLdocOut, XMLNewChild, 'VA', FormatAmount(Round((SalesInvoiceLine."VAT Base Amount" * (SalesInvoiceLine."VAT %" / 100)) * gInvoiceExRate, 0.01)))
                        else
                            AddAttribute(XMLdocOut, XMLNewChild, 'VA', Format(0));
                        if (SalesInvoiceLine."Is Investment" = true) THEN
                            AddAttribute(XMLdocOut, XMLNewChild, 'IN', FormatBoolean(SalesInvoiceLine."Is Investment"));

                        AddAttribute(XMLdocOut, XMLNewChild, 'PA', FormatAmount(lAmountInclVat));
                        GetVATAmountLines_SalesInvoice(TmpVATAmountLine, SalesInvHeader."No.");
                        lLineNo := +1;
                    end;
                UNTIL SalesInvoiceLine.Next() = 0;
            XMLCurrNode := XMLCurrNode.ParentNode;
            //</Item>
            //<SameTaxes>
            TmpVATAmountLine.Reset();
            TmpVATAmountLine.DeleteAll();
            GetVATAmountLines_SalesInvoice(TmpVATAmountLine, SalesInvHeader."No.");
            TmpVATAmountLine.Reset();
            if TmpVATAmountLine.FindSet() then
                repeat
                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesInvHeader."VAT Bus. Posting Group");
                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                    if lVATPostingSetup.FindSet() then begin
                        if (lVATPostingSetup.Export = false)
                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE) then begin
                            if (TmpVATAmountLine."VAT Id. Counter" > 0) then begin
                                AddElement(XmlCurrNode, 'SameTaxes', '', '', XMLNewChild);
                                XMLCurrNode := XMLNewChild;
                                repeat
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesInvHeader."VAT Bus. Posting Group");
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                                    if lVATPostingSetup.FindSet() then begin
                                        if (lVATPostingSetup.Export = false)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE) then begin
                                            AddElement(XmlCurrNode, 'SameTax', '', '', XMLNewChild);
                                            AddAttribute(XMLdocOut, XMLNewChild, 'NumOfItems', Format(TmpVATAmountLine."VAT Id. Counter"));
                                            AddAttribute(XMLdocOut, XMLNewChild, 'PriceBefVAT', FormatAmount(Round(TmpVATAmountLine."VAT Base"/*"Line Amount"*/ * gInvoiceExRate, 0.01)));
                                            AddAttribute(XMLdocOut, XMLNewChild, 'VATRate', FormatAmount(Round(TmpVATAmountLine."VAT %", 0.01)));
                                            lExemptFromVat := '';
                                            if (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::" ") then begin
                                                lExemptFromVat := Format(lVATPostingSetup."VAT Exemption Type");
                                                AddAttribute(XMLdocOut, XMLNewChild, 'ExemptFromVAT', lExemptFromVat);
                                            end;
                                            AddAttribute(XMLdocOut, XMLNewChild, 'VATAmt', FormatAmount(Round(TmpVATAmountLine."VAT Amount" * gInvoiceExRate, 0.01)));
                                        end;
                                    end;
                                until TmpVATAmountLine.Next() = 0;
                                XMLCurrNode := XMLCurrNode.ParentNode;
                            end;
                        end;
                    end;
                until TmpVATAmountLine.Next() = 0;
            //</SAMETAXES>
            //<Fees>
            lSalesInvoiceLine.Reset();
            lSalesInvoiceLine.SetRange("Document No.", SalesInvHeader."No.");
            SalesInvoiceLine.SetRange("Document No.", SalesInvHeader."No.");
            SalesInvoiceLine.SetFilter("Package Type", '<>%1', SalesInvoiceLine."Package Type"::" ");
            IF SalesInvoiceLine.FindSet() then begin
                AddElement(XmlCurrNode, 'Fees', '', '', XMLNewChild);
                XMLCurrNode := XMLNewChild;
                if lSalesInvoiceLine.FindSet() then
                    repeat
                        lSalesInvoiceLine.Mark(true);
                    until lSalesInvoiceLine.Next() = 0;
                repeat
                    lSalesInvoiceLine.SetRange("Package Type", SalesInvoiceLine."Package Type");
                    lSalesInvoiceLine.MarkedOnly(true);
                    if lSalesInvoiceLine.FindSet() then
                        repeat
                            lFeeAmount += lSalesInvoiceLine."Amount Including VAT" * gInvoiceExRate;
                            lSalesInvoiceLine.Mark(false);
                        until lSalesInvoiceLine.Next() = 0;
                    if lFeeAmount <> 0 then begin
                        AddElement(XmlCurrNode, 'Fee', '', '', XMLNewChild);
                        AddAttribute(XMLdocOut, XMLNewChild, 'Type', Format(lSalesInvoiceLine."Package Type"));
                        AddAttribute(XMLdocOut, XMLNewChild, 'Amt', FormatAmount(Round(lFeeAmount, 0.01)));
                    end;
                    lFeeAmount := 0;
                until SalesInvoiceLine.Next() = 0;
                XMLCurrNode := XMLCurrNode.ParentNode;//<Fee/>
            end;
            XMLCurrNode := XMLCurrNode.ParentNode;//<Fees/>
        END;
        SalesInvHeader.Validate(SalesInvHeader."TCR Id", lEISetup."TCR Id");
        // Export XML
        FormatNameDate := FormatDate("lDataFiskalizmi");
        BareName := FormatNameDate + '_' + CompanyInfo_eInv."TCR Code" + '_' + SalesInvHeader.NSLF;
        IF pFilePath <> '' THEN
            FileNameEdoc := GetFileName(pFilePath)
        ELSE
            FileNameEdoc := BareName + '_Request' + '.xml';
        SoapFileNameEdoc := 'SOAP_' + FileNameEdoc;
        SalesInvHeader.Validate(SalesInvHeader."Invoice File Name", BareName);
        IF CompanyInfo_eInv."File Path Sales" <> '' THEN begin
            gFilePathAndName := CompanyInfo_eInv."File Path Sales" + FileNameEdoc;
            gSoapFilePathAndName := CompanyInfo_eInv."File Path Sales" + SoapFileNameEdoc;
        end
        ELSE begin
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
            gSoapFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + SoapFileNameEdoc;
        end;

        gEnvironmentURL := CompanyInfo_eInv."Environment URL";
        gRegInvoiceReqURL := CompanyInfo_eInv."Register Invoice Request URL";
        FileNameEdocResponse := BareName + lEISetup."Response File suffixes";
        gSalesResponseFilePathAndName := CompanyInfo_eInv."Sales Response File Path" + FileNameEdocResponse;

        //save and download Simple file 
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        XMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
        //save and download SOAP file 
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        XMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + SoapFileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gSoapFilePathAndName, TRUE);
        //save and download response file 
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        XMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEDocResponse, true);
        RBMgt.CopyServerFile(TmpServerFile, gSalesResponseFilePathAndName, true);

        //therritet procedura per nenshkrimin e xml
        SignGen.SignatureGenerator().GenerateSignature(gSoapFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //therritet .Net per krijimin e trupit te SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gSoapFilePathAndName);
        if lEISetup."FE Activated" then begin
            IF SalesInvHeader."FE Deactivate" = false THEN begin
                //therritet .Net per komunikim me tatimet
                WebService.WebService_Connection().SendData(gSoapFilePathAndName, gEnvironmentURL, gRegInvoiceReqURL, gSalesResponseFilePathAndName);
                //therritet procedura per Leximin e NIVF
                lNIVF := ReadXml.ReadXML().ReadXMLNIVF(gSalesResponseFilePathAndName);
                if lNIVF = '' then
                    Message(MessageTxt012)
                else begin
                    SalesInvHeader.Validate(SalesInvHeader.NIVF, lNIVF);
                    Message(MessageTxt011);
                end;
                if (SalesInvHeader.NIVF <> '') and (SalesInvHeader."Is E-Invoice") then begin
                    Create_UBL_EInvoice(SalesInvHeader);
                    Create_EInvoiceRequest(gDocType::Invoice, SalesInvHeader, lSalesCRMemo, gUblInvoiceBase64);
                end;
            end
            else
                Message(MessageTxt010);
        end
        else
            Message(MessageTxt010);
        SalesInvHeader.Modify();
    end;

    procedure Create_SalesCrMemo(var
                                     SalesCMHeader: Record 114;
                                     XMLExport: Boolean;
                                     pFilePath: Text);
    var
        SalesCMLine: Record "Sales Cr.Memo Line";
        TmpVATAmountLine: Record "VAT Amount Line" temporary;
        lVATPostingSetup: Record "VAT Posting Setup";
        lCompInfo: Record "Company Information";
        lEISetup: Record "Company Setup -  e-Invoice";
        lUserSet: Record "User Setup";
        lPayMethod: Record "Payment Method";
        lSalesCMLine: Record "Sales Cr.Memo Line";
        NoSeriesMgt: Codeunit NoSeriesManagement;
        lSalesInvHeader: Record "Sales Invoice Header";
        FileNameEdoc: Text[1024];
        FilePathEdoc: Text[1024];
        SubTotal: Decimal;
        RetainAmt: Decimal;
        TmpServerFile: Text[1024];
        lformatTrassmis: Text[10];
        //SS>
        lUPB: decimal;
        lIIC_IICSign: Text[650];
        lUuid: Text[38];
        lDataFiskalizmi: Text[65];
        lNIVF: Text;
        lLineNo: Decimal;
        lAmountInclVat: Decimal;
        lDiferenca: Decimal;
        lRoundValue: Decimal;
        lExemptFromVat: Text;
        lFeeAmount: Decimal;
        FileNameEdocResponse: Text;
        SoapFileNameEdoc: Text;
        lVatBase: Decimal;
        lHeaderAmtInclVAT: Decimal;
        PB: Decimal;
        lTotPriceWoVAT: Decimal;
    begin
        lCompInfo.GET();
        lEISetup.Get();
        GetCompanyInfo_eInv;
        GetCustomer(SalesCMHeader."Bill-to Customer No.");
        SalesCMHeader.TESTFIELD("No.");
        CalcSalesCrMemoLineTotal(SalesCMLine, SubTotal, RetainAmt, SalesCMHeader."No.");
        // Export := TRUE;
        //InitXML;
        InitXMLNew(lformatTrassmis);
        WITH SalesCMHeader DO BEGIN
            SalesCMHeader.CALCFIELDS(Amount, "Amount Including VAT", "Invoice Discount Amount");
            gCRMemoExRate := 1;
            if (SalesCMHeader."Currency Code" <> '') and (SalesCMHeader."Currency Code" <> 'ALL') then begin
                if SalesCMHeader."Currency Factor" <> 0 then
                    gCRMemoExRate := round((1 / SalesCMHeader."Currency Factor"), 0.01)
                else
                    gCRMemoExRate := 1;
            end;
            // <Header>
            AddElement(XMLCurrNode, 'Header', '', '', XMLNewChild);
            lUuid := CreateUUID();
            lDataFiskalizmi := FiscIICGen.IIcGenerator().DateTimeFormat(CurrentDateTime);
            SalesCMHeader.Validate("Fiscalization Date", lDataFiskalizmi);
            SalesCMHeader.Validate(SalesCMHeader.UUID, lUuid);
            AddAttribute(XMLdocOut, XMLNewChild, 'SendDateTime', Format(SalesCMHeader."Fiscalization Date"));
            AddAttribute(XMLdocOut, XMLNewChild, 'UUID', lUuid);
            //<invoice>
            AddElement(XMLCurrNode, 'Invoice', '', '', XMLNewChild);
            XMLCurrNode := XMLNewChild;
            AddAttribute(XMLdocOut, XMLCurrNode, 'TypeOfInv', Format(SalesCMHeader."Invoice Type"));
            IF (SalesCMHeader."Type of Self Iss" <> SalesCMHeader."Type of Self Iss"::" ") THEN
                AddAttribute(XMLdocOut, XMLCurrNode, 'TypeOfSelfIss', Format(SalesCMHeader."Type of Self Iss"));
            AddAttribute(XMLdocOut, XMLCurrNode, 'IsSimplifiedInv', FormatBoolean(SalesCMHeader."Is Simplified Inv"));
            AddAttribute(XMLdocOut, XMLCurrNode, 'IssueDateTime', Format(SalesCMHeader."Fiscalization Date"));
            //
            if lEISetup."FE Activated" then
                if SalesCMHeader."FE Deactivate" = false then begin
                    gNrFatTatimore := NoSeriesMgt.GetNextNo(lEISetup."Credit Memo No. Series.", WORKDATE, TRUE);

                    if (SalesCMHeader."Invoice Type" = SalesCMHeader."Invoice Type"::CASH) then
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', gNrFatTatimore + '/' + Format(Date2DMY(Today, 3)) + '/' + lEISetup."TCR Code")
                    else
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', gNrFatTatimore + '/' + Format(Date2DMY(Today, 3)));
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvOrdNum', Format(gNrFatTatimore));
                    SalesCMHeader.Validate(SalesCMHeader."Fiscalised invoice number", gNrFatTatimore);
                end
                else begin
                    if (SalesCMHeader."Invoice Type" = SalesCMHeader."Invoice Type"::CASH) then
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesCMHeader."No." + '/' + Format(Date2DMY(Today, 3)) + '/' + lEISetup."TCR Code")
                    else
                        AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesCMHeader."No." + '/' + Format(Date2DMY(Today, 3)));
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvOrdNum', Format(SalesCMHeader."No."));
                end
            else begin
                if (SalesCMHeader."Invoice Type" = SalesCMHeader."Invoice Type"::CASH) then
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesCMHeader."No." + '/' + Format(Date2DMY(Today, 3)) + '/' + lEISetup."TCR Code")
                else
                    AddAttribute(XMLdocOut, XMLCurrNode, 'InvNum', SalesCMHeader."No." + '/' + Format(Date2DMY(Today, 3)));
                AddAttribute(XMLdocOut, XMLCurrNode, 'InvOrdNum', Format(SalesCMHeader."No."));
            end;
            //

            if SalesCMHeader."Invoice Type" = SalesCMHeader."Invoice Type"::CASH then
                AddAttribute(XMLdocOut, XMLCurrNode, 'TCRCode', lEISetup."TCR Code");
            AddAttribute(XMLdocOut, XMLCurrNode, 'IsIssuerInVAT', FormatBoolean(CompanyInfo_eInv."Is Issuer In VAT"));

            TmpVATAmountLine.Reset();
            TmpVATAmountLine.DeleteAll();
            GetVATAmountLines_SalesCM(TmpVATAmountLine, SalesCMHeader."No.");
            TmpVATAmountLine.RESET;
            if TmpVATAmountLine.FindSet() then
                repeat
                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesCMHeader."VAT Bus. Posting Group");
                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                    if lVATPostingSetup.FindSet() then begin
                        lTotPriceWoVAT := 0;
                        if (lVATPostingSetup."VAT Exemption Type" = lVATPostingSetup."VAT Exemption Type"::TAX_FREE) THEN begin
                            lVatBase += TmpVATAmountLine."VAT Base";
                            lTotPriceWoVAT := Round(lVatBase * gCRMemoExRate, 0.01);
                            AddAttribute(XMLdocOut, XMLCurrNode, 'TaxFreeAmt', FormatAmount(Round(-1 * lVatBase * gCRMemoExRate, 0.01)));
                        end;
                        if (lVATPostingSetup.Export = true) then begin
                            lVatBase += TmpVATAmountLine."VAT Base";
                            lTotPriceWoVAT := (Round(lVatBase * gCRMemoExRate, 0.01));
                            AddAttribute(XMLdocOut, XMLCurrNode, 'GoodsExAmt', FormatAmount(Round(-1 * lVatBase * gCRMemoExRate, 0.01)));
                        end;
                        ///////////////////
                        if (lVATPostingSetup.Export = false)
                                and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                                              and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                                                and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE)
                                            then
                            if (TmpVATAmountLine."VAT Id. Counter" > 0) then
                                repeat
                                    ///
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesCMHeader."VAT Bus. Posting Group");
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                                    if lVATPostingSetup.FindSet() then begin
                                        if (lVATPostingSetup.Export = false)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE) then begin

                                            ////
                                            lTotPriceWoVAT += Round(TmpVATAmountLine."VAT Base"/*"Line Amount"*/ * gCRMemoExRate, 0.01);
                                        end;
                                    end;
                                //
                                // lTotPriceWoVAT += Round(TmpVATAmountLine."VAT Base"/*"Line Amount"*/ * gCRMemoExRate, 0.01);
                                until TmpVATAmountLine.Next() = 0;
                        ////////////////////////////
                    end;
                until TmpVATAmountLine.Next() = 0;

            AddAttribute(XMLdocOut, XMLCurrNode, 'TotPriceWoVAT', FormatAmount(Round(-1 * /*SalesCMHeader."Amount" * gCRMemoExRate*/lTotPriceWoVAT, 0.01)));
            AddAttribute(XMLdocOut, XMLCurrNode, 'TotVATAmt', FormatAmount(Round((-1 * (SalesCMHeader."Amount Including VAT" - SalesCMHeader.Amount)) * gCRMemoExRate, 0.01)));
            AddAttribute(XMLdocOut, XMLCurrNode, 'TotPrice', FormatAmount(Round(-1 * SalesCMHeader."Amount Including VAT" * gCRMemoExRate, 0.01)));
            lUserSet.Get(UserId());
            AddAttribute(XMLdocOut, XMLCurrNode, 'OperatorCode', lUserSet."Operator Code");
            AddAttribute(XMLdocOut, XMLCurrNode, 'BusinUnitCode', lEISetup."Business Unit Code");
            AddAttribute(XMLdocOut, XMLCurrNode, 'SoftCode', lEISetup."Soft Code");

            SalesCMHeader.CalcFields("Amount Including VAT");
            if not ((lCompInfo."VAT Registration No." = '') or (SalesCMHeader."No." = '') or
                     (lEISetup."Soft Code" = '') or (lEISetup."TCR Code" = '')) then begin
                lIIC_IICSign := FiscIICGen.IICGenerator().GenerateIICSignature(lEISetup."VAT Registration No." + '|'
                                                                                         + Format(FiscIIcGen.IIcGenerator().DateTimeFormat(CurrentDateTime)) + '|'
                                                                                         + SalesCMHeader."No." + '|'
                                                                                         + CompanyInfo_eInv."Business Unit Code" + '|'
                                                                                         + lEISetup."TCR Code" + '|'
                                                                                         + lEISetup."Soft Code" + '|'
                                                                                         + Format(SalesCMHeader."Amount Including VAT"),
                                                                                       lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
            end;
            if (lIIC_IICSign = '') then
                Error(ErrorTxt021);
            gCRMemo_IIC := CopyStr(lIIC_IICSign, 1, StrPos(lIIC_IICSign, '|') - 1);
            gCRMemo_IIC_Signature := CopyStr(lIIC_IICSign, StrPos(lIIC_IICSign, '|') + 1);
            SalesCMHeader.Validate(SalesCMHeader.NSLF, gCRMemo_IIC);
            SalesCMHeader.Validate(SalesCMHeader."IIC Signature", gCRMemo_IIC_Signature);
            AddAttribute(XMLdocOut, XMLCurrNode, 'IIC', gCRMemo_IIC);
            AddAttribute(XMLdocOut, XMLCurrNode, 'IICSignature', SalesCMHeader."IIC Signature");
            AddAttribute(XMLdocOut, XMLCurrNode, 'IsReverseCharge', FormatBoolean(SalesCMHeader."Is Reversed"));
            AddAttribute(XMLdocOut, XMLCurrNode, 'PayDeadline', FormatDateTime(SalesCMHeader."Due Date"));
            if SalesCMHeader."Is E-Invoice" then begin
                AddAttribute(XMLdocOut, XMLCurrNode, 'IsEinvoice', FormatBoolean(SalesCMHeader."Is E-Invoice"));
            end;
            //<corrective> 
            if SalesCMHeader."Corrective/Is Bad Debt Invoice" = SalesCMHeader."Corrective/Is Bad Debt Invoice"::"Is Corrective" then begin
                AddElement(XMLCurrNode, 'CorrectiveInv', '', '', XMLNewChild);
                if SalesCMHeader."Correc. Inv Type" <> SalesCMHeader."Correc. Inv Type"::" " then begin
                    AddAttribute(XMLdocOut, XMLNewChild, 'IICRef', Format(SalesCMHeader."Inv IIC Refs"));
                    AddAttribute(XMLdocOut, XMLNewChild, 'Type', Format(SalesCMHeader."Correc. Inv Type"));
                    lSalesInvHeader.SetRange(lSalesInvHeader.NSLF, SalesCMHeader."Inv IIC Refs");
                    if lSalesInvHeader.FindFirst() then begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IssueDateTime', lSalesInvHeader."Fiscalization Date");
                    end;
                end;
            end;
            //<BadDebtInv>                    
            if SalesCMHeader."Corrective/Is Bad Debt Invoice" = SalesCMHeader."Corrective/Is Bad Debt Invoice"::"Is Bad Debt Invoice" then begin
                AddElement(XMLCurrNode, 'BadDebtInv', '', '', XMLNewChild);
                AddAttribute(XMLdocOut, XMLNewChild, 'IICRef', Format(SalesCMHeader."Inv IIC Refs"));
                lSalesInvHeader.SetRange(lSalesInvHeader.NSLF, SalesCMHeader."Inv IIC Refs");
                if lSalesInvHeader.FindFirst() then
                    AddAttribute(XMLdocOut, XMLNewChild, 'IssueDateTime', lSalesInvHeader."Fiscalization Date");
            end;
            //<SumInvIICRefs>
            if (SalesCMHeader."Is Summary" = true) then begin
                AddElement(XMLCurrNode, 'SumInvIICRefs', '', '', XMLNewChild);
                XMLCurrNode := XMLNewChild;
                lSalesInvHeader.Reset();
                lSalesInvHeader.SetFilter(lSalesInvHeader.NSLF, SalesCMHeader."Sum Inv IIC Refs");
                if lSalesInvHeader.FindSet() then
                    repeat
                        AddElement(XmlCurrNode, 'SumInvIICRef', '', '', XMLNewChild);
                        AddAttribute(XMLdocOut, XMLNewChild, 'IIC', lSalesInvHeader.NSLF);
                        AddAttribute(XMLdocOut, XMLNewChild, 'IssueDateTime', lSalesInvHeader."Fiscalization Date");
                    until lSalesInvHeader.Next() = 0;
                XMLCurrNode := XMLCurrNode.ParentNode;
            end;
            //</SumInvIICRefs>  
            //<SupplyDateOrPeriod>
            if (SalesCMHeader."Start Date" <> 0D) and (SalesCMHeader."End Date" <> 0D) then begin
                AddElement(XmlCurrNode, 'SupplyDateOrPeriod', '', '', XMLNewChild);
                AddAttribute(XMLdocOut, XMLNewChild, 'Start', FormatDateTime(SalesCMHeader."Start Date"));
                AddAttribute(XMLdocOut, XMLNewChild, 'End', FormatDateTime(SalesCMHeader."End Date"));
            end;
            //<PayMethods>
            AddElement(XmlCurrNode, 'PayMethods', '', '', XMLNewChild);
            XMLCurrNode := XMLNewChild;
            AddElement(XmlCurrNode, 'PayMethod', '', '', XMLNewChild);
            if (SalesCMHeader."Payment Method Code" <> '') then begin
                lPayMethod.SetRange(lPayMethod.Code, SalesCMHeader."Payment Method Code");
                if lPayMethod.FindSet() then begin
                    if (lPayMethod."EInvoice Payment Method Code" <> '') then begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'Type', lPayMethod."EInvoice Payment Method Code");
                        AddAttribute(XMLdocOut, XMLNewChild, 'Amt', FormatAmount(Round((-1 * SalesCMHeader."Amount Including VAT") * gCRMemoExRate, 0.01)));
                        if lPayMethod."EInvoice Payment Method Code" = 'COMPANY' then
                            AddAttribute(XMLdocOut, XMLNewChild, 'CompCard', Format(lPayMethod."Company Card No."))
                    end
                    else
                        Error(ErrorTxt020);
                end;
            end;
            XMLCurrNode := XMLCurrNode.ParentNode;
            //</PayMethods>
            //<Currency> 
            if (SalesCMHeader."Currency Code" <> '') and (SalesCMHeader."Currency Code" <> 'ALL') then begin
                AddElement(XmlCurrNode, 'Currency', '', '', XMLNewChild);
                AddAttribute(XMLdocOut, XMLNewChild, 'Code', SalesCMHeader."Currency Code");
                if SalesCMHeader."Currency Factor" <> 0 then
                    AddAttribute(XMLdocOut, XMLNewChild, 'ExRate', FormatAmount(Round(1 / SalesCMHeader."Currency Factor", 0.01)))
                else
                    AddAttribute(XMLdocOut, XMLNewChild, 'ExRate', FormatAmount(0));
            end;
            // <Seller>
            AddElement(XmlCurrNode, 'Seller', '', '', XMLNewChild);
            AddAttribute(XMLdocOut, XMLNewChild, 'IDType', Format(lEISetup.IDType));
            case CompanyInfo_eInv.IDType of
                CompanyInfo_eInv.IDType::ID:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."Personal ID No."));
                    end;
                CompanyInfo_eInv.IDType::NUIS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."VAT Registration No."));
                    end;
                CompanyInfo_eInv.IDType::PASS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."Personal ID No."));
                    end;
                CompanyInfo_eInv.IDType::SOC:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."Personal ID No."));
                    end;
                CompanyInfo_eInv.IDType::VAT:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."VAT Registration No."));
                    end;
                CompanyInfo_eInv.IDType::TAX:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(lEISetup."TAX No."));
                    end;
            end;
            AddAttribute(XMLdocOut, XMLNewChild, 'Name', Format(lCompInfo.Name));
            AddAttribute(XMLdocOut, XMLNewChild, 'Address', Format(lCompInfo.Address));
            AddAttribute(XMLdocOut, XMLNewChild, 'Town', Format(lCompInfo.City));
            AddAttribute(XMLdocOut, XMLNewChild, 'Country', Format(lCompInfo."Country/Region Code"));
            // </Seller>
            // <Buyer>
            AddElement(XmlCurrNode, 'Buyer', '', '', XMLNewChild);
            Customer.SetRange(Customer."No.", SalesCMHeader."Sell-to Customer No.");
            if Customer.FindSet() then
                AddAttribute(XMLdocOut, XMLNewChild, 'IDType', Format(Customer.IDType));
            case Customer.IDType of
                Customer.IDType::ID:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Personal ID"));
                    end;
                Customer.IDType::NUIS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."VAT Registration No."));
                    end;
                Customer.IDType::PASS:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Personal ID"));
                    end;
                Customer.IDType::SOC:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Personal ID"));
                    end;
                Customer.IDType::VAT:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."VAT Registration No."));
                    end;
                Customer.IDType::TAX:
                    begin
                        AddAttribute(XMLdocOut, XMLNewChild, 'IDNum', Format(Customer."Tax No."));
                    end;
            end;
            AddAttribute(XMLdocOut, XMLNewChild, 'Name', Format(SalesCMHeader."Sell-to Customer Name"));
            AddAttribute(XMLdocOut, XMLNewChild, 'Address', Format(SalesCMHeader."Sell-to Address"));
            AddAttribute(XMLdocOut, XMLNewChild, 'Town', Format(SalesCMHeader."Sell-to City"));
            AddAttribute(XMLdocOut, XMLNewChild, 'Country', Format(SalesCMHeader."Sell-to Country/Region Code"));
            // </buyer>
            //<Items>
            AddElement(XmlCurrNode, 'Items', '', '', XMLNewChild);
            XMLCurrNode := XMLNewChild;
            lLineNo := 1;
            if SalesCMLine.FindSet() then
                repeat
                    IF SalesCMLine.Type <> SalesCMLine.Type::" " then begin
                        lAmountInclVat := Round(SalesCMLine."Amount Including VAT" * gCRMemoExRate, 0.01);
                        lRoundValue := lRoundValue + lAmountInclVat;
                        IF (lLineNo = SalesCMLine.Count()) Then begin
                            lHeaderAmtInclVAT := Round((SalesCMHeader."Amount Including VAT" * gCRMemoExRate), 0.01);
                            if (lRoundValue <> lHeaderAmtInclVAT) then begin
                                lDiferenca := lHeaderAmtInclVAT - lRoundValue;
                                lAmountInclVat := lAmountInclVat + lDiferenca;
                            end;
                        end;
                        AddElement(XmlCurrNode, 'I', '', '', XMLNewChild);
                        AddAttribute(XMLdocOut, XMLNewChild, 'N', GetLineDescription(SalesCMLine."No.", SalesCMLine.Type));
                        AddAttribute(XMLdocOut, XMLNewChild, 'C', SalesCMLine."No.");
                        IF (SalesCMLine."Unit of Measure" <> '') THEN
                            AddAttribute(XMLdocOut, XMLNewChild, 'U', SalesCMLine."Unit of Measure")
                        ELSE
                            AddAttribute(XMLdocOut, XMLNewChild, 'U', lEISetup."Default Unit of Measure");
                        AddAttribute(XMLdocOut, XMLNewChild, 'Q', Format(-1 * SalesCMLine.Quantity));
                        if (SalesCMHeader."Prices Including VAT" = true) then begin
                            lUPB := Round((SalesCMLine."Unit Price" / (1 + SalesCMLine."VAT %" / 100)) * gCRMemoExRate, 0.01);
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPB', FormatAmount(lUPB));
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPA', FormatAmount(Round(SalesCMLine."Unit Price" * gCRMemoExRate, 0.01)));
                            PB := ((SalesCMLine."Line Amount" / (1 + SalesCMLine."VAT %" / 100)) - (SalesCMLine."Inv. Discount Amount" / (1 + SalesCMLine."VAT %" / 100))) * gCRMemoExRate;
                            AddAttribute(XMLdocOut, XMLNewChild, 'PB', FormatAmount(Round((-1 * PB), 0.01)))
                        end
                        else begin
                            lUPB := Round(SalesCMLine."Unit Price" * gCRMemoExRate, 0.01);
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPB', FormatAmount(lUPB));
                            AddAttribute(XMLdocOut, XMLNewChild, 'UPA', FormatAmount(Round(SalesCMLine."Unit Price" * (1 + (SalesCMLine."VAT %" / 100)) * gCRMemoExRate, 0.01)));
                            if SalesCMHeader."Invoice Discount Amount" = 0 then
                                AddAttribute(XMLdocOut, XMLNewChild, 'PB', FormatAmount(Round(-1 * SalesCMLine."Line Amount" * gCRMemoExRate, 0.01)))
                            else begin
                                PB := (SalesCMLine."Line Amount" - SalesCMLine."Inv. Discount Amount") * gCRMemoExRate;
                                AddAttribute(XMLdocOut, XMLNewChild, 'PB', FormatAmount(Round((-1 * PB), 0.01)))
                            end;
                        end;
                        if (SalesCMLine."Line Discount %" <> 0) then begin
                            AddAttribute(XMLdocOut, XMLNewChild, 'R', FormatAmount(Round(SalesCMLine."Line Discount %", 0.01)));
                            AddAttribute(XMLdocOut, XMLNewChild, 'RR', 'true');
                        end;
                        // if (SalesCMHeader."Is Reversed" = true) then//and not (lEISetup."Is Issuer In VAT" = true) and not (SalesCMHeader."Type of Self Iss" <> SalesCMHeader."Type of Self Iss"::" ") then
                        AddAttribute(XMLdocOut, XMLNewChild, 'VR', FormatAmount(Round((SalesCMLine."VAT %"), 0.01)));
                        TmpVATAmountLine.Reset();
                        TmpVATAmountLine.DeleteAll();
                        GetVATAmountLines_SalesCM(TmpVATAmountLine, SalesCMLine."No.");
                        TmpVATAmountLine.Reset();
                        lExemptFromVat := '';
                        lVATPostingSetup.SETRANGE(lVATPostingSetup."VAT Identifier", SalesCMLine."VAT Identifier");
                        if lVATPostingSetup.FindSet() then begin
                            if (lVATPostingSetup."VAT Excluded") or (lVATPostingSetup.Export) then
                                if lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::" " then begin
                                    lExemptFromVat := Format(lVATPostingSetup."VAT Exemption Type");
                                    AddAttribute(XMLdocOut, XMLNewChild, 'EX', Format(lExemptFromVat));
                                end;
                        end;
                        if (SalesCMLine."VAT %" <> 0) then //and not (lEISetup."Is Issuer In VAT" = true) and not (SalesCMHeader."Type of Self Iss" <> SalesCMHeader."Type of Self Iss"::" ") then
                            AddAttribute(XMLdocOut, XMLNewChild, 'VA', FormatAmount(Round((-1 * (SalesCMLine."VAT Base Amount" * (SalesCmLine."VAT %" / 100))) * gCRMemoExRate, 0.01)))
                        else
                            AddAttribute(XMLdocOut, XMLNewChild, 'VA', FormatAmount(0));
                        if (SalesCMLine."Is Investment" = true) THEN begin
                            AddAttribute(XMLdocOut, XMLNewChild, 'IN', FormatBoolean(SalesCMLine."Is Investment"));
                        end;
                        AddAttribute(XMLdocOut, XMLNewChild, 'PA', FormatAmount(-1 * lAmountInclVat));
                        GetVATAmountLines_SalesCM(TmpVATAmountLine, SalesCMHeader."No.");
                        lLineNo := +1;
                    end;
                until SalesCMLine.Next() = 0;
            XMLCurrNode := XMLCurrNode.ParentNode;
            //</Item>
            //<SameTaxes>
            TmpVATAmountLine.Reset();
            TmpVATAmountLine.DeleteAll();
            GetVATAmountLines_SalesCM(TmpVATAmountLine, SalesCMHeader."No.");
            TmpVATAmountLine.Reset();
            if TmpVatAmountLine.FindSet() then
                repeat
                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesCMHeader."VAT Bus. Posting Group");
                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                    if lVATPostingSetup.FindSet() then begin
                        if (lVATPostingSetup.Export = false)
                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE) then begin
                            if TmpVATAmountLine."VAT Id. Counter" > 0 then begin
                                AddElement(XmlCurrNode, 'SameTaxes', '', '', XMLNewChild);
                                XMLCurrNode := XMLNewChild;
                                repeat
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesCMHeader."VAT Bus. Posting Group");
                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", TmpVATAmountLine."VAT Identifier");
                                    if lVATPostingSetup.FindSet() then begin
                                        if (lVATPostingSetup.Export = false)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::EXPORT_OF_GOODS)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::MARGIN_SCHEME)
                                        and (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::TAX_FREE) then begin
                                            AddElement(XmlCurrNode, 'SameTax', '', '', XMLNewChild);
                                            AddAttribute(XMLdocOut, XMLNewChild, 'NumOfItems', Format(TmpVATAmountLine."VAT Id. Counter"));
                                            AddAttribute(XMLdocOut, XMLNewChild, 'PriceBefVAT', FormatAmount(Round(-1 * TmpVATAmountLine."VAT Base"/*"Line Amount"*/ * gCRMemoExRate, 0.01)));
                                            AddAttribute(XMLdocOut, XMLNewChild, 'VATRate', FormatAmount(Round(TmpVATAmountLine."VAT %", 0.01)));
                                            lExemptFromVat := '';
                                            if (lVATPostingSetup."VAT Exemption Type" <> lVATPostingSetup."VAT Exemption Type"::" ") then begin
                                                lExemptFromVat := Format(lVATPostingSetup."VAT Exemption Type");
                                                AddAttribute(XMLdocOut, XMLNewChild, 'ExemptFromVAT', lExemptFromVat);
                                            end;
                                            AddAttribute(XMLdocOut, XMLNewChild, 'VATAmt', FormatAmount(Round(-1 * TmpVATAmountLine."VAT Amount" * gCRMemoExRate, 0.01)));
                                        end;
                                    end;
                                until TmpVATAmountLine.Next() = 0;
                                XMLCurrNode := XMLCurrNode.ParentNode;
                            end;
                        end;
                    end;
                until TmpVATAmountLine.Next() = 0;
            //</SameTaxes>
            //<Fees>
            lSalesCMLine.Reset();
            lSalesCMLine.SetRange("Document No.", SalesCMHeader."No.");
            SalesCMLine.SetRange("Document No.", SalesCMHeader."No.");
            SalesCMLine.SetFilter("Package Type", '<>%1', SalesCMLine."Package Type"::" ");
            if SalesCMLine.FindSet() then begin
                AddElement(XmlCurrNode, 'Fees', '', '', XMLNewChild);
                XMLCurrNode := XMLNewChild;
                if lSalesCMLine.FindSet() then
                    repeat
                        lSalesCMLine.Mark(true);
                    until lSalesCMLine.Next() = 0;
                repeat
                    lSalesCMLine.SetRange("Package Type", SalesCMLine."Package Type");
                    lSalesCMLine.MarkedOnly(true);
                    if lSalesCMLine.FindSet() then
                        repeat
                            lfeeAmount += lSalesCMLine."Amount Including VAT" * gCRMemoExRate;
                            lSalesCMLine.Mark(false);
                        until lSalesCMLine.Next() = 0;
                    if lFeeAmount <> 0 then begin
                        AddElement(XmlCurrNode, 'Fee', '', '', XMLNewChild);
                        AddAttribute(XMLdocOut, XMLNewChild, 'Type', Format(lSalesCMLine."Package Type"));
                        AddAttribute(XMLdocOut, XMLNewChild, 'Amt', FormatAmount(Round(-1 * lFeeAmount, 0.01)));
                    end;
                    lFeeAmount := 0;
                until SalesCMLine.Next() = 0;
                XMLCurrNode := XMLCurrNode.ParentNode;  //<Fee/>
            end;
            XMLCurrNode := XMLCurrNode.ParentNode; //<Fees/>
        END;

        Clear(SalesCMHeader."Invoice File Name");
        Clear(SalesCMHeader."E-Invoice File Name");
        Clear(SalesCMHeader."TCR Id");

        SalesCMHeader.Validate(SalesCMHeader."TCR Id", lEISetup."TCR Id");
        FormatNameDate := FormatDate("lDataFiskalizmi");
        BareName := FormatNameDate + '_' + lEISetup."TCR Code" + '_' + SalesCMHeader.NSlf;
        // Export XML
        IF pFilePath <> '' THEN
            FileNameEdoc := GetFileName(pFilePath)
        ELSE
            FileNameEdoc := BareName + '_Request' + '.xml';

        SoapFileNameEdoc := 'Soap_' + FileNameEdoc;
        SalesCMHeader.Validate(SalesCMHeader."Invoice File Name", BareName);
        IF CompanyInfo_eInv."File Path Sales" <> '' THEN begin
            gFilePathAndName := CompanyInfo_eInv."File Path Sales" + FileNameEdoc;
            gSoapFilePathAndName := CompanyInfo_eInv."File Path Sales" + SoapFileNameEdoc;
        end
        ELSE begin
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
            gSoapFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + SoapFileNameEdoc;
        end;
        gEnvironmentURL := CompanyInfo_eInv."Environment URL";
        gRegInvoiceReqURL := CompanyInfo_eInv."Register Invoice Request URL";
        FileNameEdocResponse := BareName + lEISetup."Response File suffixes";
        gSalesResponseFilePathAndName := CompanyInfo_eInv."Sales Response File Path" + FileNameEdocResponse;
        //save and download Simple file
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        XMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
        //save and download SOAP file
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        XMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + SoapFileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gSoapFilePathAndName, TRUE);
        //save and download Response file
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        XMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gSalesResponseFilePathAndName, TRUE);

        //Therritet .Net per shtimin e singature 
        SignGen.SignatureGenerator().GenerateSignature(gSoapFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //therritet .Net per krijimin e trupit te SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gSoapFilePathAndName);
        //therritet .Net per komunikim me tatimet
        WebService.WebService_Connection().SendData(gSoapFilePathAndName, gEnvironmentURL, gRegInvoiceReqURL, gSalesResponseFilePathAndName);
        if lEISetup."FE Activated" then begin
            if SalesCMHeader."FE Deactivate" = false then begin
                //therritet .Net per leximin e NIVF
                Clear(SalesCMHeader.NIVF);
                Clear(SalesCMHeader.EIC);
                lNIVF := ReadXml.ReadXML().ReadXMLNIVF(gSalesResponseFilePathAndName);
                if lNIVF = '' then
                    Message(MessageTxt012)
                else begin
                    Clear(SalesCMHeader.NIVF);
                    SalesCMHeader.Validate(SalesCMHeader.NIVF, lNIVF);
                    Message(MessageTxt011);
                end;
                if (SalesCMHeader.NIVF <> '') and (SalesCMHeader."Is E-Invoice") then begin
                    Create_UBL_ECreditMemo(SalesCMHeader);
                    Create_EInvoiceRequest(gDocType::"Credit Memo", lSalesInvHeader, SalesCMHeader, gUblCRMemoBase64);
                end;
            end
            else
                Message(MessageTxt010);
        end
        else
            Message(MessageTxt010);
        SalesCMHeader.Modify();
    end;

    procedure Device_Reg(TcrId: Text; var pEISetup: Record "Company Setup -  e-Invoice");
    var
        TCRDevice: Record "TCR Device";
        FileNameEdoc: Text[1024];
        SubTotal: Decimal;
        TmpServerFile: Text[1024];
        xsltTag: Text;
        lUuid: Text;
        TCRCode: Text[10];
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        FileNameEdocResponse: text;
        lSendingDate: text;
    begin
        pEISetup.Get();
        GetCompanyInfo_eInv;
        TCRDevice.GET(TcrId);

        IF ISNULL(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument;
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';

        lXMLdocOut.LoadXml := '<?xml version="1.0" encoding="UTF-8" ?> '
              + xsltTag + '<RegisterTCRRequest xmlns="https://eFiskalizimi.tatime.gov.al/FiscalizationService/schema" xmlns:ns2="http://www.w3.org/2000/09/xmldsig#" Id="Request" Version= "3">  </RegisterTCRRequest>';
        lUuid := CreateUUID();
        lXMLCurrNode := lXMLdocOut.DocumentElement;
        //<Header
        AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', FiscIICGen.IIcGenerator().DateTimeFormat(CurrentDateTime));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
        TCRDevice.validate(TCRDevice.UUID, lUuid);
        //</Header>
        //<TCR>
        AddElement(lXmlCurrNode, 'TCR', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'BusinUnitCode', TCRDevice."Business Unit Code");
        AddAttribute(lXMLdocOut, lXMLNewChild, 'IssuerNUIS', pEISetup."VAT Registration No.");
        AddAttribute(lXMLdocOut, lXMLNewChild, 'MaintainerCode', TCRDevice."Maintainer Code");
        AddAttribute(lXMLdocOut, lXMLNewChild, 'SoftCode', TCRDevice."Soft Code");
        AddAttribute(lXMLdocOut, lXMLNewChild, 'TCRIntID', TCRDevice."TCR Id");
        AddAttribute(lXMLdocOut, lXMLNewChild, 'ValidFrom', FormatDateTime(TCRDevice."Valid From"));
        if TCRDevice."Valid To" <> 0D then
            AddAttribute(lXMLdocOut, lXMLNewChild, 'ValidTo', FormatDateTime(TCRDevice."Valid To"));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'Type', Format(TCRDevice."TCR Type"));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        //</TCR>
        lSendingDate := FiscIICGen.IIcGenerator().DateTimeFormat(CurrentDateTime);
        FormatNameDate := FormatDate(lSendingDate);
        FileNameEdoc := FormatNameDate + '_' + pEISetup."VAT Registration No." + 'Request_.xml';
        IF pEISetup."Device Registration File Path" <> '' THEN
            gFilePathAndName := pEISetup."Device Registration File Path" + FileNameEdoc
        ELSE
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
        FileNameEdocResponse := FormatNameDate + pEISetup."Response File suffixes";
        gDevRegResponseFilePathAndName := pEISetup."Device Reg Response File Path " + FileNameEdocResponse;
        gRegTCRReqURL := CompanyInfo_eInv."Register TCR Request URL";
        gEnvironmentURL := CompanyInfo_eInv."Environment URL";

        //save and download request file
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
        //save and download response file
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gDevRegResponseFilePathAndName, TRUE);
        //Therritet .Net per shtimin e singature 
        SignGen.SignatureGenerator().GenerateSignature(gFilePathAndName, pEISetup."Security Certificate Path", pEISetup."Security Certificate pass key");
        //therritet .Net per krijimin e trupit te SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gFilePathAndName);
        //therritet .Net me parameter FilePath
        WebService.WebService_Connection().SendData(gFilePathAndName, gEnvironmentURL, gRegTCRReqURL, gDevRegResponseFilePathAndName);
        //therritet .Net per marrjen e TCRCode  pathi filet te pergjigjes 
        TCRCode := ReadXml.ReadXML().ReadXMLTCR(gDevRegResponseFilePathAndName);
        if (TCRCode <> '') then begin
            TCRDevice.Validate(TCRDevice."TCR Code", TCRCode);
            TCRDevice.Modify();
            Message(MessagexTxt015);
        end
        else
            Error(ErrorTxt019);
    end;

    procedure Cash_Reg(var pBankAccount: Record "Bank Account"; Var pGenJournalLine: Record "Gen. Journal Line"; var pBankAccountLedgerEntry: Record "Bank Account Ledger Entry"; pDocType: Option Invoice,"Credit Memo","Bank Account","Gen. Journal Line"; XMLExport: Boolean; pFilePath: Text);
    var
        lUserSet: Record "User Setup";
        FileNameEdoc: Text[1024];
        FilePathEdoc: Text[1024];
        TmpServerFile: Text[1024];
        xsltTag: Text;
        lUuid: Text[38];
        lEISetup: Record "Company Setup -  e-Invoice";
        lCompInfo: Record "Company Information";
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        lDataDeklarimit: Text[65];
        lFCDC: Text[36];
        FileNameEdocResponse: Text;
        SoapFileNameEdoc: Text;
        CashAmt: Decimal;
    begin
        lCompInfo.GET();
        lEISetup.Get();
        GetCompanyInfo_eInv;
        pBankAccount.CALCFIELDS("Balance (LCY)");

        IF ISNULL(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument;
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<?xml version="1.0" encoding="UTF-8"?>'
              + xsltTag + '<RegisterCashDepositRequest xmlns="https://eFiskalizimi.tatime.gov.al/FiscalizationService/schema" xmlns:ns2="http://www.w3.org/2000/09/xmldsig#" Id="Request" Version= "3"></RegisterCashDepositRequest>';
        lUuid := CreateUUID();
        lXMLCurrNode := lXMLdocOut.DocumentElement;

        if pDocType = pDocType::"Bank Account" then begin
            //<Header
            AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
            lDataDeklarimit := FiscIICGen.IIcGenerator().DateTimeFormat(CurrentDateTime);
            pBankAccount.Validate(pBankAccount."Change Date", lDataDeklarimit);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', Format(lDataDeklarimit));
            //</Header>
            //<CashDeposit>
            AddElement(lXmlCurrNode, 'CashDeposit', '', '', lXMLNewChild);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'ChangeDateTime', Format(pBankAccount."Change Date"));
            if (pBankAccount."Cash Register Operation" = pBankAccount."Cash Register Operation"::" ") then
                Error(ErrorTxt023)
            else
                AddAttribute(lXMLdocOut, lXMLNewChild, 'Operation', Format(pBankAccount."Cash Register Operation"));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'CashAmt', FormatAmount(Round(pBankAccount."Balance (LCY)", 0.01)));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'TCRCode', lEISetup."TCR Code");
            AddAttribute(lXMLdocOut, lXMLNewChild, 'IssuerNUIS', lEISetup."VAT Registration No.");
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            //</CashDeposit>
            pBankAccount.Validate(pBankAccount.UUID, lUuid);
            pBankAccount.Validate(pBankAccount."Declaration Date", Today);
            pBankAccount.Modify();
        end
        else begin
            // <Header
            AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
            lDataDeklarimit := FiscIICGen.IIcGenerator().DateTimeFormat(CurrentDateTime);
            pBankAccountLedgerEntry.Validate(pBankAccountLedgerEntry."Change Date", lDataDeklarimit);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', Format(lDataDeklarimit));
            // </Header>
            AddElement(lXmlCurrNode, 'CashDeposit', '', '', lXMLNewChild);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'ChangeDateTime', Format(lDataDeklarimit));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'Operation', Format(pGenJournalLine."Cash Register Operation"));
            if pGenJournalLine.Amount < 0 then
                CashAmt := -1 * pGenJournalLine.Amount
            else
                CashAmt := pGenJournalLine.Amount;
            AddAttribute(lXMLdocOut, lXMLNewChild, 'CashAmt', FormatAmount(Round(CashAmt, 0.01)));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'TCRCode', lEISetup."TCR Code");
            AddAttribute(lXMLdocOut, lXMLNewChild, 'IssuerNUIS', lEISetup."VAT Registration No.");
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            //</CashDeposit>
            pBankAccountLedgerEntry.Validate(pBankAccountLedgerEntry.UUID, lUuid);
            pBankAccountLedgerEntry.Validate(pBankAccountLedgerEntry."Cash Register Operation", pGenJournalLine."Cash Register Operation");
            pBankAccountLedgerEntry.Modify();
        end;

        FormatNameDate := FormatDate("lDataDeklarimit") + '_' + lEISetup."TCR Code";
        FileNameEdoc := FormatNameDate + '_deposit_request' + '.xml';
        SoapFileNameEdoc := 'Soap_' + FileNameEdoc;
        IF CompanyInfo_eInv."Cash Reg Request File Path" <> '' THEN begin
            gFilePathAndName := CompanyInfo_eInv."Cash Reg Request File Path" + FileNameEdoc;
            gSoapFilePathAndName := CompanyInfo_eInv."Cash Reg Request File Path" + SoapFileNameEdoc;
        end
        ELSE begin
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
            gSoapFilePathAndName := 'C:\Temp\XMLFiskalizimi' + SoapFileNameEdoc;
        end;
        FileNameEdocResponse := FormatNameDate + lEISetup."Response File suffixes";
        gCashRegResponseFilePathAndName := CompanyInfo_eInv."Cash Reg Response File Path" + FileNameEdocResponse;
        gRegCASHReqUrl := CompanyInfo_eInv."Register Cash Request URL";
        gEnvironmentURL := CompanyInfo_eInv."Environment URL";

        //save and download Simple File
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
        //save and download SOAP File
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + SoapFileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gSoapFilePathAndName, TRUE);
        //save and download Response
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gCashRegResponseFilePathAndName, TRUE);

        //Therritet .Net per shtimin e singature 
        SignGen.SignatureGenerator().GenerateSignature(gSoapFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //therritet .Net per krijimin e trupit te SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gSoapFilePathAndName);
        if lEISetup."FE Activated" then begin
            //therritet .Net per komunikimin me parameter FilePath
            WebService.WebService_Connection().SendData(gSoapFilePathAndName, gEnvironmentURL, gRegCASHReqUrl, gCashRegResponseFilePathAndName);
            lFCDC := ReadXml.ReadXML().ReadXMLFCDC(gCashRegResponseFilePathAndName);

            if pDocType = pDocType::"Bank Account" then begin
                if lFCDC = '' then begin
                    Clear(pBankAccount."Subseq Deliv Type");
                    Clear(pBankAccount.FCDC);
                    pBankAccount.Validate(pBankAccount."Invoice File Name", FileNameEdoc);
                    pBankAccount.Modify();
                    Message(ErrorTxt018);
                end
                else begin
                    Clear(pBankAccount."Subseq Deliv Type");
                    Clear(pBankAccount.FCDC);
                    pBankAccount.Validate(pBankAccount.FCDC, lFCDC);
                    pBankAccount.Validate(pBankAccount."Invoice File Name", FileNameEdoc);
                    Message(MessageTxt002);
                    pBankAccount.Modify();
                end;
            end
            else begin
                if lFCDC = '' then begin
                    pBankAccountLedgerEntry.Validate(pBankAccountLedgerEntry."Invoice File Name", FileNameEdoc);
                    pBankAccountLedgerEntry.Modify();
                    Message(ErrorTxt018);
                end
                else begin
                    pBankAccountLedgerEntry.Validate(pBankAccountLedgerEntry.FCDC, lFCDC);
                    pBankAccountLedgerEntry.Validate(pBankAccountLedgerEntry."Invoice File Name", FileNameEdoc);
                    pBankAccountLedgerEntry.Modify();
                    Message(MessageTxt002);
                end;
            end;
        end
        else
            if pDocType = pDocType::"Bank Account" then begin
                Clear(pBankAccount."Subseq Deliv Type");
                Clear(pBankAccount.FCDC);
                pBankAccount.Modify();
                Message(MessageTxt010);
            end
            else begin
                pBankAccountLedgerEntry.Validate(pBankAccountLedgerEntry."Invoice File Name", FileNameEdoc);
                pBankAccountLedgerEntry.Modify();
                Message(MessageTxt010);
            end;
    end;

    //FaturaShoqeruese
    procedure Create_CompanionInvoiceRequest(No: Code[20])
    var
        NoSeriesMgt: Codeunit NoSeriesManagement;
        lCompInfo: Record "Company Information";
        lEISetup: record "Company Setup -  e-Invoice";
        lUserSetup: Record "User Setup";
        TransferShptHeader: Record "Transfer Shipment Header";
        PostedTransferShptLine: Record "Transfer Shipment Line";
        ShippingAgent: Record "Shipping Agent";
        FileNameEdoc: Text[1024];
        FilePathEdoc: Text[1024];
        TmpServerFile: Text[1024];
        lWTNIC_WTNICSign: Text[650];
        lWTNIC: Text;
        lWTNIC_Signature: Text;
        lUuid: Text[38];
        lSendDateTime: Text;
        lNIVFSH: Text;
        FileNameEdocResponse: Text;
        SoapFileNameEdoc: Text;
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        xsltTag: Text;
        Item: Record Item;
        TotalValue: Decimal;
        ItemCounter: Decimal;
        DestinDateTime: Text;
        StartDateTime: Text;
    begin
        TransferShptHeader.GET(No);
        lCompInfo.Get();
        lEISetup.Get();
        GetCompanyInfo_eInv;
        lUserSetup.Get(UserId());
        // Export := TRUE;

        //InitXML;
        IF ISNULL(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument;
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<?xml version="1.0" encoding="UTF-8" ?> '
              + xsltTag + '<RegisterWTNRequest xmlns="https://eFiskalizimi.tatime.gov.al/FiscalizationService/schema" xmlns:ns2="http://www.w3.org/2000/09/xmldsig#" Id="Request" Version= "3">   </RegisterWTNRequest>';

        gNrFatTatimore := NoSeriesMgt.GetNextNo(lEISetup."Trans. Shipmment No. Series.", WORKDATE, TRUE);
        TransferShptHeader.Validate(TransferShptHeader."Fiscalised Invoice number", gNrFatTatimore);
        WITH TransferShptHeader DO BEGIN
            lUuid := CreateUUID();
            lXMLCurrNode := lXMLdocOut.DocumentElement;
            //<Header>
            AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
            lUuid := CreateUUID();
            lSendDateTime := FiscIICGen.IIcGenerator().DateTimeFormat(CurrentDateTime);
            TransferShptHeader.Validate(TransferShptHeader."Declaration Date", lSendDateTime);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', Format(lSendDateTime));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
            TransferShptHeader.Validate(TransferShptHeader.UUID, lUuid);
            //WTN
            AddElement(lXMLCurrNode, 'WTN', '', '', lXMLNewChild);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'OperatorCode', lUserSetup."Operator Code");
            AddAttribute(lXMLdocOut, lXMLNewChild, 'BusinUnitCode', lEISetup."Business Unit Code");
            AddAttribute(lXMLdocOut, lXMLNewChild, 'SoftCode', lEISetup."Soft Code");
            AddAttribute(lXMLdocOut, lXMLNewChild, 'Type', 'WTN');
            AddAttribute(lXMLdocOut, lXMLNewChild, 'Transaction', 'TRANSFER');
            AddAttribute(lXMLdocOut, lXMLNewChild, 'IssueDateTime', Format(lSendDateTime));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'WTNOrdNum', Format(gNrFatTatimore));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'WTNNum', Format(gNrFatTatimore + '/' + Format(Date2DMY(Today, 3))));
            PostedTransferShptLine.Reset();
            PostedTransferShptLine.SetRange(PostedTransferShptLine."Document No.", TransferShptHeader."No.");
            if PostedTransferShptLine.FindSet() then
                repeat
                    Item.Reset();
                    Item.SetRange(Item."No.", PostedTransferShptLine."Item No.");
                    if Item.FindSet() then begin
                        TotalValue := TotalValue + (item."Unit Cost" * PostedTransferShptLine.Quantity);
                        ItemCounter := ItemCounter + PostedTransferShptLine.Quantity;
                    end;
                until PostedTransferShptLine.Next() = 0;
            AddAttribute(lXMLdocOut, lXMLNewChild, 'ValueOfGoods', FormatAmount(Round(TotalValue, 0.01)));
            TransferShptHeader.Validate(TransferShptHeader."Total Amount", TotalValue);
            if ShippingAgent.GET(TransferShptHeader."Shipping Agent Code") then begin
                if ShippingAgent."Own Vehicle" then
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'VehOwnership', OVehOwnership)
                else
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'VehOwnership', ThVehOwnership);
                AddAttribute(lXMLdocOut, lXMLNewChild, 'VehPlates', ShippingAgent."Vehicle Plate No.");
            end;
            AddAttribute(lXMLdocOut, lXMLNewChild, 'StartPoint', Format(TransferShptHeader."Start Location Type"));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'StartAddr', Format(TransferShptHeader."Transfer-from Address"));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'StartCity', Format(TransferShptHeader."Transfer-from City"));
            StartDateTime := '';
            StartDateTime := Format(CreateDateTime(TransferShptHeader."Shipment Date", 0T), 0, '<Year4>-<Month,2>-<Day,2>') + 'T' + Format(CreateDateTime(TransferShptHeader."Shipment Date", System.Time), 0, '<Hours24,2>:<Minutes,2>:<Seconds,2>') + GetUTCOffset();
            // /* Format(CreateDateTime(TransferShptHeader."Shipment Date", 0T), 9)*/ + Format(CreateDateTime(TransferShptHeader."Shipment Date", System.Time), 0, '<Hours24,2>:<Minutes,2>:<Seconds,2>') + GetUTCOffset();
            StartDateTime := StartDateTime.Replace(' ', '0');
            AddAttribute(lXMLdocOut, lXMLNewChild, 'StartDateTime', Format(StartDateTime));
            TransferShptHeader.Validate(TransferShptHeader."Start Date Time", StartDateTime);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'DestinPoint', Format(TransferShptHeader."Destination Location Type"));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'DestinAddr', Format(TransferShptHeader."Transfer-to Address"));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'DestinCity', Format(TransferShptHeader."Transfer-to City"));
            DestinDateTime := '';
            DestinDateTime := Format(CreateDateTime(TransferShptHeader."Receipt Date", 0T), 0, '<Year4>-<Month,2>-<Day,2>') + 'T' + Format(CreateDateTime(TransferShptHeader."Shipment Date", System.Time), 0, '<Hours24,2>:<Minutes,2>:<Seconds,2>') + GetUTCOffset();
            // Format(CreateDateTime(TransferShptHeader."Receipt Date", 0T), 11, 9) + Format(CreateDateTime(TransferShptHeader."Receipt Date", System.Time), 0, '<Hours24,2>:<Minutes,2>:<Seconds,2>') + GetUTCOffset();
            DestinDateTime := DestinDateTime.Replace(' ', '0');
            AddAttribute(lXMLdocOut, lXMLNewChild, 'DestinDateTime', Format(DestinDateTime));
            TransferShptHeader.Validate(TransferShptHeader."Dest.Date Time", DestinDateTime);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'IsGoodsFlammable', FormatBoolean(TransferShptHeader.isGoodsFlammable));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'IsEscortRequired', FormatBoolean(TransferShptHeader.isEscortRequired));
            // AddAttribute(lXMLdocOut, lXMLNewChild, 'PackType', 'PackType???'); //lloji paktimit??
            // AddAttribute(lXMLdocOut, lXMLNewChild, 'PackNum', 'PackNum???');//nr paketave??
            AddAttribute(lXMLdocOut, lXMLNewChild, 'ItemsNum', Format(ItemCounter));//numri i artikujve të mallrave.
            if not ((lCompInfo."VAT Registration No." = '') or (TransferShptHeader."No." = '') or (lEISetup."Soft Code" = '') or (lEISetup."Business Unit Code" = '')) then begin
                lWTNIC_WTNICSign := FiscIICGen.IICGenerator().GenerateIICSignature(lEISetup."VAT Registration No." + '|'
                                                               + Format(FiscIIcGen.IIcGenerator().DateTimeFormat(CurrentDateTime)) + '|'
                                                               + TransferShptHeader."No." + '|'
                                                               + lEISetup."Business Unit Code" + '|'
                                                               + lEISetup."Soft Code",
                                                            lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
            end;
            if (lWTNIC_WTNICSign = '') then
                Error(ErrorTxt024);
            lWTNIC := CopyStr(lWTNIC_WTNICSign, 1, StrPos(lWTNIC_WTNICSign, '|') - 1);
            TransferShptHeader.Validate(TransferShptHeader.NSLFSH, lWTNIC);
            lWTNIC_Signature := CopyStr(lWTNIC_WTNICSign, StrPos(lWTNIC_WTNICSign, '|') + 1);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'WTNIC', lWTNIC);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'WTNICSignature', lWTNIC_Signature);
            lXMLCurrNode := lXMLNewChild;
            //Issuer
            AddElement(lXMLCurrNode, 'Issuer', '', '', lXMLNewChild);
            AddAttribute(lXMLdocOut, lXMLNewChild, 'NUIS', Format(lEISetup."VAT Registration No."));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'Name', Format(lCompInfo.Name));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'Address', Format(lCompInfo.Address));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'Town', Format(lCompInfo.City));
            //Carrier
            AddElement(lXMLCurrNode, 'Carrier', '', '', lXMLNewChild);
            if ShippingAgent.GET(TransferShptHeader."Shipping Agent Code") then begin
                AddAttribute(lXMLdocOut, lXMLNewChild, 'IDType', Format(ShippingAgent.IDType));
                if ShippingAgent.IDType = ShippingAgent.IDType::ID then
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'IDNum', Format(ShippingAgent."Personal ID"))
                else
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'IDNum', Format(ShippingAgent."Vat Registration No."));
                AddAttribute(lXMLdocOut, lXMLNewChild, 'Name', Format(ShippingAgent.Name));
                AddAttribute(lXMLdocOut, lXMLNewChild, 'Address', Format(ShippingAgent.Address));
                AddAttribute(lXMLdocOut, lXMLNewChild, 'Town', Format(ShippingAgent.City));
            end;
            AddElement(lXMLCurrNode, 'Items', '', '', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            PostedTransferShptLine.Reset();
            PostedTransferShptLine.SetRange(PostedTransferShptLine."Document No.", TransferShptHeader."No.");
            if PostedTransferShptLine.FindSet() then
                repeat
                    if PostedTransferShptLine."Item No." <> '' then begin
                        AddElement(lXMLCurrNode, 'I', '', '', lXMLNewChild);
                        AddAttribute(lXMLdocOut, lXMLNewChild, 'N', Format(PostedTransferShptLine.Description));
                        AddAttribute(lXMLdocOut, lXMLNewChild, 'C', Format(PostedTransferShptLine."Item No."));
                        if PostedTransferShptLine."Unit of Measure" <> '' then
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'U', Format(PostedTransferShptLine."Unit of Measure Code"))
                        else
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'U', Format(lEISetup."Default Unit of Measure"));
                        AddAttribute(lXMLdocOut, lXMLNewChild, 'Q', Format(PostedTransferShptLine.Quantity));
                    end;
                until PostedTransferShptLine.Next() = 0;
        end;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        TransferShptHeader.Validate(TransferShptHeader."TCR Id", lEISetup."TCR Id");
        // Export XML
        FormatNameDate := FormatDate(lSendDateTime);
        BareName := 'Fatura-shoqeruese_' + FormatNameDate + '_' + lEISetup."TCR Code" + '_' + TransferShptHeader.NSLFSH;
        FileNameEdoc := BareName + '.xml';
        TransferShptHeader.Validate("Invoice File Name", FileNameEdoc);
        SoapFileNameEdoc := 'SOAP_' + FileNameEdoc;
        IF CompanyInfo_eInv."Companion Inv. Req. File Path" <> '' THEN begin
            gFilePathAndName := CompanyInfo_eInv."Companion Inv. Req. File Path" + FileNameEdoc;
            gSoapFilePathAndName := CompanyInfo_eInv."Companion Inv. Req. File Path" + SoapFileNameEdoc;
        end
        ELSE begin
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
            gSoapFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + SoapFileNameEdoc;
        end;

        gEnvironmentURL := CompanyInfo_eInv."Environment URL";
        gCompanionReqURL := CompanyInfo_eInv."Companion Inv. Request URL";
        FileNameEdocResponse := BareName + lEISetup."Response File suffixes";
        gCompanionResponseFilePathAndName := CompanyInfo_eInv."Companion Inv. Resp. File Path" + FileNameEdocResponse;

        //save and download Simple file 
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
        //save and download SOAP file 
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + SoapFileNameEdoc, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gSoapFilePathAndName, TRUE);
        //save and download Response file 
        TmpServerFile := RBMgt.ServerTempFileName('xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
        RBMgt.CopyServerFile(TmpServerFile, gCompanionResponseFilePathAndName, TRUE);
        //therritet procedura per nenshkrimin e xml
        SignGen.SignatureGenerator().GenerateSignature(gSoapFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        // therritet .Net per krijimin e trupit te SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gSoapFilePathAndName);
        //therritet .Net per komunikim me tatimet
        if lEISetup."FE Activated" then begin
            WebService.WebService_Connection().SendData(gSoapFilePathAndName, gEnvironmentURL, gRegInvoiceReqURL, gCompanionResponseFilePathAndName);
            //therritet procedura per Leximin e NIVF
            lNIVFSH := ReadXml.ReadXML().ReadXMLNIVFSH(gCompanionResponseFilePathAndName);
            if lNIVFSH = '' THEN
                Message(MessagexTxt013)
            else begin
                TransferShptHeader.Validate(TransferShptHeader.NIVFSH, lNIVFSH);
                Message(MessagexTxt014);
            end;
            TransferShptHeader.Modify();
        end
        else
            MEssage(MessageTxt010);
    end;


    procedure Create_UBL_EInvoice(var SalesInvHeader: Record "Sales Invoice Header")
    Var
        lSalesInvHeader: Record "Sales Invoice Header";
        lSalesInvoiceLine: Record "Sales Invoice Line";
        lEiSetup: Record "Company Setup -  e-Invoice";
        lcompInfo: Record "Company Information";
        lCustomer: Record Customer;
        lPaymentMethod: Record "Payment Method";
        lBankAcc: Record "Bank Account";
        lUserSetup: Record "User Setup";
        lCountryRegion: Record "Country/Region";
        lTmpVATAmountLine: Record "VAT Amount Line" temporary;
        lVATPostingSetup: Record "VAT Posting Setup";
        lDiscReason: Record "Discount Reason";
        lVatClause: Record "VAT Clause";
        lUnitOfMeas: Record "Unit of Measure";
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        xsltTag: Text;
        lUuid: Text[38];
        FileNameEdoc: Text;
        TmpServerFile: Text[1024];
        lcompanyCountryCode: Text;
        lExemptFromVat: Text;
        lInvoiceDiscAmount: Decimal;
        lInvoiceLineAmount: Decimal;
        lFile: File;
        lMemoryStream: DotNet mscorlib_System_IO_MemoryStream;
        lBytes: DotNet mscorlib_System_Array;
        lConvert: DotNet mscorlib_System_Convert;
        lInStream: InStream;
        TaxExcAmt: Decimal;
        lLineExtAmt: Decimal;
        lLineExtAmtBt131: Decimal;
        lLineExtAmtBt131Total, lLineNo : Decimal;
        lAmountBT92, lAmountBT92Total : Decimal;
        lTaxAmount: Decimal;
    begin
        GetCompanyInfo_eInv;
        lSalesInvHeader.CalcFields(Amount, "Amount Including VAT");
        lCompInfo.Get();
        lEISetup.Get();
        lUserSetup.Get(UserId());
        SalesInvHeader.CalcFields(Amount, "Amount Including VAT", "Invoice Discount Amount");

        if IsNull(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument();
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<?xml version="1.0" encoding="UTF-8"?>' + xsltTag +
                               '<Invoice xmlns="urn:oasis:names:specification:ubl:schema:xsd:Invoice-2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:cac="urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc="urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></Invoice>';
        lXMLCurrNode := lXMLdocOut.DocumentElement;
        luuid := CreateUUID();

        AddElement(lXMLCurrNode, 'cac:UBLExtensions', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'xmlns', Format('urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2'));
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'UBLExtension', '', '', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'ExtensionContent', '', '', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'SignatureInformation', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'xmlns', Format('urn:oasis:names:specification:ubl:schema:xsd:SignatureAggregateComponents-2'));
        lXMLCurrNode := lXMLNewChild;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;

        AddElement(lXMLCurrNode, 'cbc:UBLVersionID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
        lXMLNewChild.InnerText(Format('2.1'));
        AddElement(lXMLCurrNode, 'cbc:CustomizationID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-24  
        if lEiSetup."Identifier Specifications" <> '' then
            lXMLNewChild.InnerText(Format(lEiSetup."Identifier Specifications"))
        else
            lXMLNewChild.InnerText(Format('urn:cen.eu:en16931:2017'));
        // BG-2 
        if (SalesInvHeader."Invoice Business Process" <> SalesInvHeader."Invoice Business Process"::" ") then begin
            AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23
            if (SalesInvHeader."Invoice Business Process" <> lEiSetup."Invoice Business Process") then begin
                // AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23  
                lXMLNewChild.InnerText(Format(SalesInvHeader."Invoice Business Process"));
            end
            else begin
                // AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23 
                lXMLNewChild.InnerText(Format(lEiSetup."Invoice Business Process"));
            end;
        end
        else begin
            AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23 
            lXMLNewChild.InnerText(Format(lEiSetup."Invoice Business Process"));
        end;

        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-1
        lXMLNewChild.InnerText(SalesInvHeader."Fiscalised Invoice number" + '/' + Format(Date2DMY(Today, 3)));
        AddElement(lXMLCurrNode, 'cbc:IssueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-2
        lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Document Date"));
        AddElement(lXMLCurrNode, 'cbc:DueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-9
        lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Due Date"));
        if (SalesInvHeader."E-Invoice Type Code" <> SalesInvHeader."E-Invoice Type Code"::" ") then begin
            AddElement(lXMLCurrNode, 'cbc:InvoiceTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3
            if (SalesInvHeader."E-Invoice Type Code" <> lEiSetup."E-Invoice Type Code") then begin
                // AddElement(lXMLCurrNode, 'cbc:InvoiceTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3 
                lXMLNewChild.InnerText(Format(SalesInvHeader."E-Invoice Type Code"));
            end
            else begin
                // AddElement(lXMLCurrNode, 'cbc:InvoiceTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3 
                lXMLNewChild.InnerText(Format(lEiSetup."E-Invoice Type Code"));
            end;
        end
        else begin
            AddElement(lXMLCurrNode, 'cbc:InvoiceTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3 
            lXMLNewChild.InnerText(Format(lEiSetup."E-Invoice Type Code"));
        end;
        // BG-1
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('IssueDateTime=' + SalesInvHeader."Fiscalization Date" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('OperatorCode=' + lUserSetup."Operator Code" + '#AAI#'));
        // AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        // lXMLNewChild.InnerText(Format('BusinessUnitcode=' + lEiSetup."Business Unit Code" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('SoftwareCode=' + lEiSetup."Soft Code" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('IIC=' + SalesInvHeader.NSLF + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-22
        lXMLNewChild.InnerText(Format('FIC=' + SalesInvHeader.NIVF + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('IICSignature=' + SalesInvHeader."IIC Signature" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('BusinessUnitcode=' + lEiSetup."Business Unit Code" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('IsBadDebtInv=false#AAI#'));
        if (SalesInvHeader."Currency Code" <> 'ALL') and (SalesInvHeader."Currency Factor" <> 0) then begin
            AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
            lXMLNewChild.InnerText(Format('CurrencyExchangeRate=' + FormatAmount(gInvoiceExRate) + '#AAI#'));
        end;
        if (SalesInvHeader."Work Description".HasValue) then begin
            AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
            lXMLNewChild.InnerText(Format(SalesInvHeader.GetWorkDescription()));
        end;
        if lEiSetup."VAT Date Effective" <> 0D then begin
            AddElement(lXMLCurrNode, 'cbc:TaxPointDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-7. 
            lXMLNewChild.InnerText(FormatDateTime(lEiSetup."VAT Date Effective"));
        end ELSE BEGIN
            AddElement(lXMLCurrNode, 'cbc:TaxPointDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-7
            lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Posting Date"));
        END;

        AddElement(lXMLCurrNode, 'cbc:DocumentCurrencyCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-5
        lXMLNewChild.InnerText(Format(SalesInvHeader."Currency Code"));
        AddElement(lXMLCurrNode, 'cbc:TaxCurrencyCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-6 
        lXMLNewChild.InnerText(Format(SalesInvHeader."Currency Code"));
        if SalesInvHeader."Your Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cbc:BuyerReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-10.
            lXMLNewChild.InnerText(Format(SalesInvHeader."Your Reference"));
        end;
        //BG-14  Periudha faturimit. 
        IF (SalesInvHeader."Start Date" <> 0D) AND (SalesInvHeader."End Date" <> 0D) then begin
            AddElement(lXMLCurrNode, 'cac:InvoicePeriod', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:StartDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-73 
            lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Start Date"));
            AddElement(lXMLCurrNode, 'cbc:EndDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);  //BT-74
            lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."End Date"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            // end
            // else begin
            //     AddElement(lXMLCurrNode, 'cac:InvoicePeriod', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            //     lXMLCurrNode := lXMLNewChild;
            //     AddElement(lXMLCurrNode, 'cbc:StartDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-73 
            //     lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Posting Date"));
            //     AddElement(lXMLCurrNode, 'cbc:EndDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);  //BT-74
            //     lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Posting Date"));
            //     lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if (SalesInvHeader."Order Reference" <> '') and (SalesInvHeader."Sales Order Reference" <> '') then begin
            AddElement(lXMLCurrNode, 'cac:OrderReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-13.
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-13 
            lXMLNewChild.InnerText(Format(SalesInvHeader."Order Reference"));
            AddElement(lXMLCurrNode, 'cbc:SalesOrderID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-14.
            lXMLNewChild.InnerText(Format(SalesInvHeader."Sales Order Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;

        // BG-3  Referencë faturës së mëparshme per corrective Invoice Kur një Fature mëparshme është korrigjuar 
        if SalesInvHeader."Corrective/Is Bad Debt Invoice" = SalesInvHeader."Corrective/Is Bad Debt Invoice"::"Is Corrective" then begin
            AddElement(lXMLCurrNode, 'cac:BillingReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-25 
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cac:InvoiceDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-25
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesInvHeader."Inv IIC Refs"));
            lSalesInvHeader.SetRange(NSLF, SalesInvHeader."Inv IIC Refs");
            if lSalesInvHeader.FindSet() then begin
                AddElement(lXMLCurrNode, 'cbc:IssueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-26
                lXMLNewChild.InnerText(FormatDateTime(lSalesInvHeader."Posting Date"));
            end;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;

        // Referencë faturës së mëparshme per summary Invoice
        if (SalesInvHeader."Is Summary") then begin
            lSalesInvHeader.Reset();
            lSalesInvHeader.SetFilter(NSLF, SalesInvHeader."Sum Inv IIC Refs");
            IF lSalesInvHeader.FindSet() then
                repeat
                    AddElement(lXMLCurrNode, 'cac:BillingReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-25 
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cac:InvoiceDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-25
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                    lXMLNewChild.InnerText(Format(lSalesInvHeader.NSLF));
                    AddElement(lXMLCurrNode, 'cbc:IssueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-26
                    lXMLNewChild.InnerText(FormatDateTime(lSalesInvHeader."Posting Date"));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                until lSalesInvHeader.Next() = 0;
        end;
        if SalesInvHeader."Despatch Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:DespatchDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-16
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesInvHeader."Despatch Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesInvHeader."Receipt Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:ReceiptDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-15
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-15  
            lXMLNewChild.InnerText(Format(SalesInvHeader."Receipt Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesInvHeader."Originator Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:OriginatorDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-17
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesInvHeader."Originator Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesInvHeader."Contract Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:ContractDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-12.
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesInvHeader."Contract Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesInvHeader."Additional Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:AdditionalDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-18
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesInvHeader."Additional Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesInvHeader."Project Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:ProjectReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-11
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-11.  
            lXMLNewChild.InnerText(Format(SalesInvHeader."Project Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;

        // BG-4 
        AddElement(lXMLCurrNode, 'cac:AccountingSupplierParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cac:Party', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:EndpointID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-34  //??
        lXMLNewChild.InnerText(Format(lEiSetup."VAT Registration No."));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', Format('0088'));
        AddElement(lXMLCurrNode, 'cac:PartyIdentification', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//??
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-29  
        case
            lEiSetup.IDType OF
            lEiSetup.IDType::Id:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."Personal ID No."));
                end;
            lEiSetup.IDType::NUIS:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."VAT Registration No."));
                end;
            lEiSetup.IDType::PASS:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."Personal ID No."));
                end;
            lEiSetup.IDType::SOC:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."Personal ID No."));
                end;
            lEiSetup.IDType::VAT:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."VAT Registration No."));
                end;
            lEiSetup.IDType::TAX:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."TAX No."));
                end;
        end;
        AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', Format('0088'));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-28
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-28  
        lXMLNewChild.InnerText(Format(lcompInfo."Name"));
        lXMLCurrNode := lXMLCurrNode.ParentNode;

        // BG-5 Adresa Postare e shitesit
        AddElement(lXMLCurrNode, 'cac:PostalAddress', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-35
        lXMLNewChild.InnerText(Format(lcompInfo.Address));
        if lcompInfo."Address 2" <> '' then begin
            AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-36
            lXMLNewChild.InnerText(Format(lcompInfo."Address 2"));
        end;
        AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-37
        lXMLNewChild.InnerText(Format(lcompInfo.City));
        AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-38
        lXMLNewChild.InnerText(Format(lcompInfo."Post Code"));
        AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-39
        lXMLNewChild.InnerText(Format(lcompInfo.City));
        AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-40
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);  //BT-40
        lcompanyCountryCode := GetIsoCode(lcompInfo."Country/Region Code");
        lXMLNewChild.InnerText(Format(lcompanyCountryCode));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'cac:PartyTaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//bt-31  
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-31 
        lXMLNewChild.InnerText(Format(lcompanyCountryCode + ':' + lEiSetup."VAT Registration No."));
        AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
        lXMLNewChild.InnerText(Format('VAT'));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'cac:PartyLegalEntity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-27
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:RegistrationName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-27 
        lXMLNewChild.InnerText(Format(lcompInfo.Name));
        AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-30 
        lXMLNewChild.InnerText(Format(lcompInfo."VAT Registration No."));
        AddElement(lXMLCurrNode, 'cbc:CompanyLegalForm', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-33 
        lXMLNewChild.InnerText(Format(lEiSetup."Equity of ShareHolders"));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-6  Kontakti shitesit. 
        AddElement(lXMLCurrNode, 'cac:Contact', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-41 
        lXMLNewChild.InnerText(Format(lcompInfo."Contact Person"));
        AddElement(lXMLCurrNode, 'cbc:Telephone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-42
        lXMLNewChild.InnerText(Format(lcompInfo."Phone No."));
        AddElement(lXMLCurrNode, 'cbc:ElectronicMail', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-43
        lXMLNewChild.InnerText(Format(lcompInfo."E-Mail"));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-7  Bleresi.
        lCustomer.SetRange(lCustomer."No.", SalesInvHeader."Sell-to Customer No.");
        if lCustomer.FindSet() then begin
            AddElement(lXMLCurrNode, 'cac:AccountingCustomerParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cac:Party', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:EndpointID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-49
            lXMLNewChild.InnerText(Format(lCustomer."VAT Registration No."));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', '0088');
            AddElement(lXMLCurrNode, 'cac:PartyIdentification', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-46
            case
            lCustomer.IDType of
                lCustomer.IDType::ID:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Personal ID"));
                    end;
                lCustomer.IdType::NUIS:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."VAT Registration No."));
                    end;
                lCustomer.IDType::PASS:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Personal ID"));
                    end;
                lCustomer.IDType::SOC:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Personal ID"));
                    end;
                lCustomer.IDType::VAT:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Tax No."));
                    end;
                lCustomer.IdType::TAX:
                    begin
                        lXMLCurrNode.InnerText(Format(lCustomer."Tax No."))
                    end;
            end;
            AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', Format('0088'));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(lCustomer.Name));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            //BG-8 Adresa postare e blerësi.
            AddElement(lXMLCurrNode, 'cac:PostalAddress', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-50
            lXMLNewChild.InnerText(Format(lCustomer.Address));
            if lCustomer."Address 2" <> '' then begin
                AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-51
                lXMLNewChild.InnerText(Format(lCustomer."Address 2"));
            end;
            AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-52
            lXMLNewChild.InnerText(Format(lCustomer.City));
            AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-53
            lXMLNewChild.InnerText(Format(lCustomer."Post Code"));
            AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-54
            lXMLNewChild.InnerText(Format(lCustomer.City));
            AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//bt-55
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-55
            lcompanyCountryCode := GetIsoCode(lCompInfo."Country/Region Code");
            lXMLNewChild.InnerText(Format(lcompanyCountryCode));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            AddElement(lXMLCurrNode, 'cac:PartyTaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//bt-48
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-48 
            lXMLNewChild.InnerText(Format(lcompanyCountryCode + ':' + lcustomer."VAT Registration No."));
            AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//bt-48
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format('VAT'));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            AddElement(lXMLCurrNode, 'cac:PartyLegalEntity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:RegistrationName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-44
            lXMLNewChild.InnerText(Format(lCustomer.Name));
            AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-47  
            lXMLNewChild.InnerText(Format(lCustomer."VAT Registration No."));
            lXMLCurrNode := lXMLCurrNode.ParentNode;// BT-45 
            // BG-9  KONTAKT I BLERËSIT. 
            AddElement(lXMLCurrNode, 'cac:Contact', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesInvHeader."Sell-to Contact"));
            AddElement(lXMLCurrNode, 'cbc:Telephone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-57
            lXMLNewChild.InnerText(Format(SalesInvHeader."Sell-to Phone No."));
            AddElement(lXMLCurrNode, 'cbc:ElectronicMail', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-58
            lXMLNewChild.InnerText(Format(SalesInvHeader."Sell-to E-Mail"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        // BG-11 Perfaqesuesi tatimor i shitesit
        if lEiSetup."Tax Representative" then begin
            if lEiSetup."Tax Representative Name" <> '' then begin
                AddElement(lXMLCurrNode, 'cac:TaxRepresentativeParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-62
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative Name"));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                // BG-12 Adresa e perfaqesuesit ligjor te shitesit.
                AddElement(lXMLCurrNode, 'cac:PostalAddress', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-64
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative Address"));
                if lEiSetup."Tax Representative Address 2" <> '' then begin
                    AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-65
                    lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative Address 2"));
                end;
                AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-66
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative City"));
                AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-67
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative Post Code"));
                AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-68
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative City"));
                AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-69
                lXMLCurrNode := lXMLNewChild;
                if lCountryRegion.Get(lEiSetup."Tax Rep. Country/Region Code") then begin
                    AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-69
                    lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
                end;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                AddElement(lXMLCurrNode, 'cac:PartyTaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-63
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                lXMLNewChild.InnerText('AL:' + Format(lEiSetup."Tax Representative Vat Reg No."));
                AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                lXMLNewChild.InnerText('VAT');
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
        end;
        // BG-13 Informacioni i dorezimit
        if SalesInvHeader."Delivery Require" then begin
            AddElement(lXMLCurrNode, 'cac:Delivery', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ActualDeliveryDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-72
            lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Posting Date"));
            AddElement(lXMLCurrNode, 'cac:DeliveryLocation', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-71.
            lXMLCurrNode := lXMLNewChild;
            if lCountryRegion.Get(SalesInvHeader."Ship-to Country/Region Code") then begin
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-71
                lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
            end;
            AddElement(lXMLCurrNode, 'cac:Address', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-75
            lXMLNewChild.InnerText(Format(SalesInvHeader."Ship-to Address"));
            if lSalesInvHeader."Ship-to Address 2" <> '' then begin
                AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-76
                lXMLNewChild.InnerText(Format(SalesInvHeader."Ship-to Address 2"));
            end;
            AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-37
            lXMLNewChild.InnerText(Format(SalesInvHeader."Ship-to City"));
            AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-78
            lXMLNewChild.InnerText(Format(SalesInvHeader."Ship-to Post Code"));
            AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-79
            if lCountryRegion.Get(SalesInvHeader."Ship-to Country/Region Code") then begin
                lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
            end;
            if lCountryRegion.get(SalesInvHeader."Ship-to Country/Region Code") then begin
                AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-80
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-80
                lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;

            if SalesInvHeader."Ship-to Name" <> '' then begin
                AddElement(lXMLCurrNode, 'cac:DeliveryParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-70. 
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-70
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-70
                lXMLNewChild.InnerText(Format(SalesInvHeader."Ship-to Name"));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        //BG-16 Udhezimet e pageses. 
        AddElement(lXMLCurrNode, 'cac:PaymentMeans', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        lPaymentMethod.SetRange(lPaymentMethod.Code, SalesInvHeader."Payment Method Code");
        if lPaymentMethod.FindSet() then begin
            AddElement(lXMLCurrNode, 'cbc:PaymentMeansCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //Bt-81
            lXMLNewChild.InnerText(Format(lPaymentMethod."Payment Means"));
            AddElement(lXMLCurrNode, 'cbc:InstructionNote', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-82
            lXMLNewChild.InnerText(Format(lPaymentMethod."EInvoice Payment Method Code"));
        end;
        //BG-17 Transferta e kreditit
        if SalesInvHeader."Invoice Type" = SalesInvHeader."Invoice Type"::NONCASH then begin
            IF (SalesInvHeader."Bank ACC. No." <> '') THEN begin
                // IF (SalesInvHeader."Bank ACC. No." <> lcompInfo."Bank Account No.") Then begin
                lBankAcc.SetRange(lBankAcc."No.", SalesInvHeader."Bank ACC. No.");
                if lBankAcc.FindSet() then begin
                    AddElement(lXMLCurrNode, 'cac:PayeeFinancialAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-84
                    lXMLNewChild.InnerText(Format(lBankAcc.IBAN));
                    AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-85
                    lXMLNewChild.InnerText(Format(lBankAcc.Name));
                    AddElement(lXMLCurrNode, 'cac:FinancialInstitutionBranch', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-86
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-86
                    lXMLNewChild.InnerText(Format(lBankAcc."SWIFT Code"));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                end;
                // end
                // else begin
                //     AddElement(lXMLCurrNode, 'cac:PayeeFinancialAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                //     lXMLCurrNode := lXMLNewChild;
                //     AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-84
                //     lXMLNewChild.InnerText(Format(lcompInfo.IBAN));
                //     AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-85
                //     lXMLNewChild.InnerText(Format(lcompInfo.Name));
                //     AddElement(lXMLCurrNode, 'cac:FinancialInstitutionBranch', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-86
                //     lXMLCurrNode := lXMLNewChild;
                //     AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-86
                //     lXMLNewChild.InnerText(Format(lcompInfo."SWIFT Code"));
                //     lXMLCurrNode := lXMLCurrNode.ParentNode;
                //     lXMLCurrNode := lXMLCurrNode.ParentNode;
                // end;
            end
            else begin
                AddElement(lXMLCurrNode, 'cac:PayeeFinancialAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-84
                lXMLNewChild.InnerText(Format(lcompInfo.IBAN));
                AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-85
                lXMLNewChild.InnerText(Format(lcompInfo."Bank Name"));
                AddElement(lXMLCurrNode, 'cac:FinancialInstitutionBranch', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-86
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-86
                lXMLNewChild.InnerText(Format(lcompInfo."SWIFT Code"));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
        end;
        // BG-18  Informacioni i kartës së pagesës
        lPaymentMethod.SetRange(lPaymentMethod.Code, SalesInvHeader."Payment Method Code");
        lPaymentMethod.SetRange(lPaymentMethod."Bal. Account Type", SalesInvHeader."Bal. Account Type");
        if lPaymentMethod.FindSet() then begin
            if lPaymentMethod."Debit/Credit Payments" then begin
                lBankAcc.Get(SalesInvHeader."Bank ACC. No.");
                lBankAcc.SetRange(lBankAcc."No.", lPaymentMethod."Bal. Account No.");
                if lBankAcc.FindSet() then begin
                    AddElement(lXMLCurrNode, 'cac:CardAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:PrimaryAccountNumberID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-87
                    lXMLNewChild.InnerText(Format(lBankAcc.IBAN));
                    AddElement(lXMLCurrNode, 'cbc:HolderName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-88
                    lXMLNewChild.InnerText(Format(lBankAcc."Holder Name"));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                end;
            end;
        end;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-20 Ulje ne nivel dokumentesh   
        if SalesInvHeader."Invoice Discount Amount" <> 0 then begin
            lSalesInvoiceLine.SetRange("Document No.", SalesInvHeader."No.");
            if lSalesInvoiceLine.FindSet() then
                repeat
                    if lSalesInvoiceLine.Type <> lSalesInvoiceLine.Type::" " then begin
                        if SalesInvHeader."Prices Including VAT" then begin
                            lInvoiceDiscAmount := lInvoiceDiscAmount + lSalesInvoiceLine."Inv. Discount Amount" / (1 + lSalesInvoiceLine."VAT %" / 100);
                        end
                        else
                            lInvoiceDiscAmount := lInvoiceDiscAmount + lSalesInvoiceLine."Inv. Discount Amount";
                        lInvoiceLineAmount := lInvoiceLineAmount + lSalesInvoiceLine."Line Amount";
                        AddElement(lXMLCurrNode, 'cac:AllowanceCharge', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                        lXMLCurrNode := lXMLNewChild;
                        AddElement(lXMLCurrNode, 'cbc:ChargeIndicator', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                        lXMLNewChild.InnerText(Format('false'));
                        if SalesInvHeader."Invoice Discount Amount" <> 0 then begin
                            if SalesInvHeader."Discount Reason" <> '' then begin
                                lDiscReason.GET(SalesInvHeader."Discount Reason");
                                AddElement(lXMLCurrNode, 'cbc:AllowanceChargeReasonCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-98
                                lXMLNewChild.InnerText(Format(lDiscReason."Discount Reason Code"));
                                AddElement(lXMLCurrNode, 'cbc:AllowanceChargeReason', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-97
                                lXMLNewChild.InnerText(Format(lDiscReason."Discount Description"));
                            end;
                        end;
                        if lInvoiceLineAmount <> 0 then begin
                            AddElement(lXMLCurrNode, 'cbc:MultiplierFactorNumeric', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-94
                            // lXMLNewChild.InnerText(FormatAmount(Round(lInvoiceDiscAmount / lInvoiceLineAmount, 0.01) * 100));
                            lXMLNewChild.InnerText(FormatAmount(Round(lInvoiceDiscAmount / lInvoiceLineAmount * 100, 0.01)));
                        end;
                        AddElement(lXMLCurrNode, 'cbc:Amount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-92
                        if SalesInvHeader."Prices Including VAT" then begin
                            lAmountBT92 := Round(lSalesInvoiceLine."Inv. Discount Amount" / (1 + lSalesInvoiceLine."VAT %" / 100), 0.01);
                            lAmountBT92Total := lAmountBT92Total + lAmountBT92;
                            if lLineNo = lSalesInvoiceLine.Count - 1 THEN begin
                                if lAmountBT92Total <> Round(lInvoiceDiscAmount, 0.01) then
                                    lAmountBT92 := lAmountBT92 + (Round(lInvoiceDiscAmount, 0.01) - lAmountBT92Total);
                            end;
                            lXMLNewChild.InnerText(FormatAmount(Round(/*lSalesInvoiceLine."Inv. Discount Amount" / (1 + lSalesInvoiceLine."VAT %" / 100)*/lAmountBT92, 0.01)));
                        end else
                            lXMLNewChild.InnerText(FormatAmount(Round(lSalesInvoiceLine."Inv. Discount Amount", 0.01)));
                        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                        if SalesInvHeader."Prices Including VAT" THEN begin
                            // PB := ((lSalesInvoiceLine."Line Amount" / (1 + lSalesInvoiceLine."VAT %" / 100)) ;
                            AddElement(lXMLCurrNode, 'cbc:BaseAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-93
                            lXMLNewChild.InnerText(FormatAmount(Round(lSalesInvoiceLine."Line Amount" / (1 + lSalesInvoiceLine."VAT %" / 100))));//(SalesInvHeader/lSalesInvoiceLine.Amount, 0.01)));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                        END ELSE begin
                            AddElement(lXMLCurrNode, 'cbc:BaseAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-93
                            lXMLNewChild.InnerText(FormatAmount(Round(lSalesInvoiceLine."Line Amount", 0.01)));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                        end;
                        // lXMLCurrNode := lXMLCurrNode.ParentNode;
                        lTmpVATAmountLine.Reset();
                        lTmpVATAmountLine.DeleteAll();
                        GetVATAmountLines_SalesInvoice(lTmpVATAmountLine, SalesInvHeader."No.");
                        lTmpVATAmountLine.Reset();
                        lTmpVATAmountLine.SetRange("VAT Identifier", lSalesInvoiceLine."VAT Identifier");
                        lTmpVATAmountLine.SetRange("VAT Calculation Type", lSalesInvoiceLine."VAT Calculation Type");
                        lTmpVATAmountLine.SetRange("Tax Group Code", lSalesInvoiceLine."Tax Group Code");
                        if lTmpVatAmountLine.FindSet() then
                            repeat
                                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesInvHeader."VAT Bus. Posting Group");
                                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                if lVATPostingSetup.FindSet() then
                                    repeat
                                        if lVATPostingSetup."Tax Category" = 'E' THEN begin
                                            lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                            if lVATPostingSetup.FindSet() then begin
                                                AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-95 
                                                lXMLCurrNode := lXMLNewChild;
                                                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //Bt-95
                                                lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                                                AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-96
                                                lXMLNewChild.InnerText(formatAmount(Round(lTmpVATAmountLine."VAT %")));
                                                AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                                                lXMLCurrNode := lXMLNewChild;
                                                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                                                lXMLNewChild.InnerText('VAT');
                                                lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                lXMLCurrNode := lXMLCurrNode.ParentNode;
                                            end;
                                        end
                                        else
                                            if lVATPostingSetup."Tax Category" = 'Z' THEN begin
                                                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                                if lVATPostingSetup.FindSet() then begin
                                                    AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-95 
                                                    lXMLCurrNode := lXMLNewChild;
                                                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //Bt-95 
                                                    lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                                                    AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-96
                                                    lXMLNewChild.InnerText(formatAmount(Round(lTmpVATAmountLine."VAT %")));
                                                    AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                                                    lXMLCurrNode := lXMLNewChild;
                                                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                                                    lXMLNewChild.InnerText('VAT');
                                                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                end;
                                            end
                                            else
                                                if lVATPostingSetup."Tax Category" = 'S' THEN begin
                                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                                    if lVATPostingSetup.FindSet() then begin
                                                        AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-95 
                                                        lXMLCurrNode := lXMLNewChild;
                                                        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //Bt-95 
                                                        lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                                                        AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-96
                                                        lXMLNewChild.InnerText(formatAmount(Round(lTmpVATAmountLine."VAT %")));
                                                        AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                                                        lXMLCurrNode := lXMLNewChild;
                                                        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                                                        lXMLNewChild.InnerText('VAT');
                                                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                    end;
                                                end;
                                    Until lVATPostingSetup.Next() = 0;
                            until lTmpVatAmountLine.Next() = 0;
                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                    end;
                    lLineNo := lLineNo + 1;
                UNTIL lSalesInvoiceLine.Next() = 0;
        end;
        AddElement(lXMLCurrNode, 'cac:TaxTotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:TaxAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-110
        lTaxAmount := SalesInvHeader."Amount Including VAT" - SalesInvHeader.Amount;
        lXMLNewChild.InnerText(FormatAmount(Round(ltaxAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', Format(Format(SalesInvHeader."Currency Code")));

        // BG-23 Shperndarja e TVSH 
        lTmpVATAmountLine.Reset();
        lTmpVATAmountLine.DeleteAll();
        GetVATAmountLines_SalesInvoice(lTmpVATAmountLine, SalesInvHeader."No.");
        lTmpVATAmountLine.Reset();
        if lTmpVatAmountLine.FindSet() then
            repeat
                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesInvHeader."VAT Bus. Posting Group");
                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                if lVATPostingSetup.FindSet() then
                    repeat
                        if (lTmpVATAmountLine."VAT Id. Counter" > 0) then begin
                            AddElement(lXMLCurrNode, 'cac:TaxSubtotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                            lXMLCurrNode := lXMLNewChild;
                            AddElement(lXMLCurrNode, 'cbc:TaxableAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-116 
                            lXMLNewChild.InnerText(FormatAmount(Round(lTmpVATAmountLine."VAT Base", 0.01)));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                            AddElement(lXMLCurrNode, 'cbc:TaxAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-117 
                            lXMLNewChild.InnerText(FormatAmount(lTmpVATAmountLine."VAT Amount"));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                            AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-118 
                            lXMLCurrNode := lXMLNewChild;
                            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-118
                            lXMLNewChild.InnerText(lVATPostingSetup."Tax Category");
                            AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-119
                            lXMLNewChild.InnerText(FormatAmount(lTmpVATAmountLine."VAT %"));
                            if (lVATPostingSetup."VAT Excluded") then begin
                                lVatClause.SetRange(lVatClause.Code, lVATPostingSetup."VAT Clause Code");
                                if lVatClause.FindSet() then begin
                                    AddElement(lXMLCurrNode, 'cbc:TaxExemptionReasonCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-121
                                    lXMLNewChild.InnerText(lVatClause.Code);
                                    AddElement(lXMLCurrNode, 'cbc:TaxExemptionReason', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-120
                                    lXMLNewChild.InnerText(lVatClause.Description);
                                end;
                            end;
                            AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                            lXMLCurrNode := lXMLNewChild;
                            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                            lXMLNewChild.InnerText('VAT');
                            lXMLCurrNode := lXMLCurrNode.ParentNode;
                            lXMLCurrNode := lXMLCurrNode.ParentNode;
                            lXMLCurrNode := lXMLCurrNode.ParentNode;
                        end;
                    Until lVATPostingSetup.Next() = 0;
            until lTmpVatAmountLine.Next() = 0;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        IF (SalesInvHeader."Currency Code" <> 'ALL') and (SalesInvHeader."Currency Factor" <> 0) then begin
            AddElement(lXMLCurrNode, 'cac:TaxTotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:TaxAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-111
            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', 'ALL');
            lXMLNewChild.InnerText(FormatAmount(Round(((SalesInvHeader."Amount Including VAT" - SalesInvHeader.Amount) * (1 / SalesInvHeader."Currency Factor")), 0.01)));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        //BG-22 Shuma totale monetare e Faturës.
        AddElement(lXMLCurrNode, 'cac:LegalMonetaryTotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:LineExtensionAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-106
        lSalesInvoiceLine.Reset();
        lSalesInvoiceLine.SetRange(lSalesInvoiceLine."Document No.", SalesInvHeader."No.");
        if lSalesInvoiceLine.FindSet() then
            repeat
                // if lSalesInvoiceLine."Prepayment Line" then
                //     lPrepAmount := lPrepAmount + (lSalesInvoiceLine."Line Amount" * -1);
                // x := x + lSalesInvoiceLine."Amount Including VAT";
                if SalesInvHeader."Prices Including VAT" then begin
                    lLineExtAmt := lLineExtAmt + ((lSalesInvoiceLine."Line Amount" / (1 + lSalesInvoiceLine."VAT %" / 100)));
                end
                else begin
                    lLineExtAmt := lLineExtAmt + (lSalesInvoiceLine."Line Amount");
                end;
            until lSalesInvoiceLine.Next() = 0;

        lXMLNewChild.InnerText(FormatAmount(Round(lLineExtAmt, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
        TaxExcAmt := Round(lLineExtAmt, 0.01) - Round(lInvoiceDiscAmount, 0.01);
        AddElement(lXMLCurrNode, 'cbc:TaxExclusiveAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-109 
        lXMLNewChild.InnerText(FormatAmount(Round(TaxExcAmt, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:TaxInclusiveAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-112 
        lXMLNewChild.InnerText(FormatAmount(Round(TaxExcAmt + lTaxAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:AllowanceTotalAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-107 
        lXMLNewChild.InnerText(FormatAmount(Round(lInvoiceDiscAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:PrepaidAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-113 
        lXMLNewChild.InnerText(FormatAmount(Round(0.00, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:PayableRoundingAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-114 
        lXMLNewChild.InnerText(FormatAmount(0.00));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:PayableAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-115 
        lXMLNewChild.InnerText(FormatAmount(Round(TaxExcAmt + lTaxAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-25 Artikujt e fatures 
        lLineNo := 0;
        lSalesInvoiceLine.Reset();
        lSalesInvoiceLine.SetRange("Document No.", SalesInvHeader."No.");
        if lSalesInvoiceLine.FindSet() then
            repeat
                if lSalesInvoiceLine.Type <> lSalesInvoiceLine.Type::" " then begin
                    AddElement(lXMLCurrNode, 'cac:InvoiceLine', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-126
                    lXMLNewChild.InnerText(lSalesInvoiceLine."No.");
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', Format('0160'));
                    AddElement(lXMLCurrNode, 'cbc:InvoicedQuantity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-129
                    lXMLNewChild.InnerText(FormatAmount(lSalesInvoiceLine.Quantity));
                    if lSalesInvoiceLine."Unit of Measure Code" <> '' then begin
                        lUnitOfMeas.SetRange(lUnitOfMeas.Code, lSalesInvoiceLine."Unit of Measure Code");
                        if lUnitOfMeas.FindSet() then
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'unitCode', lUnitOfMeas."International Standard Code");
                    end
                    else begin
                        lUnitOfMeas.SetRange(lUnitOfMeas.Code, lEiSetup."Default Unit of Measure");
                        if lUnitOfMeas.FindSet() then
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'unitCode', lUnitOfMeas."International Standard Code");
                    end;
                    AddElement(lXMLCurrNode, 'cbc:LineExtensionAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-131
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                    if (SalesInvHeader."Prices Including VAT" = true) THEN begin
                        lLineExtAmtBT131 := Round(lSalesInvoiceLine."Line Amount" / (1 + lSalesInvoiceLine."VAT %" / 100), 0.01);
                    end
                    else
                        lLineExtAmtBt131 := lSalesInvoiceLine."Line Amount";
                    lLineExtAmtBt131Total := lLineExtAmtBt131Total + lLineExtAmtBt131;
                    if lLineNo = lSalesInvoiceLine.Count - 1 THEN begin
                        if lLineExtAmtBt131Total <> Round(lLineExtAmt, 0.01) then
                            lLineExtAmtBt131 := lLineExtAmtBt131 + (lLineExtAmt - lLineExtAmtBt131Total);
                    end;
                    lXMLNewChild.InnerText(FormatAmount(Round(lLineExtAmtBT131, 0.01)));
                    // BG-26 Periudha e faturimit për artikujt e faturës.
                    IF (SalesInvHeader."Start Date" <> 0D) AND (SalesInvHeader."End Date" <> 0D) then begin
                        AddElement(lXMLCurrNode, 'cac:InvoicePeriod', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                        lXMLCurrNode := lXMLNewChild;
                        AddElement(lXMLCurrNode, 'cbc:StartDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-134
                        lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."Start Date"));
                        AddElement(lXMLCurrNode, 'cbc:EndDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-135 
                        lXMLNewChild.InnerText(FormatDateTime(SalesInvHeader."End Date"));
                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                    end;
                    AddElement(lXMLCurrNode, 'cac:DocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-128
                    lXMLNewChild.InnerText(GetLineDescription(lSalesInvoiceLine."No.", lSalesInvoiceLine.Type));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    IF lSalesInvoiceLine."Item Reference No." <> '' THEN begin
                        AddElement(lXMLCurrNode, 'cac:OrderLineReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                        lXMLCurrNode := lXMLNewChild;
                        AddElement(lXMLCurrNode, 'cbc:LineID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-132
                        lXMLNewChild.InnerText(Format(lSalesInvoiceLine."Item Reference No."));
                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                    end;
                    // BG-30 Informacion i TVSH-së për artikujt e faturës.   
                    AddElement(lXMLCurrNode, 'cac:Item', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-153 
                    lXMLNewChild.InnerText(GetLineDescription(lSalesInvoiceLine."No.", lSalesInvoiceLine.Type));
                    AddElement(lXMLCurrNode, 'cac:SellersItemIdentification', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);  //BT-155 
                    lXMLNewChild.InnerText(lSalesInvoiceLine."No.");
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    AddElement(lXMLCurrNode, 'cac:ClassifiedTaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    lTmpVATAmountLine.Reset();
                    lTmpVATAmountLine.DeleteAll();
                    GetVATAmountLines_SalesInvoice(lTmpVATAmountLine, SalesInvHeader."No.");
                    lTmpVATAmountLine.Reset();
                    lExemptFromVat := '';
                    lVATPostingSetup.SETRANGE(lVATPostingSetup."VAT Identifier", lSalesInvoiceLine."VAT Identifier");
                    if lVATPostingSetup.FindSet() then begin
                        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-151
                        lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                    end;
                    AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-152
                    lXMLNewChild.InnerText(FormatAmount(lSalesInvoiceLine."VAT %"));
                    AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                    lXMLNewChild.InnerText(Format('VAT'));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    // BG-29 Detajet e çmimit. 
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    AddElement(lXMLCurrNode, 'cac:Price', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLNewChild, 'cbc:PriceAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);// BT-146
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                    if (SalesInvHeader."Prices Including VAT" = true) THEN begin
                        lXMLNewChild.InnerText(FormatAmount(Round(lSalesInvoiceLine."Unit Price" / (1 + lSalesInvoiceLine."VAT %" / 100), 0.01)));
                    end
                    else begin
                        lXMLNewChild.InnerText(FormatAmount(Round(lSalesInvoiceLine."Unit Price", 0.01)));
                    end;
                    AddElement(lXMLCurrNode, 'cbc:BaseQuantity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);  //BT-149
                    lXMLNewChild.InnerText(FormatAmount(lSalesInvoiceLine.Quantity));
                    // BG-27 Uljet në artikujt e faturës 
                    AddElement(lXMLCurrNode, 'cac:AllowanceCharge', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ChargeIndicator', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                    lXMLNewChild.InnerText(Format('false'));
                    AddElement(lXMLCurrNode, 'cbc:Amount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-136  
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                    lXMLNewChild.InnerText(FormatAmount(Round(lSalesInvoiceLine."Line Discount Amount", 0.01)));
                    AddElement(lXMLCurrNode, 'cbc:BaseAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-137 
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesInvHeader."Currency Code");
                    if lSalesInvoiceLine.Quantity <> 0 then
                        lXMLNewChild.InnerText(FormatAmount(Round(lSalesInvoiceLine."Line Amount" / lSalesInvoiceLine.Quantity, 0.01)))
                    else
                        lXMLNewChild.InnerText(FormatAmount(Round(0)));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;//Invoice Line
                end;
                lLineNo := lLineNo + 1;
            until lSalesInvoiceLine.Next() = 0;
        lXMLCurrNode := lXMLCurrNode.ParentNode;

        FileNameEdoc := 'E-invoice_UBL_' + FormatNameDate + '_' + lEiSetup."TCR Code" + '_' + SalesInvHeader.NSLF + '.xml';

        IF lEiSetup."File Path Sales" <> '' THEN begin
            gFilePathAndName := lEiSetup."File Path Sales" + FileNameEdoc;
        end
        ELSE begin
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
        end;

        gEInvoiceEnvironmentURL := lEiSetup."E-Invoice Environment URL";
        gRegEInvoiceReqURL := lEiSetup."E-Invoice Register URL";
        gSalesResponseFilePathAndName := lEiSetup."Sales Response File Path";
        //Save and download the request file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, true);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, true);
        //Procedura ne .Net per Nenshkrimin me Signature te XML
        UBLSignatureGenerator.UBLSignatureGenerator.GenerateSignatureUBL(gFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //Konvertimi ne base64String
        lFile.OPEN(gFilePathAndName);//pFileName
        lFile.CREATEINSTREAM(lInStream);
        lMemoryStream := lMemoryStream.MemoryStream();
        COPYSTREAM(lMemoryStream, lInStream);
        lBytes := lMemoryStream.ToArray();
        gUblInvoiceBase64 := lConvert.ToBase64String(lBytes);
    end;

    procedure Create_UBL_ECreditMemo(var SalesCMHeader: Record "Sales Cr.Memo Header")
    Var
        lSalesCMheader: Record "Sales Cr.Memo Header";
        lSalesCMLine: Record "Sales Cr.Memo Line";
        lEiSetup: Record "Company Setup -  e-Invoice";
        lCompInfo: Record "Company Information";
        lCustomer: Record Customer;
        lPaymentMethod: Record "Payment Method";
        lBankAcc: Record "Bank Account";
        lUserSetup: Record "User Setup";
        lCountryRegion: Record "Country/Region";
        lcompanyCountryCode: Text;
        lTmpVATAmountLine: Record "VAT Amount Line" temporary;
        lVATPostingSetup: Record "VAT Posting Setup";
        lVatClause: Record "VAT Clause";
        lDiscReason: Record "Discount Reason";
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        xsltTag: Text;
        lUuid: Text[38];
        FileNameEdoc: Text;
        TmpServerFile: Text[1024];
        lExemptFromVat: Text;
        lInvoiceDiscAmount: Decimal;
        lInvoiceLineAmount: Decimal;
        TaxExcAmt: Decimal;
        lSalesInvheader: Record "Sales Invoice Header";
        lUnitOfMeasure: Record "Unit of Measure";
        lLineExtAmt: Decimal;
        lLineExtAmtBt131: Decimal;
        lLineExtAmtBt131Total, lLineNo : Decimal;
        lAmountBT92, lAmountBT92Total : Decimal;
        lFile: File;
        lMemoryStream: DotNet mscorlib_System_IO_MemoryStream;
        lBytes: DotNet mscorlib_System_Array;
        lConvert: DotNet mscorlib_System_Convert;
        lInStream: InStream;
        lTaxAmount: Decimal;
    begin
        GetCompanyInfo_eInv();
        lCompInfo.Get();
        lEISetup.Get();
        lUserSetup.Get(UserId());
        SalesCMHeader.CalcFields(Amount, "Invoice Discount Amount", "Amount Including VAT");

        if IsNull(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument();
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<?xml version="1.0" encoding="UTF-8" ?>' + xsltTag +
                                '<CreditNote xmlns="urn:oasis:names:specification:ubl:schema:xsd:CreditNote-2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd= "http://www.w3.org/2001/XMLSchema" xmlns:cac= "urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2" xmlns:cbc= "urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2"></CreditNote>';

        lXMLCurrNode := lXMLdocOut.DocumentElement;
        luuid := CreateUUID();
        AddElement(lXMLCurrNode, 'cac:UBLExtensions', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'xmlns', Format('urn:oasis:names:specification:ubl:schema:xsd:CommonExtensionComponents-2'));
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'UBLExtension', '', '', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'ExtensionContent', '', '', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'SignatureInformation', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'xmlns', Format('urn:oasis:names:specification:ubl:schema:xsd:SignatureAggregateComponents-2'));
        lXMLCurrNode := lXMLNewChild;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'cbc:UBLVersionID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
        lXMLNewChild.InnerText(Format('2.1'));
        AddElement(lXMLCurrNode, 'cbc:CustomizationID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-24 
        if lEiSetup."Identifier Specifications" <> '' then
            lXMLNewChild.InnerText(Format(lEiSetup."Identifier Specifications"))
        else
            lXMLNewChild.InnerText(Format('urn:cen.eu:en16931:2017'));
        //BG-2 
        if (SalesCMHeader."Credit Memo Business Process" <> SalesCMHeader."Credit Memo Business Process"::" ") then begin
            AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23
            if (SalesCMHeader."Credit Memo Business Process" <> lEiSetup."Credit Memo Business Process") then begin
                // AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23  
                lXMLNewChild.InnerText(Format(SalesCMHeader."Credit Memo Business Process"));
            end
            else begin
                // AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23  
                lXMLNewChild.InnerText(Format(lEiSetup."Credit Memo Business Process"));
            end;
        end
        else begin
            AddElement(lXMLCurrNode, 'cbc:ProfileID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-23  
            lXMLNewChild.InnerText(Format(lEiSetup."Credit Memo Business Process"));
        end;
        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-1
        lXMLNewChild.InnerText(SalesCMHeader."Fiscalised Invoice number" + '/' + Format(Date2DMY(Today, 3)));
        AddElement(lXMLCurrNode, 'cbc:IssueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-2
        lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."Document Date"));
        if lEiSetup."VAT Date Effective" <> 0D then begin
            AddElement(lXMLCurrNode, 'cbc:TaxPointDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-7. 
            lXMLNewChild.InnerText(FormatDateTime(lEiSetup."VAT Date Effective"));
        end ELSE BEGIN
            AddElement(lXMLCurrNode, 'cbc:TaxPointDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-7
            lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."Posting Date"));
        END;

        if (SalesCMHeader."E-CreditMemo Type Code" <> SalesCMHeader."E-CreditMemo Type Code"::" ") then begin
            AddElement(lXMLCurrNode, 'cbc:CreditNoteTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3
            if (SalesCMHeader."E-CreditMemo Type Code" <> lEiSetup."E-CreditMemo Type Code") then begin
                // AddElement(lXMLCurrNode, 'cbc:CreditNoteTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3 
                lXMLNewChild.InnerText(Format(SalesCMHeader."E-CreditMemo Type Code"));
            end
            else begin
                // AddElement(lXMLCurrNode, 'cbc:CreditNoteTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3 
                lXMLNewChild.InnerText(Format(lEiSetup."E-CreditMemo Type Code"));
            end;
        end
        else begin
            AddElement(lXMLCurrNode, 'cbc:CreditNoteTypeCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-3 
            lXMLNewChild.InnerText(Format(lEiSetup."E-CreditMemo Type Code"));
        end;
        // BG-1
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('IssueDateTime=' + SalesCMHeader."Fiscalization Date" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('OperatorCode=' + lUserSetup."Operator Code" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('BusinessUnitcode=' + lEiSetup."Business Unit Code" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('SoftwareCode=' + lEiSetup."Soft Code" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('IIC=' + SalesCMHeader.NSLF + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('FIC=' + SalesCMHeader.NIVF + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        lXMLNewChild.InnerText(Format('IICSignature=' + SalesCMHeader."IIC Signature" + '#AAI#'));
        AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
        if SalesCMHeader."Corrective/Is Bad Debt Invoice" = SalesCMHeader."Corrective/Is Bad Debt Invoice"::"Is Bad Debt Invoice" then
            lXMLNewChild.InnerText(Format('IsBadDebtInv=true#AAI#'))
        else
            lXMLNewChild.InnerText(Format('IsBadDebtInv=false#AAI#'));

        if (SalesCMHeader."Work Description".HasValue) then begin
            AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
            lXMLNewChild.InnerText(Format(SalesCMHeader.GetWorkDescription()));
        end;
        if (SalesCMHeader."Currency Code" <> 'ALL') and (SalesCMHeader."Currency Factor" <> 0) then begin
            AddElement(lXMLCurrNode, 'cbc:Note', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-22
            lXMLNewChild.InnerText(Format('CurrencyExchangeRate=' + FormatAmount(gCRMemoExRate) + '#AAI#'));
        end;
        AddElement(lXMLCurrNode, 'cbc:DocumentCurrencyCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-5. 
        lXMLNewChild.InnerText(Format(SalesCMHeader."Currency Code"));
        AddElement(lXMLCurrNode, 'cbc:TaxCurrencyCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-6.
        lXMLNewChild.InnerText(Format(SalesCMHeader."Currency Code"));
        if SalesCMHeader."Your Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cbc:BuyerReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-10
            lXMLNewChild.InnerText(Format(SalesCMHeader."Your Reference"));
        end;
        //BG-14 Periudha faturimit. 
        if (SalesCMHeader."Start Date" <> 0D) and (SalesCMHeader."End Date" <> 0D) then begin
            AddElement(lXMLCurrNode, 'cac:InvoicePeriod', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:StartDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-73
            lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."Start Date"));
            AddElement(lXMLCurrNode, 'cbc:EndDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-74
            lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."End Date"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            // end
            // else begin
            //     AddElement(lXMLCurrNode, 'cac:InvoicePeriod', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            //     lXMLCurrNode := lXMLNewChild;
            //     AddElement(lXMLCurrNode, 'cbc:StartDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-73
            //     lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."Posting Date"));
            //     AddElement(lXMLCurrNode, 'cbc:EndDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-74
            //     lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."Posting Date"));
            //     lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if (SalesCMHeader."Order Reference" <> '') and (SalesCMHeader."Sales Order Reference" <> '') then begin
            AddElement(lXMLCurrNode, 'cac:OrderReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-13. 
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-13  
            lXMLNewChild.InnerText(Format(SalesCMHeader."Order Reference"));
            AddElement(lXMLCurrNode, 'cbc:SalesOrderID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-14
            lXMLNewChild.InnerText(Format(SalesCMHeader."Sales Order Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        // BG-3
        // Referencë faturës së mëparshme per corrective Invoice Kur një Fature të mëparshme është e borxhit te keq 
        if SalesCMHeader."Corrective/Is Bad Debt Invoice" = SalesCMHeader."Corrective/Is Bad Debt Invoice"::"Is Bad Debt Invoice" then begin
            // if (SalesCMHeader."Is Corrective") then begin
            AddElement(lXMLCurrNode, 'cac:BillingReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cac:InvoiceDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-25
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesCMHeader."Inv IIC Refs"));
            lSalesInvheader.SetRange(lSalesInvheader.NSLF, SalesCMHeader."Inv IIC Refs");
            if lSalesInvheader.FindSet() then begin
                AddElement(lXMLCurrNode, 'cbc:IssueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-26
                lXMLNewChild.InnerText(FormatDateTime(lSalesInvheader."Posting Date"));
            end;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        // Referencë faturës së mëparshme per corrective Invoice Kur një Fature të mëparshme është korrigjuar 
        if SalesCMHeader."Corrective/Is Bad Debt Invoice" = SalesCMHeader."Corrective/Is Bad Debt Invoice"::"Is Corrective" then begin
            AddElement(lXMLCurrNode, 'cac:BillingReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cac:InvoiceDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-25
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesCMHeader."Inv IIC Refs"));
            lSalesInvheader.SetRange(lSalesInvheader.NSLF, SalesCMHeader."Inv IIC Refs");
            if lSalesInvheader.FindSet() then begin
                AddElement(lXMLCurrNode, 'cbc:IssueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-26
                lXMLNewChild.InnerText(FormatDateTime(lSalesInvheader."Posting Date"));
            end;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;

        // Referencë faturës së mëparshme per summary Invocie
        if (SalesCMHeader."Is Summary") then begin
            lSalesInvheader.Reset();
            lSalesInvheader.SetFilter(lSalesInvheader.NSLF, SalesCMHeader."Sum Inv IIC Refs");
            IF lSalesInvheader.FindSet() then
                repeat
                    AddElement(lXMLCurrNode, 'cac:BillingReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cac:InvoiceDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);      //BT-25
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                    lXMLNewChild.InnerText(Format(lSalesInvheader.NSLF));
                    AddElement(lXMLCurrNode, 'cbc:IssueDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-26
                    lXMLNewChild.InnerText(FormatDateTime(lSalesInvheader."Posting Date"));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                until lSalesInvheader.Next() = 0;
        end;
        if SalesCMHeader."Despatch Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:DespatchDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-16
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-16
            lXMLNewChild.InnerText(Format(SalesCMHeader."Despatch Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesCMHeader."Receipt Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:ReceiptDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-15
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-15
            lXMLNewChild.InnerText(Format(SalesCMHeader."Receipt Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesCMHeader."Contract Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:ContractDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-12. 
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesCMHeader."Contract Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesCMHeader."Additional Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:AdditionalDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-18 
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesCMHeader."Additional Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesCMHeader."Project Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:AdditionalDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-11
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);        //BT-11.
            lXMLNewChild.InnerText(Format(SalesCMHeader."Project Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        if SalesCMHeader."Originator Doc. Reference" <> '' then begin
            AddElement(lXMLCurrNode, 'cac:OriginatorDocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-17
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format(SalesCMHeader."Originator Doc. Reference"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        // BG-4  Shitësi 
        AddElement(lXMLCurrNode, 'cac:AccountingSupplierParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cac:Party', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:EndpointID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-34 
        lXMLNewChild.InnerText(Format(lEiSetup."VAT Registration No."));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', Format('0088'));
        AddElement(lXMLCurrNode, 'cac:PartyIdentification', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-29  
        case
            lEiSetup.IDType OF
            lEiSetup.IDType::Id:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."Personal ID No."));
                end;
            lEiSetup.IDType::NUIS:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."VAT Registration No."));
                end;
            lEiSetup.IDType::PASS:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."Personal ID No."));
                end;
            lEiSetup.IDType::SOC:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."Personal ID No."));
                end;
            lEiSetup.IDType::VAT:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."VAT Registration No."));
                end;
            lEiSetup.IDType::TAX:
                begin
                    lXMLNewChild.InnerText(Format(lEiSetup."TAX No."));
                end;
        end;
        AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', Format('0088'));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-28
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-28
        lXMLNewChild.InnerText(lcompInfo."Name");
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-5
        AddElement(lXMLCurrNode, 'cac:PostalAddress', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-35
        lXMLNewChild.InnerText(Format(lcompInfo.Address));
        if lCompInfo."Address 2" <> '' then begin
            AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-36
            lXMLNewChild.InnerText(Format(lcompInfo."Address 2"));
        end;
        AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-37
        lXMLNewChild.InnerText(Format(lcompInfo.City));
        AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-38
        lXMLNewChild.InnerText(Format(lcompInfo."Post Code"));
        AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-39
        lXMLNewChild.InnerText(Format(lcompInfo.City));
        AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-40
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-40
        lcompanyCountryCode := GetIsoCode(lCompInfo."Country/Region Code");
        lXMLNewChild.InnerText(Format(lcompanyCountryCode));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'cac:PartyTaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//bt-31
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
        lXMLNewChild.InnerText(Format(lcompanyCountryCode + ':' + lEiSetup."VAT Registration No."));
        AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
        lXMLNewChild.InnerText(Format('VAT'));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'cac:PartyLegalEntity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-27
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:RegistrationName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-27 
        lXMLNewChild.InnerText(lcompInfo.Name);
        AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-30
        lXMLNewChild.InnerText(Format(lcompInfo."VAT Registration No."));
        AddElement(lXMLCurrNode, 'cbc:CompanyLegalForm', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-33
        lXMLNewChild.InnerText(lEiSetup."Equity of ShareHolders");
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-6 Kontakti shitesit.
        AddElement(lXMLCurrNode, 'cac:Contact', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-41
        lXMLNewChild.InnerText(Format(lcompInfo."Contact Person"));
        AddElement(lXMLCurrNode, 'cbc:Telephone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-42
        lXMLNewChild.InnerText(Format(lcompInfo."Phone No."));
        AddElement(lXMLCurrNode, 'cbc:ElectronicMail', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-43
        lXMLNewChild.InnerText(Format(lcompInfo."E-Mail"));
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-7  Bleresi.
        lCustomer.SetRange(lCustomer."No.", SalesCMHeader."Sell-to Customer No.");
        if lCustomer.FindSet() then begin
            AddElement(lXMLCurrNode, 'cac:AccountingCustomerParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cac:Party', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:EndpointID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-49 
            lXMLNewChild.InnerText(Format(lCustomer."VAT Registration No."));
            AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', '0088');
            AddElement(lXMLCurrNode, 'cac:PartyIdentification', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);   //BT-46
            case
            lCustomer.IDType of
                lCustomer.IDType::ID:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Personal ID"));
                    end;
                lCustomer.IdType::NUIS:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."VAT Registration No."));
                    end;
                lCustomer.IDType::PASS:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Personal ID"));
                    end;
                lCustomer.IDType::SOC:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Personal ID"));
                    end;
                lCustomer.IDType::VAT:
                    begin
                        lXMLNewChild.InnerText(Format(lCustomer."Tax No."));
                    end;
                lCustomer.IdType::TAX:
                    begin
                        lXMLCurrNode.InnerText(Format(lCustomer."Tax No."))
                    end;
            end;
            AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', '0088');
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-45
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-45
            lXMLNewChild.InnerText(Format(lCustomer.Name));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            // BG-8   Adresa postare e blerësi. 
            AddElement(lXMLCurrNode, 'cac:PostalAddress', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //bt-50
            lXMLNewChild.InnerText(Format(lCustomer.Address));
            if lCustomer."Address 2" <> '' then begin
                AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-51
                lXMLNewChild.InnerText(Format(lCustomer."Address 2"));
            end;
            AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-52
            lXMLNewChild.InnerText(Format(lCustomer.City));
            AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-53
            lXMLNewChild.InnerText(Format(lCustomer."Post Code"));
            AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-54
            lXMLNewChild.InnerText(Format(lCustomer.City));
            AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//bt-55
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//bt-55
            lcompanyCountryCode := GetIsoCode(lCompInfo."Country/Region Code");
            lXMLNewChild.InnerText(Format(lcompanyCountryCode));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            AddElement(lXMLCurrNode, 'cac:PartyTaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //bt-48
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-48 
            lXMLNewChild.InnerText(Format(lcompanyCountryCode + ':' + lcustomer."VAT Registration No."));
            AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //bt-48
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
            lXMLNewChild.InnerText(Format('VAT'));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            AddElement(lXMLCurrNode, 'cac:PartyLegalEntity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:RegistrationName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-44
            lXMLNewChild.InnerText(Format(lCustomer.Name));
            AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-47 
            lXMLNewChild.InnerText(Format(lCustomer."VAT Registration No."));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            // BG-9  KONTAKT I BLERËSIT. 
            AddElement(lXMLCurrNode, 'cac:Contact', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-56 
            lXMLNewChild.InnerText(Format(SalesCMHeader."Sell-to Contact"));
            AddElement(lXMLCurrNode, 'cbc:Telephone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-57
            lXMLNewChild.InnerText(Format(SalesCMHeader."Sell-to Phone No."));
            AddElement(lXMLCurrNode, 'cbc:ElectronicMail', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-58
            lXMLNewChild.InnerText(Format(SalesCMHeader."Sell-to E-Mail"));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        // BG-11
        if lEiSetup."Tax Representative" then begin
            if lEiSetup."Tax Representative Name" <> '' then begin
                AddElement(lXMLCurrNode, 'cac:TaxRepresentativeParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-62
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative Name"));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                // BG-12 Adresa e perfaqesuesit ligjor te shitesit. 
                AddElement(lXMLCurrNode, 'cac:PostalAddress', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-64
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative Address"));
                if lEiSetup."Tax Representative Address 2" <> '' then begin
                    AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-65
                    lXMLNewChild.InnerText(lEiSetup."Tax Representative Address 2");
                end;
                AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-66
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative City"));
                AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-67
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative Post Code"));
                AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-68
                lXMLNewChild.InnerText(Format(lEiSetup."Tax Representative City"));
                AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-69
                lXMLCurrNode := lXMLNewChild;
                if lCountryRegion.Get(lEiSetup."Tax Rep. Country/Region Code") then begin
                    AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //BT-69 
                    lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
                end;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                AddElement(lXMLCurrNode, 'cac:PartyTaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild); //BT-63 
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:CompanyID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                lXMLNewChild.InnerText('AL:' + lEiSetup."Tax Representative Vat Reg No.");
                AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                lXMLNewChild.InnerText('VAT');
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
        end;
        // BG-13 Informacioni i dorezimit
        if SalesCMHeader."Delivery Require" then begin
            AddElement(lXMLCurrNode, 'cac:Delivery', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:ActualDeliveryDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-72
            lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."Posting Date"));
            AddElement(lXMLCurrNode, 'cac:DeliveryLocation', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-71.
            lXMLCurrNode := lXMLNewChild;
            if lCountryRegion.get(SalesCMHeader."Ship-to Country/Region Code") then begin
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-71
                lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
            end;
            AddElement(lXMLCurrNode, 'cac:Address', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:StreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-75
            lXMLNewChild.InnerText(Format(SalesCMHeader."Ship-to Address"));
            if lSalesCMheader."Ship-to Address 2" <> '' then begin
                AddElement(lXMLCurrNode, 'cbc:AdditionalStreetName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-76
                lXMLNewChild.InnerText(Format(SalesCMHeader."Ship-to Address 2"));
            end;
            AddElement(lXMLCurrNode, 'cbc:CityName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-37
            lXMLNewChild.InnerText(Format(SalesCMHeader."Ship-to City"));
            AddElement(lXMLCurrNode, 'cbc:PostalZone', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-78
            lXMLNewChild.InnerText(Format(SalesCMHeader."Ship-to Post Code"));
            AddElement(lXMLCurrNode, 'cbc:CountrySubentity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-79
            if lCountryRegion.Get(SalesCMHeader."Ship-to Country/Region Code") then begin
                lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
            end;
            if lCountryRegion.get(SalesCMHeader."Ship-to Country/Region Code") then begin
                AddElement(lXMLCurrNode, 'cac:Country', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-80
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:IdentificationCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-80
                lXMLNewChild.InnerText(Format(lCountryRegion."ISO Code"));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            if SalesCMHeader."Ship-to Name" <> '' then begin
                AddElement(lXMLCurrNode, 'cac:DeliveryParty', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-70.  
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cac:PartyName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-70
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-70
                lXMLNewChild.InnerText(SalesCMHeader."Ship-to Name");
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        //BG-16 Udhezimet e pageses. 
        AddElement(lXMLCurrNode, 'cac:PaymentMeans', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        lPaymentMethod.SetRange(lPaymentMethod.Code, SalesCMHeader."Payment Method Code");
        if lPaymentMethod.FindSet() then begin
            AddElement(lXMLCurrNode, 'cbc:PaymentMeansCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-81
            lXMLNewChild.InnerText(Format(lPaymentMethod."Payment Means"));
            AddElement(lXMLCurrNode, 'cbc:InstructionNote', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-82
            lXMLNewChild.InnerText(Format(lPaymentMethod."EInvoice Payment Method Code"));
        end;
        //BG-17 Transferta e kreditit
        if SalesCMHeader."Invoice Type" = SalesCMHeader."Invoice Type"::NONCASH then begin
            IF (SalesCMHeader."Bank ACC. No." <> '') THEN begin
                // IF (SalesCMHeader."Bank ACC. No." <> lcompInfo."Bank Account No.") Then begin
                lBankAcc.SetRange(lBankAcc."No.", SalesCMHeader."Bank ACC. No.");
                if lBankAcc.FindSet() then begin
                    AddElement(lXMLCurrNode, 'cac:PayeeFinancialAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-84
                    lXMLNewChild.InnerText(Format(lBankAcc.IBAN));
                    AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-85
                    lXMLNewChild.InnerText(Format(lBankAcc.Name));
                    AddElement(lXMLCurrNode, 'cac:FinancialInstitutionBranch', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-86
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-86
                    lXMLNewChild.InnerText(Format(lBankAcc."SWIFT Code"));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                end;
                // end 
                // else if lBankAcc.FindSet() then begin
                //     AddElement(lXMLCurrNode, 'cac:PayeeFinancialAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                //     lXMLCurrNode := lXMLNewChild;
                //     AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-84
                //     lXMLNewChild.InnerText(Format(lcompInfo.IBAN));
                //     AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-85
                //     lXMLNewChild.InnerText(Format(lcompInfo.Name));
                //     AddElement(lXMLCurrNode, 'cac:FinancialInstitutionBranch', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-86
                //     lXMLCurrNode := lXMLNewChild;
                //     AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-86
                //     lXMLNewChild.InnerText(Format(lcompInfo."SWIFT Code"));
                //     lXMLCurrNode := lXMLCurrNode.ParentNode;
                //     lXMLCurrNode := lXMLCurrNode.ParentNode;
                // end;
            end
            else begin
                AddElement(lXMLCurrNode, 'cac:PayeeFinancialAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-84
                lXMLNewChild.InnerText(Format(lcompInfo.IBAN));
                AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-85
                lXMLNewChild.InnerText(Format(lcompInfo."Bank Name"));
                AddElement(lXMLCurrNode, 'cac:FinancialInstitutionBranch', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-86
                lXMLCurrNode := lXMLNewChild;
                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-86
                lXMLNewChild.InnerText(Format(lcompInfo."SWIFT Code"));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                lXMLCurrNode := lXMLCurrNode.ParentNode;
            end;
        end;
        // BG-18  Informacioni i kartës së pagesës
        lPaymentMethod.SetRange(lPaymentMethod.Code, SalesCMHeader."Payment Method Code");
        lPaymentMethod.SetRange(lPaymentMethod."Bal. Account Type", SalesCMHeader."Bal. Account Type");
        if lPaymentMethod.FindSet() then begin
            if lPaymentMethod."Debit/Credit Payments" then begin
                lBankAcc.Get(SalesCMHeader."Bank ACC. No.");
                lBankAcc.SetRange(lBankAcc."No.", lPaymentMethod."Bal. Account No.");
                if lBankAcc.FindSet() then begin
                    AddElement(lXMLCurrNode, 'cac:CardAccount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:PrimaryAccountNumberID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-87
                    lXMLNewChild.InnerText(Format(lBankAcc.IBAN));
                    AddElement(lXMLCurrNode, 'cbc:HolderName', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-88 
                    lXMLNewChild.InnerText(Format(lBankAcc."Holder Name"));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                end;
            end;
        end;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-20  
        if SalesCMHeader."Invoice Discount Amount" <> 0 then begin
            lSalesCMLine.SetRange("Document No.", SalesCMHeader."No.");
            if lSalesCMLine.FindSet() then
                repeat
                    if lSalesCMLine.Type <> lSalesCMLine.Type::" " then begin
                        if SalesCMHeader."Prices Including VAT" then begin
                            lInvoiceDiscAmount := lInvoiceDiscAmount + lSalesCMLine."Inv. Discount Amount" / (1 + lSalesCMLine."VAT %" / 100);
                        end
                        else
                            lInvoiceDiscAmount := lInvoiceDiscAmount + lSalesCMLine."Inv. Discount Amount";
                        lInvoiceLineAmount := lInvoiceLineAmount + lSalesCMLine."Line Amount";

                        AddElement(lXMLCurrNode, 'cac:AllowanceCharge', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                        lXMLCurrNode := lXMLNewChild;
                        AddElement(lXMLCurrNode, 'cbc:ChargeIndicator', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                        lXMLNewChild.InnerText(Format('false'));
                        if SalesCMHeader."Invoice Discount Amount" <> 0 then begin
                            if SalesCMHeader."Discount Reason" <> '' then begin
                                lDiscReason.GET(SalesCMHeader."Discount Reason");
                                AddElement(lXMLCurrNode, 'cbc:AllowanceChargeReasonCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-98
                                lXMLNewChild.InnerText(Format(lDiscReason."Discount Reason Code"));
                                AddElement(lXMLCurrNode, 'cbc:AllowanceChargeReason', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-97
                                lXMLNewChild.InnerText(Format(lDiscReason."Discount Description"));
                            end;
                        end;
                        if lInvoiceLineAmount <> 0 then begin
                            AddElement(lXMLCurrNode, 'cbc:MultiplierFactorNumeric', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-94
                            lXMLNewChild.InnerText(FormatAmount(Round(lInvoiceDiscAmount / lInvoiceLineAmount * 100, 0.01)));
                        end;
                        AddElement(lXMLCurrNode, 'cbc:Amount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-92
                        if SalesCMHeader."Prices Including VAT" then begin
                            lAmountBT92 := Round(lSalesCMLine."Inv. Discount Amount" / (1 + lSalesCMLine."VAT %" / 100), 0.01);
                            lAmountBT92Total := lAmountBT92Total + lAmountBT92;
                            if lLineNo = lSalesCMLine.Count - 1 THEN begin
                                if lAmountBT92Total <> Round(lInvoiceDiscAmount, 0.01) then
                                    lAmountBT92 := lAmountBT92 + (Round(lInvoiceDiscAmount, 0.01) - lAmountBT92Total);
                            end;
                            lXMLNewChild.InnerText(FormatAmount(Round(/*lSalesCMLine."Inv. Discount Amount" / (1 + lSalesCMLine."VAT %" / 100)*/lAmountBT92, 0.01)));
                        end else
                            lXMLNewChild.InnerText(FormatAmount(Round(lSalesCMLine."Inv. Discount Amount", 0.01)));
                        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                        if SalesCMHeader."Prices Including VAT" then begin
                            AddElement(lXMLCurrNode, 'cbc:BaseAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-93
                            lXMLNewChild.InnerText(FormatAmount(Round(lSalesCMLine."Line Amount" / (1 + lSalesCMLine."VAT %" / 100), 0.01)));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                        end else begin
                            AddElement(lXMLCurrNode, 'cbc:BaseAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//Bt-93
                            lXMLNewChild.InnerText(FormatAmount(Round(lSalesCMLine."Line Amount", 0.01)));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                        end;
                        lTmpVATAmountLine.Reset();
                        lTmpVATAmountLine.DeleteAll();
                        GetVATAmountLines_SalesCM(lTmpVATAmountLine, SalesCMHeader."No.");
                        lTmpVATAmountLine.Reset();
                        lTmpVATAmountLine.SetRange("VAT Identifier", lSalesCMLine."VAT Identifier");
                        lTmpVATAmountLine.SetRange("VAT Calculation Type", lSalesCMLine."VAT Calculation Type");
                        lTmpVATAmountLine.SetRange("Tax Group Code", lSalesCMLine."Tax Group Code");
                        if lTmpVatAmountLine.FindSet() then
                            repeat
                                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesCMHeader."VAT Bus. Posting Group");
                                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                if lVATPostingSetup.FindSet() then
                                    repeat
                                        if lVATPostingSetup."Tax Category" = 'E' THEN begin
                                            lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                            if lVATPostingSetup.FindSet() then begin
                                                AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-95  
                                                lXMLCurrNode := lXMLNewChild;
                                                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //Bt-95  
                                                lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                                                AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-96
                                                lXMLNewChild.InnerText(formatAmount(lTmpVATAmountLine."VAT %"));
                                                AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                                                lXMLCurrNode := lXMLNewChild;
                                                AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                                                lXMLNewChild.InnerText('VAT');
                                                lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                lXMLCurrNode := lXMLCurrNode.ParentNode;
                                            end;
                                        end
                                        else
                                            if lVATPostingSetup."Tax Category" = 'Z' THEN begin
                                                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                                if lVATPostingSetup.FindSet() then begin
                                                    AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-95  
                                                    lXMLCurrNode := lXMLNewChild;
                                                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //Bt-95  
                                                    lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                                                    AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-96
                                                    lXMLNewChild.InnerText(FormatAmount(Round(lTmpVATAmountLine."VAT %")));
                                                    AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                                                    lXMLCurrNode := lXMLNewChild;
                                                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                                                    lXMLNewChild.InnerText('VAT');
                                                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                end;
                                            end
                                            else
                                                if lVATPostingSetup."Tax Category" = 'S' THEN begin
                                                    lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                                                    if lVATPostingSetup.FindSet() then begin
                                                        AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);  //BT-95  
                                                        lXMLCurrNode := lXMLNewChild;
                                                        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild); //Bt-95  
                                                        lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                                                        AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-96
                                                        lXMLNewChild.InnerText(formatAmount(Round(lTmpVATAmountLine."VAT %")));
                                                        AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                                                        lXMLCurrNode := lXMLNewChild;
                                                        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                                                        lXMLNewChild.InnerText('VAT');
                                                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                                                    end;
                                                end;
                                    Until lVATPostingSetup.Next() = 0;
                            until lTmpVatAmountLine.Next() = 0;
                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                    end;
                    lLineNo := lLineNo + 1;
                UNTIL lSalesCMLine.Next() = 0;
        end;
        AddElement(lXMLCurrNode, 'cac:TaxTotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:TaxAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-110
        lTaxAmount := SalesCMHeader."Amount Including VAT" - SalesCMHeader.Amount;
        lXMLNewChild.InnerText(FormatAmount(Round(lTaxAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', Format(SalesCMHeader."Currency Code"));

        // BG-23 Shperndartja e TVSH 
        lTmpVATAmountLine.Reset();
        lTmpVATAmountLine.DeleteAll();
        GetVATAmountLines_SalesCM(lTmpVATAmountLine, SalesCMHeader."No.");
        lTmpVATAmountLine.Reset();
        if lTmpVatAmountLine.FindSet() then
            repeat
                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Bus. Posting Group", SalesCMHeader."VAT Bus. Posting Group");
                lVATPostingSetup.SetRange(lVATPostingSetup."VAT Identifier", lTmpVATAmountLine."VAT Identifier");
                if lVATPostingSetup.FindSet() then
                    repeat
                        if (lTmpVATAmountLine."VAT Id. Counter" > 0) then begin
                            AddElement(lXMLCurrNode, 'cac:TaxSubtotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                            lXMLCurrNode := lXMLNewChild;
                            AddElement(lXMLCurrNode, 'cbc:TaxableAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-116 
                            lXMLNewChild.InnerText(FormatAmount(Round(lTmpVATAmountLine."VAT Base", 0.01)));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                            AddElement(lXMLCurrNode, 'cbc:TaxAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);  //BT-117 
                            lXMLNewChild.InnerText(FormatAmount(lTmpVATAmountLine."VAT Amount"));
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                            AddElement(lXMLCurrNode, 'cac:TaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);//BT-118  
                            lXMLCurrNode := lXMLNewChild;
                            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-118
                            lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                            AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-119
                            lXMLNewChild.InnerText(FormatAmount(lTmpVATAmountLine."VAT %"));
                            if (lVATPostingSetup."VAT Excluded") then begin
                                lVatClause.SetRange(lVatClause.Code, lVATPostingSetup."VAT Clause Code");
                                if lVatClause.FindSet() then begin
                                    AddElement(lXMLCurrNode, 'cbc:TaxExemptionReasonCode', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-121
                                    lXMLNewChild.InnerText(lVatClause.Code);
                                    AddElement(lXMLCurrNode, 'cbc:TaxExemptionReason', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-120
                                    lXMLNewChild.InnerText(lVatClause.Description);
                                end;
                            end;
                            AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                            lXMLCurrNode := lXMLNewChild;
                            AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                            lXMLNewChild.InnerText('VAT');
                            lXMLCurrNode := lXMLCurrNode.ParentNode;
                            lXMLCurrNode := lXMLCurrNode.ParentNode;
                            lXMLCurrNode := lXMLCurrNode.ParentNode;
                        end;
                    Until lVATPostingSetup.Next() = 0;
            until lTmpVatAmountLine.Next() = 0;
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        IF (SalesCMHeader."Currency Code" <> 'ALL') and (SalesCMHeader."Currency Factor" <> 0) then begin
            AddElement(lXMLCurrNode, 'cac:TaxTotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'cbc:TaxAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-111*/
            AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', 'ALL');
            lXMLNewChild.InnerText(FormatAmount(Round(((SalesCMHeader."Amount Including VAT" - SalesCMHeader.Amount) * (1 / SalesCMHeader."Currency Factor")), 0.01)));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
        end;
        //BG-22 Shuma totale totale monetare e Faturës.
        AddElement(lXMLCurrNode, 'cac:LegalMonetaryTotal', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'cbc:LineExtensionAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-106
        lSalesCMLine.SetRange("Document No.", SalesCMHeader."No.");
        if lSalesCMLine.FindSet() then
            repeat
                if SalesCMHeader."Prices Including VAT" then
                    lLineExtAmt := lLineExtAmt + ((lSalesCMLine."Line Amount" / (1 + lSalesCMLine."VAT %" / 100)))
                else
                    lLineExtAmt := lLineExtAmt + (lSalesCMLine."Line Amount");
            until lSalesCMLine.Next() = 0;
        lXMLNewChild.InnerText(FormatAmount(Round(lLineExtAmt, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', Format(SalesCMHeader."Currency Code"));
        TaxExcAmt := Round(lLineExtAmt, 0.01) - Round(lInvoiceDiscAmount, 0.01);
        AddElement(lXMLCurrNode, 'cbc:TaxExclusiveAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-109  
        lXMLNewChild.InnerText(FormatAmount(Round(TaxExcAmt, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:TaxInclusiveAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-112  
        lXMLNewChild.InnerText(FormatAmount(Round(TaxExcAmt + lTaxAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:AllowanceTotalAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-107  
        lXMLNewChild.InnerText(FormatAmount(Round(lInvoiceDiscAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:PrepaidAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-113  
        lXMLNewChild.InnerText(FormatAmount(Round(0.00, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:PayableRoundingAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-114 
        lXMLNewChild.InnerText(FormatAmount(0.00));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
        AddElement(lXMLCurrNode, 'cbc:PayableAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-115  
        lXMLNewChild.InnerText(FormatAmount(Round(TaxExcAmt + lTaxAmount, 0.01)));
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
        AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        // BG-25 Artikulli fatures.
        lLineNo := 0;
        lSalesCMLine.REset();
        lSalesCMLine.SetRange("Document No.", SalesCMHeader."No.");
        if lSalesCMLine.FindSet() then
            repeat
                if lSalesCMLine.Type <> lSalesCMLine.Type::" " then begin
                    AddElement(lXMLCurrNode, 'cac:CreditNoteLine', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-126
                    lXMLNewChild.InnerText(lSalesCMLine."No.");
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'schemeID', Format('0160'));
                    AddElement(lXMLCurrNode, 'cbc:CreditedQuantity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-129
                    lXMLNewChild.InnerText(FormatAmount(lSalesCMLine.Quantity));
                    if lSalesCMLine."Unit of Measure Code" <> '' then begin
                        lUnitOfMeasure.SetRange(lUnitOfMeasure.Code, lSalesCMLine."Unit of Measure Code");
                        if lUnitOfMeasure.FindSet() then
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'unitCode', lUnitOfMeasure."International Standard Code");
                    end
                    else begin
                        lUnitOfMeasure.SetRange(lUnitOfMeasure.Code, lEiSetup."Default Unit of Measure");
                        if lUnitOfMeasure.FindSet() then
                            AddAttribute(lXMLdocOut, lXMLNewChild, 'unitCode', lUnitOfMeasure."International Standard Code");
                    end;
                    AddElement(lXMLCurrNode, 'cbc:LineExtensionAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-131
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                    if (SalesCMHeader."Prices Including VAT" = true) THEN begin
                        lLineExtAmtBT131 := Round(lSalesCMLine."Line Amount" / (1 + lSalesCMLine."VAT %" / 100), 0.01);
                    end
                    else
                        lLineExtAmtBt131 := lSalesCMLine."Line Amount";
                    lLineExtAmtBt131Total := lLineExtAmtBt131Total + lLineExtAmtBt131;
                    if lLineNo = lSalesCMLine.Count - 1 THEN begin
                        if lLineExtAmtBt131Total <> Round(lLineExtAmt, 0.01) then
                            lLineExtAmtBt131 := lLineExtAmtBt131 + (lLineExtAmt - lLineExtAmtBt131Total);
                    end;
                    lXMLNewChild.InnerText(FormatAmount(Round(/*lSalesInvoiceLine."Line Amount"*/lLineExtAmtBT131, 0.01)));
                    // BG-26 
                    IF (SalesCMHeader."Start Date" <> 0D) AND (SalesCMHeader."End Date" <> 0D) then begin
                        AddElement(lXMLCurrNode, 'cac:InvoicePeriod', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                        lXMLCurrNode := lXMLNewChild;
                        AddElement(lXMLCurrNode, 'cbc:StartDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-134
                        lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."Start Date"));
                        AddElement(lXMLCurrNode, 'cbc:EndDate', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-135 
                        lXMLNewChild.InnerText(FormatDateTime(SalesCMHeader."End Date"));
                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                    end;
                    AddElement(lXMLCurrNode, 'cac:DocumentReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-128
                    lXMLNewChild.InnerText(GetLineDescription(lSalesCMLine."No.", lSalesCMLine.Type));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    IF lSalesCMLine."Item Reference No." <> '' THEN begin
                        AddElement(lXMLCurrNode, 'cac:OrderLineReference', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                        lXMLCurrNode := lXMLNewChild;
                        AddElement(lXMLCurrNode, 'cbc:LineID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-132
                        lXMLNewChild.InnerText(Format(lSalesCMLine."Item Reference No."));
                        lXMLCurrNode := lXMLCurrNode.ParentNode;
                    end;
                    // BG-30 Informacion i TVSH-së për artikujt e faturës. 
                    AddElement(lXMLCurrNode, 'cac:Item', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:Name', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-153  
                    lXMLNewChild.InnerText(GetLineDescription(lSalesCMLine."No.", lSalesCMLine.Type));
                    AddElement(lXMLCurrNode, 'cac:SellersItemIdentification', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-155  
                    lXMLNewChild.InnerText(lSalesCMLine."No.");
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    AddElement(lXMLCurrNode, 'cac:ClassifiedTaxCategory', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    lTmpVATAmountLine.Reset();
                    lTmpVATAmountLine.DeleteAll();
                    GetVATAmountLines_SalesInvoice(lTmpVATAmountLine, SalesCMHeader."No.");
                    lTmpVATAmountLine.Reset();
                    lExemptFromVat := '';
                    lVATPostingSetup.SETRANGE(lVATPostingSetup."VAT Identifier", lSalesCMLine."VAT Identifier");
                    if lVATPostingSetup.FindSet() then begin
                        AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-151
                        lXMLNewChild.InnerText(Format(lVATPostingSetup."Tax Category"));
                    end;
                    AddElement(lXMLCurrNode, 'cbc:Percent', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-152
                    lXMLNewChild.InnerText(FormatAmount(lSalesCMLine."VAT %"));
                    AddElement(lXMLCurrNode, 'cac:TaxScheme', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ID', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                    lXMLNewChild.InnerText(Format('VAT'));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    lXMLCurrNode := lXMLCurrNode.ParentNode;
                    // BG-29 Detajet e çmimit. 
                    AddElement(lXMLCurrNode, 'cac:Price', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLNewChild, 'cbc:PriceAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);// BT-146
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                    if (SalesCMHeader."Prices Including VAT" = true) THEN
                        lXMLNewChild.InnerText(FormatAmount(Round(lSalesCMLine."Unit Price" / (1 + lSalesCMLine."VAT %" / 100), 0.01)))
                    else
                        lXMLNewChild.InnerText(FormatAmount(Round(lSalesCMLine."Unit Price", 0.01)));
                    AddElement(lXMLCurrNode, 'cbc:BaseQuantity', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-149
                    lXMLNewChild.InnerText(FormatAmount(lSalesCMLine.Quantity));//BT-150 

                    // BG-27 Uljet në artikujt e faturës 
                    AddElement(lXMLCurrNode, 'cac:AllowanceCharge', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2', lXMLNewChild);
                    lXMLCurrNode := lXMLNewChild;
                    AddElement(lXMLCurrNode, 'cbc:ChargeIndicator', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);
                    lXMLNewChild.InnerText(Format('false'));

                    AddElement(lXMLCurrNode, 'cbc:Amount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-136  
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                    lXMLNewChild.InnerText(FormatAmount(Round(lSalesCMLine."Line Discount Amount", 0.01)));

                    AddElement(lXMLCurrNode, 'cbc:BaseAmount', '', 'urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2', lXMLNewChild);//BT-137 
                    AddAttribute(lXMLdocOut, lXMLNewChild, 'currencyID', SalesCMHeader."Currency Code");
                    if lSalesCMLine.Quantity <> 0 then
                        lXMLNewChild.InnerText(FormatAmount(Round(lSalesCMLine."Line Amount" / lSalesCMLine.Quantity, 0.01)))
                    else
                        lXMLNewChild.InnerText(FormatAmount(Round(0)));
                    lXMLCurrNode := lXMLCurrNode.ParentNode;//price
                    lXMLCurrNode := lXMLCurrNode.ParentNode;//  
                    lXMLCurrNode := lXMLCurrNode.ParentNode;// cac:CreditNoteLine 
                end;
                lLineNo := lLineNo + 1;
            until lSalesCMLine.Next() = 0;
        lXMLCurrNode := lXMLCurrNode.ParentNode;

        FileNameEdoc := 'E-CRMemo_UBL_' + FormatNameDate + '_' + lEiSetup."TCR Code" + '_' + SalesCMHeader.NSLF + '.xml';

        IF lEiSetup."File Path Sales" <> '' THEN begin
            gFilePathAndName := lEiSetup."File Path Sales" + FileNameEdoc;
        end
        ELSE begin
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
        end;
        gEInvoiceEnvironmentURL := lEiSetup."E-Invoice Environment URL";
        gRegEInvoiceReqURL := lEiSetup."E-Invoice Register URL";
        gSalesResponseFilePathAndName := lEiSetup."Sales Response File Path";
        //Save and download req file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, true);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, true);
        //Procedura ne .Net per Nenshkrimin me Signature te XML
        UBLSignatureGenerator.UBLSignatureGenerator.GenerateSignatureUBL(gFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //Konvertimi ne base64String
        lFile.OPEN(gFilePathAndName);//pFileName
        lFile.CREATEINSTREAM(lInStream);
        lMemoryStream := lMemoryStream.MemoryStream();
        COPYSTREAM(lMemoryStream, lInStream);
        lBytes := lMemoryStream.ToArray();
        gUblCRMemoBase64 := lConvert.ToBase64String(lBytes);
    end;

    procedure Create_EInvoiceRequest( //pFilePath: Text;
                                    pDocType: Option Invoice,"Credit Memo","Bank Account";
                                     var pSalesInvHeader: Record "Sales Invoice Header";
                                     var pSalesCRHeader: Record "Sales Cr.Memo Header";
                                     pUblBase64: Text
                                     )
    var
        lEISetup: Record "Company Setup -  e-Invoice";
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        xsltTag: Text;
        lUuid: Text[38];
        FileNameEdoc: Text;
        SoapFileNameEdoc: Text;
        FileNameEDocResponse: Text;
        TmpServerFile: Text[1024];
        lEIC: Text;
    begin
        lEISetup.GET();
        GetCompanyInfo_eInv();
        if IsNull(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument();
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<RegisterEinvoiceRequest xmlns="https://Einvoice.tatime.gov.al/EinvoiceService/schema" Id="Request" Version= "1">   </RegisterEinvoiceRequest>';
        lXMLCurrNode := lXMLdocOut.DocumentElement;
        luuid := CreateUUID();
        //<HEADER>
        AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', Format(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime)));
        //</HEADER>
        // <EinvoiceEnvelope>
        AddElement(lXMLCurrNode, 'EinvoiceEnvelope', '', '', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        if pDocType = pDocType::Invoice then begin
            AddElement(lXMLCurrNode, 'UblInvoice', '', '', lXMLNewChild);
            lXMLNewChild.InnerText(Format(pUblBase64));
            lXMLCurrNode := lXMLCurrNode.ParentNode;
            gEInvoiceEnvironmentURL := lEISetup."E-Invoice Environment URL";
            gRegEInvoiceReqURL := lEISetup."E-Invoice Register URL";
            // Export XML
            FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
            BareName := 'E-Invoice_' + FormatNameDate + '_' + lEISetup."TCR Code" + '_' + pSalesInvHeader.NSLF;
            pSalesInvHeader.Validate(pSalesInvHeader."E-Invoice File Name", BareName);
            pSalesInvHeader.Modify();
        end
        else
            if pDocType = pDocType::"Credit Memo" then begin
                AddElement(lXMLCurrNode, 'UblCreditNote', '', '', lXMLNewChild);
                lXMLNewChild.InnerText(Format(pUblBase64));
                lXMLCurrNode := lXMLCurrNode.ParentNode;
                gEInvoiceEnvironmentURL := lEISetup."E-Invoice Environment URL";
                gRegEInvoiceReqURL := lEISetup."E-Invoice Register URL";
                // Export XML
                FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
                BareName := 'E-CreditMemo_' + FormatNameDate + lEISetup."TCR Code" + '_' + pSalesCRHeader.NSLF;
                pSalesCRHeader.Validate(pSalesCRHeader."E-Invoice File Name", BareName);
                pSalesCRHeader.Modify();
            end;

        FileNameEdoc := BareName + '_Request.xml';
        IF lEISetup."File Path Sales" <> '' THEN
            gFilePathAndName := lEISetup."File Path Sales" + FileNameEdoc
        ELSE
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
        FileNameEdocResponse := BareName + lEISetup."Response File suffixes";
        gEInvoiceResponseFilePathAndName := lEISetup."E-Invoice Response File Path" + FileNameEDocResponse;
        //Save Request file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, true);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, true);
        //Save Response file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, true);
        RBMgt.CopyServerFile(TmpServerFile, gEInvoiceResponseFilePathAndName, true);
        //therritet procedura .NET per nenshkrimin e XML
        SignGen.SignatureGenerator().GenerateSignature(gFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //therritet procedura .NET per krijimin e trupit SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gFilePathAndName);
        //therritet procedura .NET per komunkimin me tatimet
        WebService.WebService_Connection().SendData(gFilePathAndName, gEInvoiceEnvironmentURL, gRegEInvoiceReqURL, gEInvoiceResponseFilePathAndName);
        leic := ReadXml.ReadXML().ReadXMLEIC(gEInvoiceResponseFilePathAndName, gEInvoiceEnvironmentURL);
        if lEIC <> '' then begin
            if pDocType = pDocType::Invoice then begin
                Message(MessageTxt007);
                pSalesInvHeader.Validate(pSalesInvHeader.Eic, lEIC);
                pSalesInvHeader.Modify();
            end
            else
                if pDocType = pDocType::"Credit Memo" then begin
                    Message(MessageTxt007);
                    pSalesCRHeader.Validate(pSalesCRHeader.Eic, lEIC);
                    pSalesCRHeader.Modify();
                end;
        end
        else
            if pDocType = pDocType::Invoice then begin
                clear(pSalesInvHeader.Eic);
                pSalesInvHeader.Modify();
                Message(MessageTxt004);
            end
            else
                if pDocType = pDocType::"Credit Memo" then begin
                    clear(pSalesCRHeader.EIC);
                    pSalesCRHeader.Modify();
                    Message(MessageTxt004);
                end;
    end;

    procedure Get_EInvoiceRequest(pDocType: Option Invoice,"Credit Memo"; "pNo.": Code[20]; var pSalesInvHeader: Record "Sales Invoice Header"; var pSalesCrMemoHeader: Record "Sales Cr.Memo Header")
    var
        lEISetup: Record "Company Setup -  e-Invoice";
        TempBlob: Codeunit "Temp Blob";
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        xsltTag: Text;
        lUuid: Text[38];
        FileNameEdoc: Text;
        SoapFileNameEdoc: Text;
        FileNameEDocResponse: Text;
        TmpServerFile: Text[1024];
        lEIC: Text;
        InStr: InStream;
        OutStr: OutStream;
        ReadTxt: Text;
        OutTxt: Text;
    begin
        lEISetup.GET();
        GetCompanyInfo_eInv();
        if IsNull(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument();
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<GetEinvoicesRequest xmlns="https://Einvoice.tatime.gov.al/EinvoiceService/schema" xmlns:ns2="http://www.w3.org/2000/09/xmldsig#" Id="Request" Version= "1"> </GetEinvoicesRequest>';
        lXMLCurrNode := lXMLdocOut.DocumentElement;
        luuid := CreateUUID();
        FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));

        //<HEADER>
        AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', Format(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime)));
        //</HEADER>
        if pDocType = pDocType::Invoice then begin
            AddElement(lXMLCurrNode, 'EIC', '', '', lXMLNewChild);
            lXMLNewChild.InnerText(pSalesInvHeader.EIC);
            BareName := 'SalesInvoice_GET_E-InvoiceRequest' + '_' + FormatNameDate + '_' + lEISetup."TCR Code";
        end
        else
            if pDocType = pDocType::"Credit Memo" then begin
                AddElement(lXMLCurrNode, 'EIC', '', '', lXMLNewChild);
                lXMLNewChild.InnerText(pSalesCrMemoHeader.EIC);
                BareName := 'SalesCrMemo_GET_E-InvoiceRequest' + '_' + FormatNameDate + '_' + lEISetup."TCR Code";
            end;
        gEInvoiceEnvironmentURL := lEISetup."E-Invoice Environment URL";
        gRegEInvoiceReqURL := lEISetup."E-Invoice Register URL";
        FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
        FileNameEdoc := BareName + '.xml';
        FileNameEdocResponse := 'Einvoices_' + '_' + FormatNameDate + '_' + lEISetup."TCR Code" + lEISetup."Response File suffixes";
        gEInvoiceResponseFileAndName := lEISetup."Sales Response File Path" + FileNameEDocResponse;
        IF lEISetup."File Path Sales" <> '' THEN
            gFilePathAndName := lEISetup."File Path Sales" + FileNameEdoc
        ELSE
            gFilePathAndName := 'C:\Temp\XMLFiskalizimi\' + FileNameEdoc;
        //Save and download req file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, true);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, true);
        //Save and download response file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEDocResponse, true);
        RBMgt.CopyServerFile(TmpServerFile, gEInvoiceResponseFileAndName, true);
        //therriter procedura .NET per nenshkrimin e XML
        SignGen.SignatureGenerator().GenerateSignature(gFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //therritet procedura .NET per krijimin e trupit SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gFilePathAndName);
        //therritet procedura .NET per komunikimin me tatimet
        WebService.WebService_Connection().SendData(gFilePathAndName, gEInvoiceEnvironmentURL, gRegEInvoiceReqURL, gEInvoiceResponseFileAndName);
        // Message('GET_E-Invoice u dergua me sukses');
        Read_EInvoiceResponse(pDocType, gEInvoiceResponseFileAndName, "pNo.", pSalesInvHeader, pSalesCrMemoHeader, gEInvoiceEnvironmentURL);
    end;

    procedure Get_TaxPayersRequest(pDocType: Option Customer,Vendor; pTin: Code[36]; pName: Text[100]; pNo: Code[20]; var pCustomer: Record Customer; var pVendor: Record Vendor)
    var
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        xsltTag: Text;
        lUuid: Text[38];
        FileNameEdoc: Text;
        SoapFileNameEdoc: Text;
        FileNameEDocResponse: Text;
        TmpServerFile: Text[1024];
        lEIC: Text;
        lno: Code[20];
        ldocType: Option Customer,Vendor;
        lEISetup: Record "Company Setup -  e-Invoice";
        TestFile: File;

    begin
        lEISetup.Get();
        GetCompanyInfo_eInv();
        if IsNull(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument();
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<GetTaxpayersRequest xmlns="https://Einvoice.tatime.gov.al/EinvoiceService/schema" xmlns:ns2="http://www.w3.org/2000/09/xmldsig#" Id="Request" Version= "1">   </GetTaxpayersRequest>';
        lXMLCurrNode := lXMLdocOut.DocumentElement;
        luuid := CreateUUID();

        //<HEADER>
        AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', Format(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime)));
        //</HEADER>
        //<Filter>
        AddElement(lXMLCurrNode, 'Filter', '', '', lXMLNewChild);
        if pTin <> '' then begin
            lXMLCurrNode := lXMLNewChild;
            AddElement(lXMLCurrNode, 'Tin', '', '', lXMLNewChild);
            lXMLNewChild.InnerText(pTin);
        end;

        gEInvoiceEnvironmentURL := lEISetup."E-Invoice Environment URL";
        gRegEInvoiceReqURL := lEISetup."E-Invoice Register URL";
        // Export XML
        FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
        FileNameEdocResponse := FormatNameDate + lEISetup."Response File suffixes";
        gTaxPayersResponseFileAndName := lEISetup."Tax Payers Resp. File Path" + FileNameEDocResponse;
        BareName := 'GetTaxPayersRequest' + FormatNameDate + lEISetup."TCR Code" + '_';

        FileNameEdoc := BareName + '.xml';
        IF lEISetup."Tax Payers Req. File Path" <> '' THEN
            gFilePathAndName := lEISetup."Tax Payers Req. File Path" + FileNameEdoc
        ELSE
            gFilePathAndName := lEISetup."Tax Payers Req. File Path" + FileNameEdoc;
        //Save and download Request file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, true);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, true);
        //Save and download Request file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEDocResponse, true);
        RBMgt.CopyServerFile(TmpServerFile, gTaxPayersResponseFileAndName, true);
        //therritet procedura .NET per nenshkrimin e XML
        SignGen.SignatureGenerator().GenerateSignature(gFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //therritet procedura .NET per krijimin e trupit SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gFilePathAndName);
        //therritet procedura .NET per komunikimin me tatimet
        WebService.WebService_Connection().SendData(gFilePathAndName, gEInvoiceEnvironmentURL, gRegEInvoiceReqURL, gTaxPayersResponseFileAndName);
        Read_TaxPayerResponse(pdocType, gTaxPayersResponseFileAndName, pNo, pCustomer, pVendor, gEInvoiceEnvironmentURL);
    end;

    procedure Read_TaxPayerResponse(pDocType: Option Customer,Vendor; pXMLPath: Text; "No.": Code[20]; Var pCustomer: Record Customer; var pVendor: Record Vendor; pEInvoiceEnvironmentURL: Text)
    var
        lDoc: DotNet System_Xml_System_Xml_XmlDocument;
        i: Integer;
        j: Integer;
        Name: Text;
        Tin: Text;
        Address: text;
        City: Text;
        "Country/RegionCode": Text;
        ChildNode: DotNet System_Xml_System_Xml_XmlNode;
        ChildNodeList: DotNet System_Xml_System_Xml_XmlNodeList;
        NodeList: DotNet System_Xml_System_Xml_XmlNodeList;
        TagName: Text;
        ChildNodeName: Text;

    begin
        lDoc := lDoc.XmlDocument();
        lDoc.Load(pXMLPath);
        if pEInvoiceEnvironmentURL = 'https://einvoice-test.tatime.gov.al:443/EinvoiceService-v1' then begin
            TagName := 'ns2:Taxpayers';
            ChildNodeName := 'ns2:Taxpayers'
        end
        else
            if pEInvoiceEnvironmentURL = 'https://einvoice.tatime.gov.al:443/EinvoiceService-v1' then begin
                TagName := 'Taxpayers';
                ChildNodeName := 'Taxpayers'
            end;
        NodeList := lDoc.GetElementsByTagName(TagName);
        for i := 0 to NodeList.Count - 1 Do begin
            ChildNode := NodeList.ItemOf(i);
            case ChildNode.Name of
                ChildNodeName:
                    begin
                        ChildNodeList := ChildNode.ChildNodes();
                        // for j := 0 to ChildNodeList.count - 1 do begin
                        Evaluate(Name, ChildNodeList.Item(0).Attributes().GetNamedItem('Name').Value);
                        Evaluate(Tin, ChildNodeList.Item(0).Attributes().GetNamedItem('Tin').Value);
                        Evaluate(Address, ChildNodeList.Item(0).Attributes().GetNamedItem('Address').Value);
                        Evaluate(City, ChildNodeList.Item(0).Attributes().GetNamedItem('Town').Value);
                        Evaluate("Country/RegionCode", ChildNodeList.Item(0).Attributes().GetNamedItem('Country').Value);

                        if pdocType = pDocType::Customer then begin
                            if pCustomer."VAT Registration No." <> Tin then
                                pCustomer.Validate(pCustomer."VAT Registration No.", Tin);
                            if pCustomer.Name <> Name then
                                pCustomer.Validate(pCustomer.Name, Name);
                            if pCustomer.Address <> Address then
                                pCustomer.Validate(pCustomer.Address, Address);
                            if pCustomer.City <> City then
                                pCustomer.Validate(pCustomer.City, City);
                            if pCustomer."Country/Region Code" <> "Country/RegionCode" then
                                pCustomer.Validate(pCustomer."Country/Region Code", "Country/RegionCode");
                            pCustomer.Modify();
                            Message(MessageTxt006);
                        end
                        else
                            if pDocType = pDocType::Vendor then begin
                                if pVendor."VAT Registration No." <> Tin then
                                    pVendor.Validate(pVendor."VAT Registration No.", Tin);
                                if pVendor.Name <> Name then
                                    pVendor.Validate(pVendor.Name, Name);
                                if pVendor.Address <> Address then
                                    pVendor.Validate(pVendor.Address, Address);
                                if pVendor.City <> City then
                                    pVendor.Validate(pVendor.City, City);
                                if pVendor."Country/Region Code" <> "Country/RegionCode" then
                                    pVendor.Validate(pVendor."Country/Region Code", "Country/RegionCode");
                                pVendor.Modify();
                                Message(MessageTxt006);
                            end;
                        // end;
                    end;
            end;
        end;
    end;

    procedure Read_EInvoiceResponse(pDocType: Option Invoice,"Credit Memo"; pXMLPath: Text; "No.": Code[20]; var pSalesInvHeader: Record "Sales Invoice Header"; var pSalesCrMemoHeader: Record "Sales Cr.Memo Header"; pEInvoiceEnvironmentURL: Text);
    var
        lDoc: DotNet System_Xml_System_Xml_XmlDocument;
        i: Integer;
        j: Integer;
        Eic: Text;
        DocNum: Text;
        RecDateTime: text;
        Status: Text;
        Amount: Text;
        PartyType: Text;
        DocType: Text;
        PdfBase64: Text;
        PDFName: Text;
        ChildNode: DotNet System_Xml_System_Xml_XmlNode;
        ChildNodeList: DotNet System_Xml_System_Xml_XmlNodeList;
        NodeList: DotNet System_Xml_System_Xml_XmlNodeList;
        lFileManagement: Codeunit "File Management";
        lFile: File;
        lMemoryStream: DotNet mscorlib_System_IO_MemoryStream;
        lFileText: Text;
        lBytes: DotNet mscorlib_System_Array;
        lConvert: DotNet mscorlib_System_Convert;
        lOutStream: OutStream;
        lServerName: Text;
        lLocalPath: Text;
        lLocalName: Text;
        lFileName: Text;
        TagName: Text;
        ChildNodeName: Text;
    begin
        lDoc := lDoc.XmlDocument();
        lDoc.Load(pXMLPath);
        if pEInvoiceEnvironmentURL = 'https://einvoice-test.tatime.gov.al:443/EinvoiceService-v1' then begin
            TagName := 'ns2:Pdf';
            ChildNodeName := 'ns2:Pdf'
        end
        else
            if pEInvoiceEnvironmentURL = 'https://einvoice.tatime.gov.al:443/EinvoiceService-v1' then begin
                TagName := 'Pdf';
                ChildNodeName := 'Pdf'
            end;
        NodeList := lDoc.GetElementsByTagName(TagName);
        if NodeList.Count <> 0 then begin
            for i := 0 to NodeList.Count - 1 Do begin
                ChildNode := NodeList.ItemOf(i);
                case ChildNode.Name of
                    ChildNodeName:
                        begin
                            ChildNodeList := ChildNode.ChildNodes();
                            Evaluate(PdfBase64, ChildNodeList.Item(j).Value());
                            lFileName := 'E_Invoice_' + pSalesCrMemoHeader.EIC + pSalesInvHeader.EIC + '.pdf';
                            lBytes := lConvert.FromBase64String(PdfBase64);
                            lMemoryStream := lMemoryStream.MemoryStream(lBytes);
                            lServerName := lFileManagement.ServerTempFileName(lFileName);
                            lFile.Create(lServerName);
                            lFile.CreateOutStream(lOutStream);
                            lMemoryStream.WriteTo(lOutStream);
                            lFile.Close();
                            lLocalPath := lFileManagement.GetDirectoryName(lFileName);
                            lLocalName := lLocalPath + '\' + lFileName;
                            lFileManagement.DownloadToFile(lServerName, lLocalName);
                        end;
                end;
            end;
        end
        else
            Message(MessageTxt005);
    end;
    //Eshte krijuar strukutra e XML, por nuk eshte perdorur sepse duhet menaxhuar pjesa e pranimit te faturave
    procedure Change_EInvoiceStatus(pDocType: Option Invoice,"Credit Memo","Bank Account"; "No.": Code[20]; var SalesInvHeader: Record "Sales Invoice Header"; var SalesCrMemoHeader: Record "Sales Cr.Memo Header")
    var
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lXMLCurrNode: DotNet System_Xml_System_Xml_XmlNode;
        lXMLNewChild: DotNet System_Xml_System_Xml_XmlNode;
        xsltTag: Text;
        lUuid: Text[38];
        FileNameEdoc: Text;
        SoapFileNameEdoc: Text;
        FileNameEDocResponse: Text;
        TmpServerFile: Text[1024];
        lEIC: Text;
        lEISetup: Record "Company Setup -  e-Invoice";
    begin
        lEISetup.Get();
        GetCompanyInfo_eInv();
        if IsNull(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument();
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<EinvoiceChangeStatusRequest xmlns="https://Einvoice.tatime.gov.al/EinvoiceService/schema" xmlns:ns2="http://www.w3.org/2000/09/xmldsig#" Id="Request" Version= "1" >   </EinvoiceChangeStatusRequest>';

        lXMLCurrNode := lXMLdocOut.DocumentElement;
        luuid := CreateUUID();
        //<HEADER>
        AddElement(lXMLCurrNode, 'Header', '', '', lXMLNewChild);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'UUID', lUuid);
        AddAttribute(lXMLdocOut, lXMLNewChild, 'SendDateTime', Format(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime)));
        //</HEADER>
        AddElement(lXMLCurrNode, 'EICs', '', '', lXMLNewChild);
        lXMLCurrNode := lXMLNewChild;
        AddElement(lXMLCurrNode, 'EIC', '', '', lXMLNewChild);
        lXMLNewChild.InnerText('EIC');
        lXMLCurrNode := lXMLCurrNode.ParentNode;
        AddElement(lXMLCurrNode, 'EinStatus', '', '', lXMLNewChild);
        lXMLNewChild.InnerText('EiStatus');
        gEInvoiceEnvironmentURL := CompanyInfo_eInv."E-Invoice Environment URL";
        gRegEInvoiceReqURL := CompanyInfo_eInv."E-Invoice Register URL";
        gSalesResponseFilePathAndName := CompanyInfo_eInv."Sales Response File Path";
        FileNameEdocResponse := 'Sales_Invoices' + CompanyInfo_eInv."Response File suffixes";//_Response.xml'; //FormatNameDate + 'deposite_response' + '.xml';
        // Export part
        FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
        BareName := 'ChangeStatus_' + FormatNameDate + CompanyInfo_eInv."TCR Code";

        FileNameEdoc := BareName + '.xml';
        IF CompanyInfo_eInv."File Path Sales" <> '' THEN
            gFilePathAndName := CompanyInfo_eInv."File Path Sales" + FileNameEdoc
        ELSE
            gFilePathAndName := 'C:\Temp\Skerdio1.xml';
        //Save and download Request file
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, true);
        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, true);

        //therritet procedura .NET per nenshkrimin e XML
        SignGen.SignatureGenerator().GenerateSignature(gFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
        //therritet procedura .NET per krijimin e trupit SOAP
        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(gFilePathAndName);
        //therritet procedura .NET per komunikimin me tatimet
        WebService.WebService_Connection().SendData(gFilePathAndName, gEInvoiceEnvironmentURL, gRegEInvoiceReqURL, gSalesResponseFilePathAndName);
        leic := ReadXml.ReadXML().ReadXMLNIVF(gSalesResponseFilePathAndName + FileNameEdocResponse);//'C:\\Temp\\Sales_Invoices_Response\\Sales_Invoices_Response.xml');
        if lEIC <> '' then
            Message(MessageTxt003)
        else
            Message(MessageTxt004);
    end;

    procedure Resend_EInvoice(
                                pFileName: Text;
                                pXMLPath: Text;
                                pNo: Code[20];
                                pDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order","Bank Account Ledger Entry"
                               ): Text
    var
        lEISetup: Record "Company Setup -  e-Invoice";
        TmpServerFile: Text[1024];
        lSalesInvHeader: Record "Sales Invoice Header";
        lSalesCRMemo: Record "Sales Cr.Memo Header";
        FileNameEdocResponse: Text;
        lXMLdocOut: DotNet System_Xml_System_Xml_XmlDocument;
        lEIC: Text;

    begin
        if IsNull(lXMLdocOut) then
            lXMLdocOut := lXMLdocOut.XmlDocument();
        DocNameSpace := 'http://www.sat.gob.mx/cfd/3';
        lXMLdocOut.LoadXml := '<RegisterEinvoiceRequest xmlns="https://Einvoice.tatime.gov.al/EinvoiceService/schema" Id="Request" Version= "1">   </RegisterEinvoiceRequest>';

        lEISetup.Get();
        gFilePathAndName := pXMLPath + pFileName + '_request.xml';
        gEInvoiceEnvironmentURL := lEISetup."E-Invoice Environment URL";
        gRegEInvoiceReqURL := lEISetup."E-Invoice Register URL";

        FileNameEdocResponse := pFileName + lEISetup."Response File suffixes";
        gEInvoiceResponseFilePathAndName := lEISetup."E-Invoice Response File Path" + FileNameEDocResponse;
        //Save and download RESPONSE FILE
        TmpServerFile := RBMgt.ServerTempFileName('.xml');
        lXMLdocOut.Save(TmpServerFile);
        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, true);
        RBMgt.CopyServerFile(TmpServerFile, gEInvoiceResponseFilePathAndName, true);

        WebService.WebService_Connection().SendData(gFilePathAndName, gEInvoiceEnvironmentURL, gRegEInvoiceReqURL, gEInvoiceResponseFilePathAndName);
        leic := ReadXml.ReadXML().ReadXMLEIC(gEInvoiceResponseFilePathAndName, gEInvoiceEnvironmentURL);
        if lEIC <> '' then begin
            if pDocType = pDocType::Invoice then begin
                lSalesInvHeader.GET(pNo);
                Message(MessageTxt007);
                lSalesInvHeader.Validate(lSalesInvHeader.Eic, lEIC);
                lSalesInvHeader.Modify();
            end
            else
                if pDocType = pDocType::"Credit Memo" then begin
                    lSalesCRMemo.GEt(pNo);
                    Message(MessageTxt007);
                    lSalesCRMemo.Validate(lSalesCRMemo.Eic, lEIC);
                    lSalesCRMemo.Modify();
                end;
        end
        else
            Message(MessageTxt004);
    END;


    procedure ResendInvoice(
                            pFileName: Text;
                            pXMLPath: Text;
                            psubseqDelType: Enum "Subsequent Delivery Type";
                            pNo: Code[20];
                            pBankAccLEdgEntryRefNo: Integer;
                            pDocType: Option Invoice,"Credit Memo","Bank Account","Transfer Order","Bank Account Ledger Entry"
                           ): Text
    var
        lCompanyInfo: Record "Company Information";
        lEISetup: Record "Company Setup -  e-Invoice";
        lSalesInvHeader: Record "Sales Invoice Header";
        lSalesCRMemo: Record "Sales Cr.Memo Header";
        TransShipHeader: Record "Transfer Shipment Header";
        lBankAccount: Record "Bank Account";
        lBankAccLedgEntry: Record "Bank Account Ledger Entry";
        SalesInvHeader: Record "Sales Invoice Header";
        SalesCRMemo: Record "Sales Cr.Memo Header";
        FileNameEdoc: Text[1024];
        TmpServerFile: Text[1024];
        lNIVF: Text;
        lNivfsh: Text;
        lFCDC: TExt;
        FileNameEdocResponse: Text;
        lRidergimFilePathAndName: Text;
        lRidergimFileNameEdoc: Text[1024];

    begin
        GetCompanyInfo_eInv();
        lCompanyInfo.Get();
        lEISetup.Get();
        if (pDocType = pDocType::Invoice) then begin
            gAppendDoc := gAppendDoc.XmlDocument();
            gAppendDoc.Load(pXMLPath + pFileName + '_Request.xml');
            GNodeList := gAppendDoc.GetElementsByTagName('Header');
            GChildNode := GNodeList.ItemOf(0);
            lSalesInvHeader.Get(pNo);
            AddAttribute(gAppendDoc, GChildNode, 'SubseqDelivType', Format(psubseqDelType));
            lSalesInvHeader.Validate(lSalesInvHeader."Subseq Deliv Type", psubseqDelType);
            FileNameEdoc := pFileName + '_Request.xml';
            gFilePathAndName := pXMLPath + FileNameEdoc;
            lRidergimFileNameEdoc := 'Ridergimi_' + pFileName + '_Request.xml';
            lRidergimFilePathAndName := pXMLPath + lRidergimFileNameEdoc;
            gEnvironmentURL := lEISetup."Environment URL";
            gRegInvoiceReqURL := lEISetup."Register Invoice Request URL";
            FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
            FileNameEdocResponse := FormatNameDate + '_' + lEISetup."TCR Code" + '_' + lSalesInvHeader.NSLF + lEISetup."Response File suffixes";
            gSalesResponseFilePathAndName := lEISetup."Sales Response File Path" + FileNameEdocResponse;
        end
        else
            if (pDocType = pDocType::"Credit Memo") then begin
                lCompanyInfo.Get();
                lEISetup.Get();
                gAppendDoc := gAppendDoc.XmlDocument();
                gAppendDoc.Load(pXMLPath + pFileName + '_Request.xml');
                GNodeList := gAppendDoc.GetElementsByTagName('Header');
                GChildNode := GNodeList.ItemOf(0);
                lSalesCRMemo.Get(pNo);
                AddAttribute(gAppendDoc, GChildNode, 'SubseqDelivType', Format(psubseqDelType));
                lSalesCRMemo.Validate(lSalesCRMemo."Subseq Deliv Type", psubseqDelType);

                FileNameEdoc := pFileName + '_Request.xml';
                gFilePathAndName := pXMLPath + FileNameEdoc;
                lRidergimFileNameEdoc := 'Ridergimi_' + pFileName + '_Request.xml';
                lRidergimFilePathAndName := pXMLPath + lRidergimFileNameEdoc;
                gEnvironmentURL := lEISetup."Environment URL";
                gRegInvoiceReqURL := lEISetup."Register Invoice Request URL";
                FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
                FileNameEdocResponse := FormatNameDate + '_' + lEISetup."TCR Code" + '_' + lSalesInvHeader.NSLF + lEISetup."Response File suffixes";
                gSalesResponseFilePathAndName := lEISetup."Sales Response File Path" + FileNameEdocResponse;
            end
            else
                if (pDocType = pDocType::"Bank Account") then begin
                    lCompanyInfo.Get();
                    lEISetup.Get();
                    gAppendDoc := gAppendDoc.XmlDocument();
                    gAppendDoc.Load(pXMLPath + pFileName);
                    GNodeList := gAppendDoc.GetElementsByTagName('Header');
                    GChildNode := GNodeList.ItemOf(0);
                    lBankAccount.Get(pNo);
                    AddAttribute(gAppendDoc, GChildNode, 'SubseqDelivType', Format(psubseqDelType));
                    lBankAccount.Validate(lBankAccount."Subseq Deliv Type", psubseqDelType);

                    FileNameEdoc := pFileName;
                    gFilePathAndName := pXMLPath + FileNameEdoc;
                    lRidergimFileNameEdoc := 'Ridergimi_' + pFileName;
                    lRidergimFilePathAndName := pXMLPath + lRidergimFileNameEdoc;
                    gEnvironmentURL := lEISetup."Environment URL";
                    gRegCASHReqUrl := lEISetup."Register Cash Request URL";
                    FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
                    FileNameEdocResponse := FormatNameDate + '_' + lEISetup."TCR Code" + lEISetup."Response File suffixes";
                    gCashRegResponseFilePathAndName := lEISetup."Cash Reg Response File Path" + FileNameEdocResponse;
                    //save and download Simple File
                    TmpServerFile := RBMgt.ServerTempFileName('xml');
                    gAppendDoc.Save(TmpServerFile);
                    RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
                    RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
                    //save and download SOAP ridergim file
                    TmpServerFile := RBMgt.ServerTempFileName('xml');
                    gAppendDoc.Save(TmpServerFile);
                    RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + lRidergimFileNameEdoc, TRUE);
                    RBMgt.CopyServerFile(TmpServerFile, lRidergimFilePathAndName, TRUE);
                    //save and download SOAP Response
                    TmpServerFile := RBMgt.ServerTempFileName('xml');
                    gAppendDoc.Save(TmpServerFile);
                    RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
                    RBMgt.CopyServerFile(TmpServerFile, gCashRegResponseFilePathAndName, TRUE);
                    //Ketu therritet .Net per nenshkrimin me signature
                    SignGen.SignatureGenerator().GenerateSignature(lRidergimFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
                    //Ketu therritet .Net per krijimin e trupit SOAP
                    FiscCreateSoap.CreateSoapEnvelope().CreateSoap(lRidergimFilePathAndName);
                    //Ketu therritet .Net per komunikimin me tatimet
                    WebService.WebService_Connection().SendData(lRidergimFilePathAndName, gEnvironmentURL, gRegCASHReqUrl, gCashRegResponseFilePathAndName);
                    lFCDC := ReadXml.ReadXML().ReadXMLFCDC(gCashRegResponseFilePathAndName);
                    if lFCDC = '' then
                        Error(ErrorTxt018)
                    else begin
                        lBankAccount.Validate(lBankAccount.FCDC, lFCDC);
                        lBankAccount.Validate(lBankAccount."Subseq Deliv Type", psubseqDelType);
                        lBankAccount.Modify();
                        Message(MessageTxt002);
                    end;
                end
                else
                    if (pDocType = pDocType::"Bank Account Ledger Entry") then begin
                        lCompanyInfo.Get();
                        lEISetup.Get();
                        gAppendDoc := gAppendDoc.XmlDocument();
                        gAppendDoc.Load(pXMLPath + pFileName);
                        GNodeList := gAppendDoc.GetElementsByTagName('Header');
                        GChildNode := GNodeList.ItemOf(0);
                        lBankAccLedgEntry.Get(pBankAccLEdgEntryRefNo);
                        AddAttribute(gAppendDoc, GChildNode, 'SubseqDelivType', Format(psubseqDelType));
                        lBankAccLedgEntry.Validate(lBankAccLedgEntry."Subseq Deliv Type", psubseqDelType);

                        FileNameEdoc := pFileName;
                        gFilePathAndName := pXMLPath + FileNameEdoc;
                        lRidergimFileNameEdoc := 'Ridergimi_' + pFileName;
                        lRidergimFilePathAndName := pXMLPath + lRidergimFileNameEdoc;
                        gEnvironmentURL := lEISetup."Environment URL";
                        gRegCASHReqUrl := lEISetup."Register Cash Request URL";
                        FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
                        FileNameEdocResponse := FormatNameDate + '_' + lEISetup."TCR Code" + lEISetup."Response File suffixes";
                        gCashRegResponseFilePathAndName := lEISetup."Cash Reg Response File Path" + FileNameEdocResponse;
                        //save and download Simple File
                        TmpServerFile := RBMgt.ServerTempFileName('xml');
                        gAppendDoc.Save(TmpServerFile);
                        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
                        RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
                        //save and download SOAP ridergim file
                        TmpServerFile := RBMgt.ServerTempFileName('xml');
                        gAppendDoc.Save(TmpServerFile);
                        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + lRidergimFileNameEdoc, TRUE);
                        RBMgt.CopyServerFile(TmpServerFile, lRidergimFilePathAndName, TRUE);
                        //save and download SOAP Response
                        TmpServerFile := RBMgt.ServerTempFileName('xml');
                        gAppendDoc.Save(TmpServerFile);
                        RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
                        RBMgt.CopyServerFile(TmpServerFile, gCashRegResponseFilePathAndName, TRUE);
                        //Ketu therritet .Net per nenshkrimin me signature
                        SignGen.SignatureGenerator().GenerateSignature(lRidergimFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
                        //Ketu therritet .Net per krijimin e trupit SOAP
                        FiscCreateSoap.CreateSoapEnvelope().CreateSoap(lRidergimFilePathAndName);
                        //Ketu therritet .Net per komunikimin me tatimet
                        WebService.WebService_Connection().SendData(lRidergimFilePathAndName, gEnvironmentURL, gRegCASHReqUrl, gCashRegResponseFilePathAndName);
                        lFCDC := ReadXml.ReadXML().ReadXMLFCDC(gCashRegResponseFilePathAndName);
                        if lFCDC = '' then
                            Error(ErrorTxt018)
                        else begin
                            lBankAccLedgEntry.Validate(lBankAccLedgEntry.FCDC, lFCDC);
                            lBankAccLedgEntry.Validate(lBankAccLedgEntry."Subseq Deliv Type", psubseqDelType);
                            lBankAccLedgEntry.Modify();
                            Message(MessageTxt002);
                        end;
                    end
                    else
                        if (pDocType = pDocType::"Transfer Order") then begin
                            lCompanyInfo.Get();
                            lEISetup.Get();
                            gAppendDoc := gAppendDoc.XmlDocument();
                            gAppendDoc.Load(pXMLPath + pFileName);
                            GNodeList := gAppendDoc.GetElementsByTagName('Header');
                            GChildNode := GNodeList.ItemOf(0);
                            TransShipHeader.Get(pNo);
                            AddAttribute(gAppendDoc, GChildNode, 'SubseqDelivType', Format(psubseqDelType));
                            FileNameEdoc := pFileName;
                            gFilePathAndName := pXMLPath + FileNameEdoc;
                            lRidergimFileNameEdoc := 'Ridergimi_' + pFileName;
                            lRidergimFilePathAndName := pXMLPath + lRidergimFileNameEdoc;
                            gEnvironmentURL := lEISetup."Environment URL";
                            gRegInvoiceReqURL := lEISetup."Register Invoice Request URL";
                            FormatNameDate := FormatDate(FiscIICGen.IICGenerator().DateTimeFormat(CurrentDateTime));
                            FileNameEdocResponse := pFileName + lEISetup."Response File suffixes";
                            gSalesResponseFilePathAndName := lEISetup."Companion Inv. Resp. File Path" + FileNameEdocResponse;
                            //save and download Simple file
                            TmpServerFile := RBMgt.ServerTempFileName('xml');
                            gAppendDoc.Save(TmpServerFile);
                            RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
                            RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
                            //save and download SOAP ridergim file
                            TmpServerFile := RBMgt.ServerTempFileName('xml');
                            gAppendDoc.Save(TmpServerFile);
                            RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + lRidergimFileNameEdoc, TRUE);
                            RBMgt.CopyServerFile(TmpServerFile, lRidergimFilePathAndName, TRUE);
                            //save and download Response
                            TmpServerFile := RBMgt.ServerTempFileName('xml');
                            gAppendDoc.Save(TmpServerFile);
                            RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
                            RBMgt.CopyServerFile(TmpServerFile, gSalesResponseFilePathAndName, TRUE);
                            //Ketu therritet .Net per nenshkrimin me signature
                            SignGen.SignatureGenerator().GenerateSignature(lRidergimFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
                            //Ketu therritet .Net per krijimin e trupit SOAP
                            FiscCreateSoap.CreateSoapEnvelope().CreateSoap(lRidergimFilePathAndName);
                            //Ketu therritet .Net per komunkimim me tatimet
                            WebService.WebService_Connection().SendData(lRidergimFilePathAndName, gEnvironmentURL, gRegInvoiceReqURL, gSalesResponseFilePathAndName);
                            lnivfsh := ReadXml.ReadXML().ReadXMLNIVFSH(gSalesResponseFilePathAndName);
                            if lnivfsh = '' then
                                Error(ErrorTxt017)
                            else begin
                                TransShipHeader.Validate(TransShipHeader.NIVFSh, lNIVFsh);
                                TransShipHeader.Validate(TransShipHeader."Subseq Deliv Type", psubseqDelType);
                                TransShipHeader.Modify();
                                Message(MessageTxt001);
                            end;
                        end;
        if (pDocType = pDocType::"Credit Memo") or (pDocType = pDocType::Invoice) then begin
            //save and download Simple File
            TmpServerFile := RBMgt.ServerTempFileName('xml');
            gAppendDoc.Save(TmpServerFile);
            RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdoc, TRUE);
            RBMgt.CopyServerFile(TmpServerFile, gFilePathAndName, TRUE);
            //save and download SOAP Ridergim File
            TmpServerFile := RBMgt.ServerTempFileName('xml');
            gAppendDoc.Save(TmpServerFile);
            RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + lRidergimFileNameEdoc, TRUE);
            RBMgt.CopyServerFile(TmpServerFile, lRidergimFilePathAndName, TRUE);
            //save and download SOAP Ridergim File
            TmpServerFile := RBMgt.ServerTempFileName('xml');
            gAppendDoc.Save(TmpServerFile);
            RBMgt.CopyServerFile(TmpServerFile, RBMgt.GetDirectoryName(TmpServerFile) + '\' + FileNameEdocResponse, TRUE);
            RBMgt.CopyServerFile(TmpServerFile, gSalesResponseFilePathAndName, TRUE);
            //Ketu therritet .Net nenshkrimin e signature
            SignGen.SignatureGenerator().GenerateSignature(lRidergimFilePathAndName, lEISetup."Security Certificate Path", lEISetup."Security Certificate pass key");
            //Ketu therritet .Net per krijmin e trupit SOAP
            FiscCreateSoap.CreateSoapEnvelope().CreateSoap(lRidergimFilePathAndName);
            //Ketu therritet .Net per komunkimin me tatimet
            WebService.WebService_Connection().SendData(lRidergimFilePathAndName, gEnvironmentURL, gRegInvoiceReqURL, gSalesResponseFilePathAndName);
            lNIVF := ReadXml.ReadXML().ReadXMLNIVF(gSalesResponseFilePathAndName);
            if lNIVF = '' then
                Error(ErrorTxt017)
            ELSE begin
                IF pDocType = pDocType::"Credit Memo" THEN begin
                    lSalesCRMemo.Validate(lSalesCRMemo.NIVF, lNIVF);
                    lSalesCRMemo.Modify();
                    Message(MessageTxt001);
                    if (lSalesCRMemo.NIVF <> '') and (lSalesCRMemo."Is E-Invoice") then begin
                        Create_UBL_ECreditMemo(lSalesCRMemo);
                        Create_EInvoiceRequest(gDocType::"Credit Memo", SalesInvHeader, lSalesCRMemo, gUblCRMemoBase64);
                    end;
                end
                else
                    IF pDocType = pDocType::Invoice THEN begin
                        lSalesInvHeader.Validate(lSalesInvHeader.NIVF, lNIVF);
                        lSalesInvHeader.Modify();
                        Message(MessageTxt001);
                        if (lSalesInvHeader.NIVF <> '') and (lSalesInvHeader."Is E-Invoice") then begin
                            Create_UBL_EInvoice(lSalesInvHeader);
                            Create_EInvoiceRequest(gDocType::Invoice, lSalesInvHeader, SalesCRMemo, gUblInvoiceBase64);
                        end;
                    end;
            end;
        end;
    end;

    local procedure FormatBoolean(BoolValue: Boolean): Text[10];
    begin
        exit(Format(BoolValue, 0, 9));
    end;

    procedure FormatDateTime(DocDate: Date): Text[30];
    begin
        exit(FORMAT(DocDate, 10, '<Year4>-<Month,2>-<Day,2>'));
    end;

    procedure FormatAmount(InAmount: Decimal): Text[30];
    begin
        InAmount := ROUND(InAmount, 0.01);
        EXIT(FORMAT((InAmount), 0, '<Sign><Integer><Decimals,3><Comma,.>'));
    end;

    procedure FormatDate(Docdate: Text): Text
    var
        data: Text;
    begin
        data := CopyStr(Docdate, 1, StrPos(Docdate, '-') - 1) + CopyStr(Docdate, StrPos(Docdate, '-') + 1, 2) + CopyStr(Docdate, StrPos(Docdate, '-') + 4, 2) + CopyStr(Docdate, StrPos(Docdate, 'T') + 1, 2) + CopyStr(Docdate, StrPos(Docdate, ':') + 1, 2) + CopyStr(Docdate, StrPos(Docdate, ':') + 4, 2);
        exit(data);
    end;

    procedure RemoveInvalidChars(PassedStr: Text[1024]): Text[1024];
    begin
        PassedStr := RemoveExtraWhiteSpaces(PassedStr);
        EXIT(PassedStr);
    end;

    procedure RemoveExtraWhiteSpaces(StrParam: Text[1024]) StrReturn: Text[1024];
    var
        Cntr1: Integer;
        Cntr2: Integer;
        WhiteSpaceFound: Boolean;
    begin
        StrParam := DELCHR(StrParam, '<>', ' ');
        WhiteSpaceFound := FALSE;
        Cntr2 := 1;
        FOR Cntr1 := 1 TO STRLEN(StrParam) DO BEGIN
            IF (StrParam[Cntr1] <> ' ') THEN BEGIN
                WhiteSpaceFound := FALSE;
                StrReturn[Cntr2] := StrParam[Cntr1];
                Cntr2 += 1;
            END ELSE BEGIN
                IF NOT WhiteSpaceFound THEN BEGIN
                    WhiteSpaceFound := TRUE;
                    StrReturn[Cntr2] := StrParam[Cntr1];
                    Cntr2 += 1;
                END;
            END;
        END;
    end;

    procedure SetGlobal(pPurchNo: Code[20]; pVendorNo: Code[20]; pDDTNo: Code[20]; pCrossRef: Code[20]; pQty: Decimal; pPrice: Decimal; pLineNo: Integer);
    var
        lVendors: Record 23;
    begin
        CLEAR(DDTNoFilter);
        CLEAR(CrossRefFilter);
        CLEAR(QtyFilter);
        CLEAR(PriceFilter);
        CLEAR(LineNoFilter);

        lVendors.GET(pVendorNo);
        gPurchaseNo := pPurchNo;
        LineNoFilter := pLineNo;
        VendorFilter := pVendorNo;
    end;

    procedure GetUTCOffset(): Text
    var
        fixedTime: Time;
        fixedTimeInUTCSysTime: Time;
        zoneTime: Time;
        sysDateFixedTimeTxt: Text;
        fixedTimeInUTCSysTimeTxt: Text;
        fixedTimeDiffUTCSysTimeTxt: Text;
        timeZoneSign: Text;
        lEISetup: Record "Company Setup -  e-Invoice";
    begin
        if lEISetup.get() then;
        //GetUTCOffset
        // convert string to prefered type, in this case Time
        Evaluate(fixedTime, '17:00');
        // convert today date + fixed time into the local time zone
        sysDateFixedTimeTxt := FORMAT(CREATEDATETIME(TODAY, fixedTime), 0, 9);
        // gets only time including time zone in zulu format
        fixedTimeInUTCSysTimeTxt := COPYSTR(sysDateFixedTimeTxt, STRPOS(sysDateFixedTimeTxt, 'T') + 1);
        // removes zulu time zone
        fixedTimeInUTCSysTimeTxt := COPYSTR(fixedTimeInUTCSysTimeTxt, 1, STRLEN(fixedTimeInUTCSysTimeTxt) - 1);
        // convert string to Time
        Evaluate(fixedTimeInUTCSysTime, fixedTimeInUTCSysTimeTxt);
        // gets the difference between the first hardcoded time, 17:00, and the system changed time with time zone
        fixedTimeDiffUTCSysTimeTxt := FORMAT((fixedTime - fixedTimeInUTCSysTime) / 3600);
        // default sign
        timeZoneSign := '+';
        // check time zone sign
        if fixedTimeDiffUTCSysTimeTxt[1] = '-' then begin
            timeZoneSign := '-';
            // remove time zone sign character
            fixedTimeDiffUTCSysTimeTxt := DELCHR(fixedTimeDiffUTCSysTimeTxt, '=', '-');
        end;
        // convert difference into Time
        Evaluate(zoneTime, fixedTimeDiffUTCSysTimeTxt);
        // format difference into  +/-hh:mm
        exit(FORMAT(zoneTime, 0, timeZoneSign + '<hours24,2>:<minutes,2>'));
    end;

    procedure GetSelectionFilter(var TempRecRef: RecordRef; SelectionFieldID: Integer): Text
    var
        RecRef: RecordRef;
        FieldRef: FieldRef;
        FirstRecRef: Text;
        LastRecRef: Text;
        SelectionFilter: Text;
        SavePos: Text;
        TempRecRefCount: Integer;
        More: Boolean;
        SelecFilterMnG: Codeunit SelectionFilterManagement;
    begin
        if TempRecRef.IsTemporary then begin
            RecRef := TempRecRef.Duplicate;
            RecRef.Reset();
        end else
            RecRef.Open(TempRecRef.Number);
        TempRecRefCount := TempRecRef.Count();
        if TempRecRefCount > 0 then begin
            TempRecRef.Ascending(true);
            TempRecRef.Find('-');
            while TempRecRefCount > 0 do begin
                TempRecRefCount := TempRecRefCount - 1;
                RecRef.SetPosition(TempRecRef.GetPosition);
                RecRef.Find;
                FieldRef := RecRef.Field(SelectionFieldID);
                FirstRecRef := Format(FieldRef.Value);
                LastRecRef := FirstRecRef;
                More := TempRecRefCount > 0;
                while More do
                    if RecRef.Next = 0 then
                        More := false
                    else begin
                        SavePos := TempRecRef.GetPosition;
                        TempRecRef.SetPosition(RecRef.GetPosition);
                        More := false;
                        TempRecRef.SetPosition(SavePos);
                    end;
                if SelectionFilter <> '' then
                    SelectionFilter := SelectionFilter + '|';
                SelectionFilter := SelectionFilter + SelecFilterMnG.AddQuotes(LastRecRef);
                if TempRecRefCount > 0 then
                    TempRecRef.Next;
            end;
            exit(SelectionFilter);
        end;
    end;

    procedure GetSelectionFilterForPostedSalesInv(var SalesInvHeader: Record "Sales Invoice Header"): Text
    var
        RecRef: RecordRef;
        SelectionFilterManagement: Codeunit SelectionFilterManagement;
    begin
        RecRef.GetTable(SalesInvHeader);
        exit(GetSelectionFilter(RecRef, SalesInvHeader.FieldNo(NSLF)));
    end;

    local procedure GetIsoCode(pcountryCode: Code[20]): text
    var
        lCountryRegion: Record "Country/Region";
    begin
        if lCountryRegion.Get(pcountryCode) then
            exit(lCountryRegion."ISO Code")
        else
            exit('AL');
    end;

    [EventSubscriber(ObjectType::Table, Database::"VAT Amount Line", 'OnInsertLineOnBeforeModify', '', true, true)]
    local procedure "VAT Amount Line_OnInsertLineOnBeforeModify"(
                                                                var VATAmountLine: Record "VAT Amount Line";
                                                                 FromVATAmountLine: Record "VAT Amount Line"
                                                                 )
    begin
        VATAmountLine."VAT Id. Counter" += 1;
    end;

    [EventSubscriber(ObjectType::Table, Database::"VAT Amount Line", 'OnInsertLineOnBeforeInsert', '', true, true)]
    local procedure "VAT Amount Line_OnInsertLineOnBeforeInsert"(
                                                                var VATAmountLine: Record "VAT Amount Line";
                                                                var FromVATAmountLine: Record "VAT Amount Line"
                                                                )
    begin
        VATAmountLine."VAT Id. Counter" := 1;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterCheckSalesDoc', '', true, true)]
    local procedure "Sales-Post_OnAfterCheckSalesDoc"(
                                                      var SalesHeader: Record "Sales Header";
                                                      CommitIsSuppressed: Boolean;
                                                      WhseShip: Boolean;
                                                      WhseReceive: Boolean
                                                      )
    var
        lPaymentMethod: Record "Payment Method";
        lBankAcc: Record "Bank Account";
        lCustomer: Record Customer;
        lCashUserSetup: Record CashUserSetup;
        lUserSet: Record "User Setup";
        lCompInfo: Record "Company Information";
        lEiSetup: Record "Company Setup -  e-Invoice";
    begin
        lCompInfo.Get();
        lEiSetup.Get();
        lUserSet.Get(UserId());

        // lCashUserSetup.GET(lUserSet."Operator Code", lUserSet."Bank Acc. No.");
        SalesHeader.CalcFields("Amount Including VAT");
        lCustomer.Get(SalesHeader."Sell-to Customer No.");
        SalesHeader.CalcFields("Invoice Discount Amount");

        if not (SalesHeader."FE Deactivate") and (lEiSetup."FE Activated") then begin
            if SalesHeader."Payment Method Code" <> '' then begin
                lPaymentMethod.SetRange(lPaymentMethod.Code, SalesHeader."Payment Method Code");
                lPaymentMethod.SetRange(lPaymentMethod."Bal. Account Type", SalesHeader."Bal. Account Type");
                if lPaymentMethod.FindSet() then begin
                    if SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::CASH then begin
                        if SalesHeader."Bank ACC. No." <> '' then
                            lBankAcc.Get(SalesHeader."Bank Acc. No.")
                        else
                            Error(ErrorTxt011);                            // lBankAcc.Get(lCashUserSetup."Bank Acc. No.");
                        if (lBankAcc."Is Cash") then begin
                            if not lCashUserSetup.GET(lUserSet."Operator Code", SalesHeader."Bank ACC. No.", UserId()) then
                                // if (lBankAcc."No.") <> (lCashUserSetup."Bank Acc. No.") THEN
                                Error(ErrorTxt015);
                            if (SalesHeader."Currency Code" = 'ALL')
                            then begin
                                if (SalesHeader."Amount Including VAT" > 150000) then
                                    Error(ErrorTxt016);
                            end else begin
                                if SalesHeader."Amount Including VAT" * (1 / SalesHeader."Currency Factor") > 150000 then
                                    Error(ErrorTxt016);
                            end;
                            if (lBankAcc."Declaration Date" = 0D) or (lBankAcc."Declaration Date" < SalesHeader."Posting Date") then
                                Error(ErrorTxt002);
                        end;
                    end;
                end;
            end;
            lPaymentMethod.SetRange(lPaymentMethod.Code, SalesHeader."Payment Method Code");
            lPaymentMethod.SetRange(lPaymentMethod."Bal. Account Type", SalesHeader."Bal. Account Type");
            if lPaymentMethod.FindSet() then begin
                if SalesHeader."Bank ACC. No." = '' then begin
                    if SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::NONCASH THEN begin
                        lBankAcc.SetRange(lBankAcc.Name, lCompInfo."Bank Name");
                        lBankAcc.SetRange(lBankAcc."Bank Branch No.", lCompInfo."Bank Branch No.");
                        lBankAcc.SetRange(lBankAcc."SWIFT Code", lCompInfo."SWIFT Code");
                        lBankAcc.SetRange(lBankAcc."Bank Account No.", lCompInfo."Bank Account No.");
                    end
                    else
                        lBankAcc.SetRange(lBankAcc."No.", lCashUserSetup."Bank Acc. No.");
                end
                else
                    lBankAcc.SetRange(lBankAcc."No.", SalesHeader."Bank ACC. No.");
                if lBankAcc.FindSet() then begin
                    if (lBankAcc."Is Cash") and (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::NONCASH) or (lBankAcc."Is Cash" = false) and (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::CASH) then
                        Error(ErrorTxt014);
                end;
                if (lPaymentMethod."Is Cash") and (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::NONCASH) or (lPaymentMethod."Is Cash" = false) and (SalesHeader."Invoice Type" = SalesHeader."Invoice Type"::CASH) then
                    Error(ErrorTxt014);
            end;

            IF SalesHeader."Currency Code" = '' then
                Error(ErrorTxt007);
            if (SalesHeader."Payment Method Code" = '') then
                Error(ErrorTxt020);
            if (SalesHeader."Is E-Invoice") and (SalesHeader."Invoice Discount Value" <> 0) and (SalesHeader."Discount Reason" = '') then
                Error(ErrorTxt008);
            IF (SalesHeader."Type of Self Iss" <> SalesHeader."Type of Self Iss"::" ") and (lCustomer."Type of Self ISS" = lCustomer."Type of Self ISS"::" ") then
                Error(ErrorTxt009);
            if (SalesHeader."Type of Self Iss" <> SalesHeader."Type of Self Iss"::" ") and (SalesHeader."Is E-Invoice") then
                Error(ErrorTxt010);
            if (SalesHeader."Is Summary") and (SalesHeader."Sum Inv IIC Refs" = '') then
                Error(ErrorTxt011);
            if (SalesHeader."Corrective/Is Bad Debt Invoice" <> SalesHeader."Corrective/Is Bad Debt Invoice"::" ") and (SalesHeader."Inv IIC Refs" = '') then
                Error(ErrorTxt011);
            if (SalesHeader."Document Type" = SalesHeader."Document Type"::"Credit Memo") or (SalesHeader."Document Type" = SalesHeader."Document Type"::"Return Order") then begin
                IF (SalesHeader."Corrective/Is Bad Debt Invoice" = SalesHeader."Corrective/Is Bad Debt Invoice"::" ") then
                    Error(ErrorTxt012);
                if (SalesHeader."Corrective/Is Bad Debt Invoice" = SalesHeader."Corrective/Is Bad Debt Invoice"::"Is Corrective") and (SalesHeader."Correc. Inv Type" = SalesHeader."Correc. Inv Type"::" ") then
                    Error(ErrorTxt013)
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterFinalizePostingOnBeforeCommit', '', true, true)]
    local procedure OnAfterFinalizePostingOnBeforeCommit(var SalesHeader: Record "Sales Header";
                                                        var SalesShipmentHeader: Record "Sales Shipment Header";
                                                        var SalesInvoiceHeader: Record "Sales Invoice Header";
                                                        var SalesCrMemoHeader: Record "Sales Cr.Memo Header";
                                                        var ReturnReceiptHeader: Record "Return Receipt Header";
                                                        var GenJnlPostLine: Codeunit "Gen. Jnl.-Post Line";
                                                        CommitIsSuppressed: Boolean;
                                                        PreviewMode: Boolean;
                                                        WhseShip: Boolean;
                                                        WhseReceive: Boolean)
    var
        lDocType: Option Invoice,"Credit Memo","Bank Account","Gen. Journal Line";
        lType: Option Save,Update,Open;
        leInvoiceMgt: codeunit XMLGenerator;
        lGenJournalLine: Record "Gen. Journal Line";
        lBankAccountLedgerEntry: Record "Bank Account Ledger Entry";
    begin
        if (SalesHeader."Document Type" = SalesHeader."Document Type"::Invoice) or (SalesHeader."Document Type" = SalesHeader."Document Type"::Order) then begin
            leInvoiceMgt.Open_File(/*lType::Save,*/ lDocType::Invoice, SalesInvoiceHeader, SalesCrMemoHeader, lGenJournalLine, lBankAccountLedgerEntry, SalesInvoiceHeader."No.");
        end;
        if (SalesHeader."Document Type" = SalesHeader."Document Type"::"Credit Memo") or (SalesHeader."Document Type" = SalesHeader."Document Type"::"Return Order") then begin
            leInvoiceMgt.Open_File(/*lType::Save,*/ lDocType::"Credit Memo", SalesInvoiceHeader, SalesCrMemoHeader, lGenJournalLine, lBankAccountLedgerEntry, SalesCrMemoHeader."No.");
        end;

        // if SalesHeader."Document Type" = SalesHeader."Document Type"::"Return Order" then begin
        //     leInvoiceMgt.Open_File(lType::Save, lDocType::"Credit Memo", SalesInvoiceHeader, SalesCrMemoHeader, SalesCrMemoHeader."No.", FALSE);
        // end;
        // if SalesHeader."Document Type" = SalesHeader."Document Type"::Order then begin
        //     leInvoiceMgt.Open_File(lType::Save, lDocType::Invoice, SalesInvoiceHeader, SalesCrMemoHeader, SalesInvoiceHeader."No.", FALSE);
        // end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post Prepayments", 'OnAfterPostPrepayments', '', true, true)]
    local procedure "Sales-Post Prepayments_OnAfterPostPrepayments"(
                                                                    var SalesHeader: Record "Sales Header";
                                                                    DocumentType: Option;
                                                                    CommitIsSuppressed: Boolean;
                                                                    var SalesInvoiceHeader: Record "Sales Invoice Header";
                                                                    var SalesCrMemoHeader: Record "Sales Cr.Memo Header"
                                                                    )
    var
        lDocType: Option Invoice,"Credit Memo","Bank Account","Gen. Journal Line";
        lType: Option Save,Update,Open;
        leInvoiceMgt: codeunit XMLGenerator;
        lGenJournalLine: Record "Gen. Journal Line";
        lBankAccountLedgerEntry: Record "Bank Account Ledger Entry";
    begin
        leInvoiceMgt.Open_File(/*lType::Save,*/ lDocType::Invoice, SalesInvoiceHeader, SalesCrMemoHeader, lGenJournalLine, lBankAccountLedgerEntry, SalesInvoiceHeader."No.");
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Check Line", 'OnAfterCheckGenJnlLine', '', true, true)]
    local procedure "Gen. Jnl.-Check Line_OnAfterCheckGenJnlLine"(var GenJournalLine: Record "Gen. Journal Line")
    var
        lBankAcc: Record "Bank Account";
        lUserSet: Record "User Setup";
        lCashUserSetup: Record CashUserSetup;
        lEiSetup: Record "Company Setup -  e-Invoice";
    begin
        lUserSet.Get(UserId());
        lEiSetup.Get();
        if lEiSetup."FE Activated" then begin
            if (GenJournalLine."Account Type" = GenJournalLine."Account Type"::"Bank Account")
                            and (GenJournalLine."Journal Template Name" <> '')
                            and (GenJournalLine."Journal Batch Name" <> '') then begin
                if lBankAcc.Get(GenJournalLine."Account No.") then
                    if (lBankAcc."Is Cash") then begin
                        if not lCashUserSetup.Get(lUserSet."Operator Code", lBankAcc."No.", UserId()) then
                            // if (lBankAcc."No.") <> (lCashUserSetup."Bank Acc. No.") then
                            Error(ErrorTxt001);
                        if (lBankAcc."Declaration Date" = 0D) or (lBankAcc."Declaration Date" < GenJournalLine."Posting Date") then
                            Error(ErrorTxt002);
                        if (GenJournalLine."Cash Register Operation" = GenJournalLine."Cash Register Operation"::" ") or (GenJournalLine."Cash Register Operation" = GenJournalLine."Cash Register Operation"::" ") then
                            Error(ErrorTxt003);
                    end;
            end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Gen. Jnl.-Post Line", 'OnPostBankAccOnAfterBankAccLedgEntryInsert', '', true, true)]
    local procedure "Gen. Jnl.-Post Line_OnPostBankAccOnAfterBankAccLedgEntryInsert"(
                                                                                    var BankAccountLedgerEntry: Record "Bank Account Ledger Entry";
                                                                                    var GenJournalLine: Record "Gen. Journal Line";
                                                                                    BankAccount: Record "Bank Account"
                                                                                    )
    var
        lDocType: Option Invoice,"Credit Memo","Bank Account","Gen. Journal Line";
        lType: Option Save,Update,Open;
        leInvoiceMgt: codeunit XMLGenerator;//50300;
        lSalesCrMemoHeader: Record "Sales Cr.Memo Header";
        lSalesInvHeader: Record "Sales Invoice Header";
        lEiSetup: Record "Company Setup -  e-Invoice";
    begin
        if (GenJournalLine."Account Type" = GenJournalLine."Account Type"::"Bank Account")
            and (GenJournalLine."Journal Template Name" <> '')
            and (GenJournalLine."Journal Batch Name" <> '') then begin
            IF BankAccount."Is Cash" THEN
                leInvoiceMgt.Open_File(/*lType::Save,*/ lDocType::"Gen. Journal Line", lSalesInvHeader, lSalesCrMemoHeader, GenJournalLine, BankAccountLedgerEntry, GenJournalLine."Account No.");
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Shipment", 'OnRunOnBeforeCommit', '', true, true)]
    local procedure "TransferOrder-Post Shipment_OnRunOnBeforeCommit"(
                                                                        var TransferHeader: Record "Transfer Header";
                                                                        TransferShipmentHeader: Record "Transfer Shipment Header";
                                                                        PostedWhseShptHeader: Record "Posted Whse. Shipment Header"
                                                                         )
    var
        lEiSetup: Record "Company Setup -  e-Invoice";
    begin
        lEiSetup.GET();
        if lEiSetup."FE Activated" then begin
            IF TransferHeader."Shipping Agent Code" = '' THEN
                Error(ErrorTxt006);
            if TransferHeader."Start Location Type" = TransferHeader."Start Location Type"::" " then
                Error(ErrorTxt005);
            if TransferHeader."Destination Location Type" = TransferHeader."Destination Location Type"::" " then
                Error(ErrorTxt004);
            Create_CompanionInvoiceRequest(TransferShipmentHeader."No.");
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"TransferOrder-Post Shipment", 'OnBeforeInsertTransShptHeader', '', true, true)]
    local procedure "TransferOrder-Post Shipment_OnBeforeInsertTransShptHeader"(
                                                                                var TransShptHeader: Record "Transfer Shipment Header";
                                                                                TransHeader: Record "Transfer Header";
                                                                                CommitIsSuppressed: Boolean
                                                                               )
    begin
        TransShptHeader.isEscortRequired := TransHeader.isEscortRequired;
        TransShptHeader.isGoodsFlammable := TransHeader.isGoodsFlammable;
        TransShptHeader."Start Location Type" := TransHeader."Start Location Type";
        TransShptHeader."Destination Location Type" := TransHeader."Destination Location Type";
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Copy Document Mgt.", 'OnCopySalesDocInvLineOnAfterSetFilters', '', true, true)]
    local procedure "Copy Document Mgt._OnCopySalesDocInvLineOnAfterSetFilters"(
                                                                                var ToSalesHeader: Record "Sales Header";
                                                                                var FromSalesInvoiceHeader: Record "Sales Invoice Header";
                                                                                var FromSalesInvoiceLine: Record "Sales Invoice Line"
                                                                                // var RecalculateLines: Boolean
                                                                                )
    begin
        ToSalesHeader."Corrective/Is Bad Debt Invoice" := ToSalesHeader."Corrective/Is Bad Debt Invoice"::"Is Corrective";
        ToSalesHeader."Correc. Inv Type" := ToSalesHeader."Correc. Inv Type"::CORRECTIVE;
        ToSalesHeader."Inv IIC Refs" := FromSalesInvoiceHeader.NSLF;
        ToSalesHeader.Modify();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Copy Document Mgt.", 'OnAfterCopySalesDocument', '', true, true)]
    local procedure "Copy Document Mgt._OnAfterCopySalesDocument"
    (
        FromDocumentType: Option;
        FromDocumentNo: Code[20];
        var ToSalesHeader: Record "Sales Header";
        FromDocOccurenceNo: Integer;
        FromDocVersionNo: Integer;
        IncludeHeader: Boolean;
        RecalculateLines: Boolean;
        MoveNegLines: Boolean
    )
    VAR

        lSalesInvHeader: Record "Sales Invoice Header";
    begin
        lSalesInvHeader.GET(FromDocumentNo);
        ToSalesHeader."Corrective/Is Bad Debt Invoice" := ToSalesHeader."Corrective/Is Bad Debt Invoice"::"Is Corrective";
        ToSalesHeader."Correc. Inv Type" := ToSalesHeader."Correc. Inv Type"::CORRECTIVE;
        ToSalesHeader."Inv IIC Refs" := lSalesInvHeader.NSLF;
        ToSalesHeader.Modify();
    end;


}