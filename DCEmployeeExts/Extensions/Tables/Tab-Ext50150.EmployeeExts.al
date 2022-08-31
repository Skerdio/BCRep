tableextension 50150 EmployeeExts extends Employee
{
    fields
    {
        field(50130; MaritalStatus; Option)
        {
            OptionMembers = " ",Blank,Single,Married,Divorced,Widow;
            DataClassification = ToBeClassified;
            Caption = 'Marital Status';
            OptionCaption = ' ,Blank,Single,Married,Divorced,Widow';
        }
        field(50131; "Years of Work"; Integer)
        {
            Caption = 'Years of Work';
            DataClassification = ToBeClassified;
        }
        field(50132; "Disability"; Boolean)
        {
            Caption = 'Disability to Work';
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