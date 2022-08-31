pageextension /*50319*/50039 "Customer List Exts" extends "Customer List"
{
    actions
    {
        addlast(navigation)
        {
            action("GET TaxPayers")
            {
                ApplicationArea = all;
                Image = GetOrder;
                trigger OnAction()
                var
                    XmlGen: Codeunit XMLGenerator;
                begin
                    XmlGen.Get_TaxPayersRequest(gDocType::Customer, rec."VAT Registration No.", rec.Name, rec."No.", rec, gVendor);
                end;
            }
        }
    }
    var
        gDocType: Option Customer,Vendor;
        gVendor: Record Vendor;
}
