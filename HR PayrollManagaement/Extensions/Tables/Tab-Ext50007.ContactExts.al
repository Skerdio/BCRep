tableextension 50007 "Contact Exts" extends Contact
{
    fields
    {
        field(50007; JobTitle; Text[100])
        {
            Caption = 'Job Title';
            DataClassification = ToBeClassified;
        }
    }
}