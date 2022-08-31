pageextension 50154 CustomerExts extends "Customer Card"
{
    layout
    {
        modify("VAT Registration No.")
        {
            ShowMandatory = true;
        }
    }
}