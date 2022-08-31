pageextension /*50320*/50040 "Vendor List Exts" extends "Vendor List"
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
                    XmlGen.Get_TaxPayersRequest(gDocType::Vendor, rec."VAT Registration No.", rec.Name, rec."No.", gCustomer, rec);
                end;
            }
        }
    }
    var
        gDocType: Option Customer,Vendor;
        gCustomer: Record Customer;
}
