tableextension 50042 TabExtGJL extends "User Setup"
{
    fields
    {
        field(50241; "View Modify Doc Page Act"; Boolean)
        {
            Caption = 'View Modify Documents Page Actions';
            DataClassification = ToBeClassified;
        }
    }

    procedure CheckVisibilityModifyDocPageActions(): Boolean
    begin
        if get(UserId()) then
            if "View Modify Doc Page Act" then
                exit(true);
        exit(false);
    end;
}