page 50016 Vendimet
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Vendimet;
    DataCaptionFields = "Asset No";
    Caption = 'Decisions';

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(Code; rec.Code)
                {
                    ApplicationArea = All;
                    Caption = 'Code';
                }
                field("Asset No"; rec."Asset No")
                {
                    ApplicationArea = All;
                    Caption = 'Asset No';
                }
                field(Nrivendimit; rec.Nrivendimit)
                {
                    ApplicationArea = All;
                    Caption = 'Decision No';
                }
                field(Data; rec.Data)
                {
                    ApplicationArea = All;
                    Caption = 'Date';
                }
                field(AttachedDoc; rec.AttachedDoc)
                {
                    ApplicationArea = All;
                    Caption = 'Attached Document';
                    TableRelation = "Document Attachment";
                    trigger OnLookup(var Text: Text): Boolean


                    var
                        AttchDoc: Record "Document Attachment";
                        attchdocp: Page "Document Attachment Details";
                    begin
                        AttchDoc.Reset();
                        AttchDoc.SetRange("No.", rec."Asset No");
                        if rec.AttachedDoc = '' then begin
                            if Page.RunModal(Page::"Document Attachment Details", AttchDoc) = Action::LookupOK then
                                Rec.AttachedDoc := AttchDoc."File Name";
                        end
                        else begin

                            AttchDoc.SetRange("File Name", rec.AttachedDoc);
                            Page.RunModal(Page::"Document Attachment Details", AttchDoc);
                        end;

                    end;

                }
                field(Komente; rec.Komente)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }
    trigger OnOpenPage()
    var
        Attch: Record "Document Attachment";
    begin
        Attch.Reset();

    end;


}