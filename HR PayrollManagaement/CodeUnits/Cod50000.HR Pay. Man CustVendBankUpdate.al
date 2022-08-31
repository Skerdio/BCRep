codeunit 50000 "HR Pay. Man CustVendBankUpdate"
{
    trigger OnRun()
    begin
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"CustVendBank-Update", 'OnAfterUpdateEmployee', '', true, true)]
    local procedure "CustVendBank-Update_OnAfterUpdateEmployee"
    (
        var Employee: Record "Employee";
        Contact: Record "Contact"
    )
    begin
        Employee."JobTitle" := Contact."JobTitle";
        Employee.Modify(true);
    end;
}