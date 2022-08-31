pageextension 50007 CompanyInformationExts extends "Company Information"
{
    layout
    {
        addlast(General)
        {
            field("Administrator "; Rec."Administrator ")
            {
                ToolTip = 'Specifies Administrator';
                ApplicationArea = All;
            }
        }
    }
}
