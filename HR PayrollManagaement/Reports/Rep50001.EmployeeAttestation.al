report 50001 "Employee attestation"
{
    Caption = 'Employee attestation';
    DefaultLayout = Word;
    WordLayout = './Reports/Vertetim.docx';
    dataset
    {
        dataitem(Employee; Employee)
        {
            column(No; "No.")
            {
            }
            column(FirstName; "First Name")
            {
            }
            column(LastName; "Last Name")
            {
            }
            column(MiddleName; "Middle Name")
            {
            }
            dataitem(EmployeeJobTitles; EmployeeJobTitles)
            {
                DataItemLink = "EmployeeNo." = field("No.");
                DataItemTableView = sorting(StartingDate) order(descending);
                column(JobTitle; JobTitle)
                {
                }
            }
            dataitem("Confidential Information"; "Confidential Information")
            {
                DataItemLink = "Employee No." = field("No.");
                DataItemTableView = sorting("Employee No.");
                column(Gross_Salary; "Gross Salary")
                {
                }
            }
            dataitem("Company Information"; "Company Information")
            {
                DataItemTableView = sorting("Primary Key");
                column(Name; Name)
                {
                }
                column(Administrator; "Administrator ")
                {
                }
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}

