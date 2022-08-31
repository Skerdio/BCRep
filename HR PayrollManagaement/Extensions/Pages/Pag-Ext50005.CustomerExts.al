pageextension 50005 CustomerExts extends "Customer Card"
{
    layout
    {
        modify("VAT Registration No.")
        {
            ShowMandatory = true;
        }
    }
}