tableextension 50002 "Confidential Information Exts" extends "Confidential Information"
{
    fields
    {
        field(50150; "Gross Salary"; Decimal)
        {
            Caption = 'Gross Salary';
            DataClassification = ToBeClassified;
        }
        field(50002; Food; Decimal)
        {
            Caption = 'Food';
            DataClassification = ToBeClassified;
        }
        field(50003; "OverTime Pay"; Decimal)
        {
            Caption = 'Over Time Pay';
            DataClassification = ToBeClassified;
        }
    }
}