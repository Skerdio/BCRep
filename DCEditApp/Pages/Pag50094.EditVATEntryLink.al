page 50094 "Edit VAT Entry Link"
{

    ApplicationArea = All;
    Caption = 'Edit VAT Entry Link';
    PageType = List;
    SourceTable = "G/L Entry - VAT Entry Link";
    UsageCategory = Lists;
    Permissions = tabledata "G/L Entry - VAT Entry Link" = rimd;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Visible = gVisible;
                field("G/L Entry No."; Rec."G/L Entry No.")
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                }
                field("VAT Entry No."; Rec."VAT Entry No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        lUserSetup: Record "User Setup";
    begin
        if lUserSetup.Get(UserId) then
            gVisible := lUserSetup."Editable";

    end;

    var
        gVisible: Boolean;
}
