// report 61003 "Get Tax-Payers Vendor"
// {
//     Caption = 'Get E-Invoices';
//     ProcessingOnly = true;
//     Permissions = tabledata Customer = rimd, tabledata Vendor = rimd; //TableData 112 = rimd, TableData 114 = rimd, TableData 50018 = rimd,  ;

//     dataset
//     {


//         dataitem(Vendor; Vendor)
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

//                             Vendor: Record Vendor;
//                             VendorPage: Page "Vendor List";

//                         begin

//                             vendor.Reset();
//                             vendor.SetFilter(vendor."VAT Registration No.", '<>%1', '');
//                             VendorPage.SetTableView(vendor);
//                             VendorPage.LookupMode(true);
//                             if VendorPage.RunModal() = Action::LookupOK then
//                                 Tin := VendorPage.GetSelectionFilter();


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
//         XMLGen: Codeunit XMLGenerator; //"PRJ Adiuto";

//     begin

//         // if gDocType = gDocType::Vendor then begin
//         Vendor.Get(gRefNo);
//         XMLGen.CreateGetTaxPayersRequest(/*gDocType::Vendor*/ Tin, Name);
//         // end

//     end;


//     var

//         Tin: Code[36];
//         Name: Text[100];
//         SubseqDelivType: Enum "Subsequent Delivery Type";
//         // gDocType: Option Customer,Vendor;
//         gType: Option Save,Update,Open;
//         gRefNo: Code[20];
// }
