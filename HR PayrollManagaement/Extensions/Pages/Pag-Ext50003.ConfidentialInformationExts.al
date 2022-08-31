pageextension 50003 "Confidential Information Exts" extends "Confidential Information"
{
    layout
    {
        addafter(Comment)
        {
            field("Gross Salary"; Rec."Gross Salary")
            {
                ApplicationArea = All;
            }
            field(Food; Rec.Food)
            {
                ApplicationArea = All;
            }
            field("OverTime Pay"; Rec."OverTime Pay")
            {
                ApplicationArea = All;
            }

        }
    }
    trigger OnOpenPage()
    var
        lUserSetup: Record "User Setup";
    begin
        if lUserSetup.GET(UserId) then begin
            if not lUserSetup."Edit Confidential Information" then
                Error('Nuk keni të drejta aksesi!');
        end
        else
            Error('Useri nuk është i konfiguruar.');
    end;
}