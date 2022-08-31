page /*50301*/50021 "DDT Lines"
{
    Caption = 'DDT Lines';
    PageType = ListPart;
    PromotedActionCategories = 'New,Process,Report,e-Invoice';
    SourceTable = "Purch. Rcpt. Line";
    Permissions = tabledata 121 = rimd;
    layout
    {
        area(content)
        {
            repeater("1")
            {
                Visible = false;
                field(notVisible; Rec."No.")
                {
                    ApplicationArea = All;
                    Visible = false;
                }
            }
            group("2")
            {
                Caption = '';
                group("3")
                {
                    Caption = 'Filters';
                    field(VendorFilter; VendorFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Vendor Filter';
                        Editable = false;
                        TableRelation = Vendor;
                    }
                    field(DDTNoFilter; DDTNoFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'DDT Filter';
                        trigger OnValidate();
                        begin
                            SetFilters;
                        end;
                    }
                }
                group("4")
                {
                    Caption = '';
                    field(CrossRefFilter; CrossRefFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Cross. Ref Filter';
                        TableRelation = "Item Cross Reference";

                        trigger OnValidate();
                        begin
                            SetFilters;
                        end;
                    }
                    field(QtyFilter; QtyFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Quantity Filter';

                        trigger OnValidate();
                        begin
                            SetFilters;
                        end;
                    }
                    field(PriceFilter; PriceFilter)
                    {
                        ApplicationArea = All;
                        Caption = 'Price Filter';

                        trigger OnValidate();
                        begin
                            IF PriceFilter <> 0 THEN
                                Rec.SETRANGE("Direct Unit Cost", PriceFilter)
                            ELSE
                                Rec.SETRANGE("Direct Unit Cost");

                            CurrPage.UPDATE;
                        end;
                    }
                }
            }
            repeater("5")
            {
                field("Buy-from Vendor No."; Rec."Buy-from Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Pay-to Vendor No."; Rec."Pay-to Vendor No.")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }

                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("VAT %"; Rec."VAT %")
                {
                    ApplicationArea = All;
                }
                field("Qty. Rcd. Not Invoiced"; Rec."Qty. Rcd. Not Invoiced")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(GetRecptLines)
            {
                ApplicationArea = All;
                Ellipsis = true;
                Image = GetLines;
                Promoted = true;
                PromotedCategory = Category4;
                PromotedIsBig = true;

                trigger OnAction();
                var
                    //?? SS
                    lXMLKDocMgt: codeunit XMLGenerator;//50300;
                begin
                    //?? SS
                    lXMLKDocMgt.SetGlobal(gPurchaseNo, VendorFilter, DDTNoFilter,
                    CrossRefFilter, QtyFilter, PriceFilter, LineNoFilter);
                end;
            }
        }
    }

    trigger OnInit();
    begin
        gPurchaseNo := '';
    end;

    trigger OnOpenPage();
    begin
        Rec.SETRANGE("Document No.", '');
        Rec.SETRANGE("Buy-from Vendor No.", '');
        Rec.SETRANGE("Line No.", 0);
    end;

    var
        gPurchaseNo: Code[20];
        VendorFilter: Code[20];
        DDTNoFilter: Code[20];
        CrossRefFilter: Code[20];
        PriceFilter: Decimal;
        QtyFilter: Decimal;
        LineNoFilter: Integer;

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

    procedure SetFilters();
    var
        lItemCrossRef: Record 5717;
        lVendors: Record 23;
        lPriceWithDerivation1: Decimal;
        lPriceWithDerivation2: Decimal;
    begin
        Rec.RESET;
        Rec.SETRANGE("Buy-from Vendor No.", VendorFilter);
        Rec.SETFILTER("Qty. Rcd. Not Invoiced", '>0');

        lVendors.GET(VendorFilter);

        // Rec.CALCFIELDS("DDT No. Lookup"); //?? SS
        // IF lVendors."With DDT" THEN
        //  SETRANGE("DDT No. Lookup",DDTNoFilter)
        // ELSE
        //?? SS >
        // IF DDTNoFilter <> '' THEN
        //     Rec.SETRANGE("DDT No. Lookup", DDTNoFilter)
        // ELSE
        //     Rec.SETRANGE("DDT No. Lookup");
        //<
        // IF lVendors."With Cross Ref" THEN BEGIN
        //  lItemCrossRef.SETRANGE("Cross-Reference No.",CrossRefFilter);
        //  IF lItemCrossRef.FINDFIRST THEN
        //    SETRANGE("No.",lItemCrossRef."Item No.");
        // END ELSE
        IF CrossRefFilter <> '' THEN BEGIN
            lItemCrossRef.SETRANGE("Cross-Reference No.", CrossRefFilter);
            IF lItemCrossRef.FINDFIRST THEN
                Rec.SETRANGE("No.", lItemCrossRef."Item No.");
        END ELSE
            Rec.SETRANGE("No.");

        // IF lVendors."With Qty" THEN BEGIN
        IF QtyFilter <> 0 THEN
            Rec.SETFILTER(Quantity, '=%1', QtyFilter)
        ELSE
            Rec.SETRANGE(Quantity);
        // END ELSE
        //  IF QtyFilter <> 0 THEN
        //    SETFILTER(Quantity,'=%1',QtyFilter)
        //  ELSE
        //    SETRANGE(Quantity);

        // IF lVendors."With Price" THEN
        //  SETRANGE("Direct Unit Cost",PriceFilter)
        // ELSE

        IF PriceFilter <> 0 THEN BEGIN
            //?? SS
            // IF (lVendors."With Price") AND (lVendors."Standard Price Deviation" <> 0) THEN BEGIN
            //     lPriceWithDerivation1 := PriceFilter * (1 - lVendors."Standard Price Deviation" / 100);
            //     lPriceWithDerivation2 := PriceFilter * (1 + lVendors."Standard Price Deviation" / 100);
            //     Rec.SETRANGE("Direct Unit Cost", lPriceWithDerivation1, lPriceWithDerivation2)
            // END ELSE
            //     IF (lVendors."With Price") AND (lVendors."Standard Price Deviation" = 0) THEN
            //         Rec.SETRANGE("Direct Unit Cost", PriceFilter);

        END ELSE
            Rec.SETRANGE("Direct Unit Cost");

        //IF PriceFilter <> 0 THEN
        //  SETRANGE("Direct Unit Cost",PriceFilter)
        // ELSE
        //  SETRANGE("Direct Unit Cost");

        //CurrPage.UPDATE;
    end;

    procedure CountRows(): Integer;
    begin
        EXIT(Rec.COUNT);
    end;
}

//?? Skerdio procedurat