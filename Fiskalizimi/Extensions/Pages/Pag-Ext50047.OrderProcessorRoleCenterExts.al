pageextension /*50327*/50047 OrderProcessorRoleCenterExts extends "Order Processor Role Center"
{
    layout
    {
        addafter(Control14)
        {
            part("Non-Fiscalized Invoices"; "Non-Fiscalized Invoices")
            { }
        }
        addafter(Control14)
        {
            part("Fiscalized Invoices"; "Fiscalized Invoices")
            { }
        }
    }
}