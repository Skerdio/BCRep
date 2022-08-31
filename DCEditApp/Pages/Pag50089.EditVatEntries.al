page 50089 "Edit Vat Entries"
{

    ApplicationArea = All;
    Caption = 'Edit Vat Entries';
    PageType = List;
    SourceTable = "VAT Entry";
    UsageCategory = Lists;
    Permissions = tabledata "VAT Entry" = rimd;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Visible = gVisible;
                field("Add.-Curr. Realized Amount"; Rec."Add.-Curr. Realized Amount")
                {
                    ApplicationArea = All;
                }
                field("Add.-Curr. Realized Base"; Rec."Add.-Curr. Realized Base")
                {
                    ApplicationArea = All;
                }
                field("Add.-Curr. Rem. Unreal. Amount"; Rec."Add.-Curr. Rem. Unreal. Amount")
                {
                    ApplicationArea = All;
                }
                field("Add.-Curr. Rem. Unreal. Base"; Rec."Add.-Curr. Rem. Unreal. Base")
                {
                    ApplicationArea = All;
                }
                field("Add.-Curr. VAT Difference"; Rec."Add.-Curr. VAT Difference")
                {
                    ApplicationArea = All;
                }
                field("Add.-Currency Unrealized Amt."; Rec."Add.-Currency Unrealized Amt.")
                {
                    ApplicationArea = All;
                }
                field("Add.-Currency Unrealized Base"; Rec."Add.-Currency Unrealized Base")
                {
                    ApplicationArea = All;
                }
                field("Additional-Currency Amount"; Rec."Additional-Currency Amount")
                {
                    ApplicationArea = All;
                }
                field("Additional-Currency Base"; Rec."Additional-Currency Base")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field(Base; Rec.Base)
                {
                    ApplicationArea = All;
                }
                field("Base Before Pmt. Disc."; Rec."Base Before Pmt. Disc.")
                {
                    ApplicationArea = All;
                }
                field("Bill-to/Pay-to No."; Rec."Bill-to/Pay-to No.")
                {
                    ApplicationArea = All;
                }
                field(Closed; Rec.Closed)
                {
                    ApplicationArea = All;
                }
                field("Closed by Entry No."; Rec."Closed by Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Country/Region Code"; Rec."Country/Region Code")
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
                field("EU 3-Party Trade"; Rec."EU 3-Party Trade")
                {
                    ApplicationArea = All;
                }
                field("EU Service"; Rec."EU Service")
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
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Gen. Prod. Posting Group"; Rec."Gen. Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("Internal Ref. No."; Rec."Internal Ref. No.")
                {
                    ApplicationArea = All;
                }
                field("No. Series"; Rec."No. Series")
                {
                    ApplicationArea = All;
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                }
                field("Realized Amount"; Rec."Realized Amount")
                {
                    ApplicationArea = All;
                }
                field("Realized Base"; Rec."Realized Base")
                {
                    ApplicationArea = All;
                }
                field("Reason Code"; Rec."Reason Code")
                {
                    ApplicationArea = All;
                }
                field("Remaining Unrealized Amount"; Rec."Remaining Unrealized Amount")
                {
                    ApplicationArea = All;
                }
                field("Remaining Unrealized Base"; Rec."Remaining Unrealized Base")
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
                field("Sales Tax Connection No."; Rec."Sales Tax Connection No.")
                {
                    ApplicationArea = All;
                }
                field("Ship-to/Order Address Code"; Rec."Ship-to/Order Address Code")
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
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Group Code"; Rec."Tax Group Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Group Used"; Rec."Tax Group Used")
                {
                    ApplicationArea = All;
                }
                field("Tax Jurisdiction Code"; Rec."Tax Jurisdiction Code")
                {
                    ApplicationArea = All;
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                    ApplicationArea = All;
                }
                field("Tax Type"; Rec."Tax Type")
                {
                    ApplicationArea = All;
                }
                field("Tax on Tax"; Rec."Tax on Tax")
                {
                    ApplicationArea = All;
                }
                field("Transaction No."; Rec."Transaction No.")
                {
                    ApplicationArea = All;
                }
                field(Type; Rec.Type)
                {
                    ApplicationArea = All;
                }
                field("Unrealized Amount"; Rec."Unrealized Amount")
                {
                    ApplicationArea = All;
                }
                field("Unrealized Base"; Rec."Unrealized Base")
                {
                    ApplicationArea = All;
                }
                field("Unrealized VAT Entry No."; Rec."Unrealized VAT Entry No.")
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
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                    ApplicationArea = All;
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Calculation Type"; Rec."VAT Calculation Type")
                {
                    ApplicationArea = All;
                }
                field("VAT Difference"; Rec."VAT Difference")
                {
                    ApplicationArea = All;
                }
                field("VAT Prod. Posting Group"; Rec."VAT Prod. Posting Group")
                {
                    ApplicationArea = All;
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
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

        if lUserSetup.get(UserId) then
            gVisible := lUserSetup."Editable";
    end;

    var
        gVisible: Boolean;

}
