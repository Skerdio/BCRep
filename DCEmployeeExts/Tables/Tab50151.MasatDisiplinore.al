table 50151 MasatDisiplinore
{
    Caption = 'Warnings';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "EntryNo."; Integer)
        {
            Editable = false;
            DataClassification = ToBeClassified;
            Caption = 'EntryNo';
        }
        field(2; "EmployeeNo."; Code[20])
        {
            Caption = 'EmployeeNo.';
            DataClassification = ToBeClassified;
            TableRelation = Employee."No.";
        }
        field(3; "Warning"; Text[500])
        {
            Caption = 'Warning';
            DataClassification = ToBeClassified;
            TableRelation = Warning.Warnings;
        }
        field(4; Data; Date)
        {
            Caption = 'Data';
            DataClassification = ToBeClassified;
        }
        field(5; "Comment"; Text[250])
        {
            Caption = 'Comment';
            DataClassification = ToBeClassified;
        }
    }

    trigger OnInsert()
    var
        recYourTable: Record MasatDisiplinore;
        intNextEntryNo: Integer;
    begin
        recYourTable.Reset();
        recYourTable.LOCKTABLE;
        IF recYourTable.FINDLAST THEN
            intNextEntryNo := recYourTable."EntryNo." + 1
        ELSE
            intNextEntryNo := 1;
        Rec."EntryNo." := intNextEntryNo;
    end;
}