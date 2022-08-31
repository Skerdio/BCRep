table 50019 "Log EMT Update"
{
    Caption = 'Modify Tool Log';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(5; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(6; "Table key"; Text[50])
        {
            Caption = 'Table key';
        }
        field(7; "Field Caption"; Text[30])
        {
            Caption = 'Field Caption';
        }
        field(10; "Old Value"; Text[80])
        {
            Caption = 'Old Value';
        }
        field(11; "New Value"; Text[80])
        {
            Caption = 'New Value';
        }
        field(12; "User ID"; Code[50])
        {
            Caption = 'UserID';
            Description = '20-->50 AMC7.00HF1';
            TableRelation = User."User Name";
        }
        field(13; Date; Date)
        {
            Caption = 'Date';
        }
        field(14; "Date Time"; Time)
        {
            Caption = 'Time';
        }
        field(15; "Status"; Option)
        {
            OptionMembers = "","Deleted","Document Date Modified","G/L Acount Updated","Posting Date Modified";
            Caption = 'Status';
        }
        field(16; "Document No."; Text[50])
        {
            Caption = 'Document No.';
        }
        field(17; "New Document No."; Code[20])
        {
            Caption = 'New Document No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
    procedure InsertUpdate(Desc: Text[50]; TableNo: Integer; TableKey: Text[50]; FiledCaption: Text[30]; OldValue: Text[80]; NewValue: Text[80])
    var
        LogEMTUpdate: Record "Log EMT Update";
        EntryNo: Integer;
    begin
        IF LogEMTUpdate.FINDLAST THEN
            EntryNo := LogEMTUpdate."Entry No." + 1
        ELSE
            EntryNo := 1;
        LogEMTUpdate.INIT;
        LogEMTUpdate."Entry No." := EntryNo;
        LogEMTUpdate.Description := Desc;
        LogEMTUpdate."Table No." := TableNo;
        LogEMTUpdate."Table key" := TableKey;
        LogEMTUpdate."Field Caption" := FiledCaption;
        LogEMTUpdate."Old Value" := OldValue;
        LogEMTUpdate."New Value" := NewValue;
        LogEMTUpdate."User ID" := USERID;
        LogEMTUpdate.Date := TODAY;
        LogEMTUpdate."Date Time" := TIME;
        LogEMTUpdate.INSERT;
    end;

    procedure InsertUpdate1(TableNo: Integer; pDocNo: Code[20]; pStatus: Integer; pNewDocNo: Code[20]; FiledCaption: Text[30]; OldValue: Text[80]; NewValue: Text[80])
    var
        LogEMTUpdate: Record "Log EMT Update";
        EntryNo: Integer;
    begin
        IF LogEMTUpdate.FINDLAST THEN
            EntryNo := LogEMTUpdate."Entry No." + 1
        ELSE
            EntryNo := 1;

        LogEMTUpdate.INIT;
        LogEMTUpdate."Entry No." := EntryNo;
        LogEMTUpdate."Table No." := TableNo;
        LogEMTUpdate."Document No." := pDocNo;
        LogEMTUpdate.Status := pStatus;
        if pStatus = 1 then
            LogEMTUpdate."New Document No." := pNewDocNo;
        LogEMTUpdate."Field Caption" := FiledCaption;
        LogEMTUpdate."Old Value" := OldValue;
        LogEMTUpdate."New Value" := NewValue;
        LogEMTUpdate."User ID" := USERID;
        LogEMTUpdate.Date := TODAY;
        LogEMTUpdate."Date Time" := TIME;
        LogEMTUpdate.INSERT;
    end;
}

