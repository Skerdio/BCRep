page 50095 "Edit FA Ledger Entry"
{

    ApplicationArea = All;
    Caption = 'Edit FA Ledger Entry';
    PageType = List;
    SourceTable = "FA Ledger Entry";
    UsageCategory = Lists;
    Permissions = tabledata "FA Ledger Entry" = rimd;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                Visible = gVisible;
                field("Accum. Depr. % (Custom 1)"; Rec."Accum. Depr. % (Custom 1)")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field("Amount (LCY)"; Rec."Amount (LCY)")
                {
                    ApplicationArea = All;
                }
                field("Automatic Entry"; Rec."Automatic Entry")
                {
                    ApplicationArea = All;
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                    ApplicationArea = All;
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                    ApplicationArea = All;
                }
                field("Canceled from FA No."; Rec."Canceled from FA No.")
                {
                    ApplicationArea = All;
                }
                field(Correction; Rec.Correction)
                {
                    ApplicationArea = All;
                }
                field("Credit Amount"; Rec."Credit Amount")
                {
                    ApplicationArea = All;
                }
                field("Debit Amount"; Rec."Debit Amount")
                {
                    ApplicationArea = All;
                }
                field("Declining-Balance %"; Rec."Declining-Balance %")
                {
                    ApplicationArea = All;
                }
                field("Depr. % this year (Custom 1)"; Rec."Depr. % this year (Custom 1)")
                {
                    ApplicationArea = All;
                }
                field("Depr. Ending Date (Custom 1)"; Rec."Depr. Ending Date (Custom 1)")
                {
                    ApplicationArea = All;
                }
                field("Depr. Starting Date (Custom 1)"; Rec."Depr. Starting Date (Custom 1)")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Book Code"; Rec."Depreciation Book Code")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Ending Date"; Rec."Depreciation Ending Date")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Method"; Rec."Depreciation Method")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Starting Date"; Rec."Depreciation Starting Date")
                {
                    ApplicationArea = All;
                }
                field("Depreciation Table Code"; Rec."Depreciation Table Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                    ApplicationArea = All;
                }
                field("Disposal Calculation Method"; Rec."Disposal Calculation Method")
                {
                    ApplicationArea = All;
                }
                field("Disposal Entry No."; Rec."Disposal Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                }
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                }
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                }
                field("External Document No."; Rec."External Document No.")
                {
                    ApplicationArea = All;
                }
                field("FA Class Code"; Rec."FA Class Code")
                {
                    ApplicationArea = All;
                }
                field("FA Exchange Rate"; Rec."FA Exchange Rate")
                {
                    ApplicationArea = All;
                }
                field("FA Location Code"; Rec."FA Location Code")
                {
                    ApplicationArea = All;
                }
                field("FA No."; Rec."FA No.")
                {
                    ApplicationArea = All;
                }
                field("FA No./Budgeted FA No."; Rec."FA No./Budgeted FA No.")
                {
                    ApplicationArea = All;
                }
                field("FA Posting Category"; Rec."FA Posting Category")
                {
                    ApplicationArea = All;
                }
                field("FA Posting Date"; Rec."FA Posting Date")
                {
                    ApplicationArea = All;
                }
                field("FA Posting Group"; Rec."FA Posting Group")
                {
                    ApplicationArea = All;
                }
                field("FA Posting Type"; Rec."FA Posting Type")
                {
                    ApplicationArea = All;
                }
                field("FA Subclass Code"; Rec."FA Subclass Code")
                {
                    ApplicationArea = All;
                }
                field("Fixed Depr. Amount"; Rec."Fixed Depr. Amount")
                {
                    ApplicationArea = All;
                }
                field("G/L Entry No."; Rec."G/L Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Gen. Posting Type"; Rec."Gen. Posting Type")
                {
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                    ApplicationArea = All;
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                    ApplicationArea = All;
                }
                field("Index Entry"; Rec."Index Entry")
                {
                    ApplicationArea = All;
                }
                field("Journal Batch Name"; Rec."Journal Batch Name")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field("No. of Depreciation Days"; Rec."No. of Depreciation Days")
                {
                    ApplicationArea = All;
                }
                field("No. of Depreciation Years"; Rec."No. of Depreciation Years")
                {
                    ApplicationArea = All;
                }
                field("Part of Book Value"; Rec."Part of Book Value")
                {
                    ApplicationArea = All;
                }
                field("Part of Depreciable Basis"; Rec."Part of Depreciable Basis")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Property Class (Custom 1)"; Rec."Property Class (Custom 1)")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
                field("Reclassification Entry"; Rec."Reclassification Entry")
                {
                    ApplicationArea = All;
                }
                field("Result on Disposal"; Rec."Result on Disposal")
                {
                    ApplicationArea = All;
                }
                field(Reversed; Rec.Reversed)
                {
                    ApplicationArea = All;
                }
                field("Reversed Entry No."; Rec."Reversed Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Reversed by Entry No."; Rec."Reversed by Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Source Code"; Rec."Source Code")
                {
                    ApplicationArea = All;
                }
                field("Straight-Line %"; Rec."Straight-Line %")
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
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                }
                field("Transaction No."; Rec."Transaction No.")
                {
                    ApplicationArea = All;
                }
                field("Use FA Ledger Check"; Rec."Use FA Ledger Check")
                {
                    ApplicationArea = All;
                }
                field("Use Tax"; Rec."Use Tax")
                {
                    ApplicationArea = All;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("VAT Amount"; Rec."VAT Amount")
                {
                    ApplicationArea = All;
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
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
        if lUSerSetup.Get(UserId) then
            gVisible := lUserSetup.Editable;

    end;

    var
        gVisible: Boolean;
}
