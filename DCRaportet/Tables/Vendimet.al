table 50015 Vendimet
{
    DataCaptionFields = "Asset No";
    DrillDownPageId = "Document Attachment Details";
    LookupPageId = "Document Attachment Details";



    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; "Asset No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
            Editable = false;
        }

        field(3; Nrivendimit; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; Data; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; AttachedDoc; text[250])
        {
            DataClassification = ToBeClassified;
            Caption = 'Attachment';
        }
        field(6; Komente; Text[100])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Asset No", Code)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        // fieldgroup(DropDown; PrimKey, Con, Nrivendimit, Data, AttachedDoc) { }
    }

    var
        NoDocumentAttachedErr: Label 'Please attach a document first.';
        EmptyFileNameErr: Label 'Please choose a file to attach.';
        NoContentErr: Label 'The selected file has no content. Please choose another file.';
        FileManagement: Codeunit "File Management";
        IncomingFileName: Text;
        DuplicateErr: Label 'This file is already attached to the document. Please choose another file.';
        "File Name": Text;

}