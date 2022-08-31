tableextension 50001 EmployeeExts extends Employee
{
    fields
    {
        field(50001; MaritalStatus; Option)
        {
            OptionMembers = " ",Blank,Single,Married,Divorced,Widow;
            DataClassification = ToBeClassified;
            Caption = 'Marital Status';
            OptionCaption = ' ,Blank,Single,Married,Divorced,Widow';
        }
        field(50002; "Years of Work"; Integer)
        {
            Caption = 'Years of Work';
            DataClassification = ToBeClassified;
        }
        field(500003; "Disability"; Boolean)
        {
            Caption = 'Disability to Work';
            DataClassification = ToBeClassified;
        }
        field(50003; "JobTitle"; Text[100])
        {
            Caption = 'Job title';
            DataClassification = ToBeClassified;
        }
        field(50004; "Fiscal Job Title"; Text[100])
        {
            Caption = 'Fiscal Job Title';
            DataClassification = ToBeClassified;
        }
        modify("Middle Name")
        {
            Caption = 'Father`s Name';
        }
        modify(Address)
        {
            Caption = 'BirthPlace';
        }
        modify("Address 2")
        {
            Caption = 'Address';
        }
    }
}