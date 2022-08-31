// report 61002 "Get Tax-Payers Customer"
// {
//     Caption = 'Get E-Invoices';
//     ProcessingOnly = true;
//     Permissions = tabledata Customer = rimd, tabledata Vendor = rimd; //TableData 112 = rimd, TableData 114 = rimd, TableData 50018 = rimd,  ;

//     dataset
//     {
//         dataitem(Customer; Customer)
//         {
//             column(Name; Name)
//             { }
//             column(Tin; Tin)
//             { }
//         }

//     }
//     requestpage
//     {
//         layout
//         {
//             area(content)
//             {
//                 group("Get E-Invoices")
//                 {
//                     field(Tin; Tin)
//                     {
//                         ApplicationArea = All;

//                         trigger OnLookup(var Text: Text): Boolean
//                         var
//                             Customer: Record Customer;
//                             CustPage: Page "Customer List";

//                         begin
//                             // if gDocType = gDocType::Customer then begin
//                             customer.reset();
//                             customer.SetFilter(customer."VAT Registration No.", '<>%1', '');
//                             CustPage.SetTableView(customer);
//                             CustPage.LookupMode(true);
//                             if CustPage.RunModal() = Action::LookupOK THEN
//                                 Tin := CustPage.GetSelectionFilter();
//                             // end;


//                         end;
//                     }
//                     field(Name; Name)
//                     {
//                         ApplicationArea = ALL;
//                     }
//                 }
//             }
//         }
//     }
//     procedure GetNo(SalesNo: Text; pDocType: Option Invoice,"Credit Memo","Bank Account"): Text
//     begin
//         gRefNo := SalesNo;
//         // gDocType := pDocType
//     end;

//     trigger OnPostReport()
//     var
//         Customer: Record Customer;
//         Vendor: Record Vendor;
//         XMLGen: Codeunit XMLGenerator;

//     begin
//         // if gDocType = gDocType::Customer then begin
//         Customer.Get(gRefNo);
//         XMLGen.CreateGetTaxPayersRequest(/*gDocType::Customer,*/ Tin, Name);
//         // end;
//     end;
//     //-------------
//     // trigger OnPostReport()
//     // var
//     //     SalesInvHead: Record "Sales Invoice Header";
//     //     leiSetup: Record "Company Setup -  e-Invoice";
//     //     XMLGen: Codeunit XMLGenerator; //"PRJ Adiuto";
//     // begin
//     //     if (gDocType = gDocType::Invoice) then begin
//     //         SalesInvHead.Get("gRefNo");
//     //         leiSetup.Get();
//     //         XMLGen.CreateGetTaxPayersRequest(gDocType::Invoice, Tin, Name);
//     //         // CreateGetEInvoiceRequest(gDocType::Invoice);
//     //         // end
//     //         // else
//     //         //     if (gDocType = gDocType::"Credit Memo") then begin
//     //         //         SalesCrMemoHead.Get("gRefNo");
//     //         //         leiSetup.Get();
//     //         //         XMLGen.CreateGetEInvoiceRequest(gDocType::"Credit Memo");

//     //     end;
//     // end;
//     //--------------

//     var
//         Tin: Code[36];
//         Name: Text[100];
//         // gDocType: Option Customer,Vendor;
//         gType: Option Save,Update,Open;
//         gRefNo: Code[20];
// }
