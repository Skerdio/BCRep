page 50097 "Edit Vat Registers"
{

    ApplicationArea = All;
    Caption = 'Edit Vat Registers';
    PageType = List;
    SourceTable = "G/L Register";
    UsageCategory = Lists;
    Permissions = tabledata "G/L Register" = rimd;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Visible = gVisible;
                field("Creation Date"; Rec."Creation Date")
                {
                    ApplicationArea = All;
                }
                field("Creation Time"; Rec."Creation Time")
                {
                    ApplicationArea = All;
                }
                field("From Entry No."; Rec."From Entry No.")
                {
                    ApplicationArea = All;
                }
                field("From VAT Entry No."; Rec."From VAT Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ApplicationArea = All;
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field(Reversed; Rec.Reversed)
                {
                    ApplicationArea = All;
                }
                field("Source Code"; Rec."Source Code")
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
                field("To Entry No."; Rec."To Entry No.")
                {
                    ApplicationArea = All;
                }
                field("To VAT Entry No."; Rec."To VAT Entry No.")
                {
                    ApplicationArea = All;
                }
                field("User ID"; Rec."User ID")
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
            gVisible := lUSerSetup.Editable;
    end;

    var
        gVisible: Boolean;
}