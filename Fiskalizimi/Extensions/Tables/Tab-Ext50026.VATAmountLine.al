tableextension /*50304*/50026 VATAmountLine extends "VAT Amount Line"
{
    fields
    {
        field(50300; "VAT Id. Counter"; Integer)
        {
            Caption = 'VAT Id. Counter';
            DataClassification = ToBeClassified;
        }
    }

    procedure InsertLine1(): Boolean
    var
        VATAmountLine: Record "VAT Amount Line";
    begin
        if not (("VAT Base" <> 0) or ("Amount Including VAT" <> 0)) then
            exit(false);
        VATAmountLine := Rec;
        if Find then begin
            "Line Amount" += VATAmountLine."Line Amount";
            "Inv. Disc. Base Amount" += VATAmountLine."Inv. Disc. Base Amount";
            "Invoice Discount Amount" += VATAmountLine."Invoice Discount Amount";
            Quantity += VATAmountLine.Quantity;
            "VAT Base" += VATAmountLine."VAT Base";
            "Amount Including VAT" += VATAmountLine."Amount Including VAT";
            "VAT Difference" += VATAmountLine."VAT Difference";
            "VAT Amount" := "Amount Including VAT" - "VAT Base";
            "Calculated VAT Amount" += VATAmountLine."Calculated VAT Amount";
            "VAT Id. Counter" += 1;
            Modify;
        end else begin
            "VAT Amount" := "Amount Including VAT" - "VAT Base";
            "VAT Id. Counter" := 1;
            Insert;
        end;

        exit(true);
    end;
}