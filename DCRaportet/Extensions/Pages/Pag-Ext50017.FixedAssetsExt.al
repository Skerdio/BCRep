pageextension 50017 AssetExt extends "Fixed Asset Card"
{

    layout
    {
        addlast(content)
        {
            group(Details)
            {
                field(Parcelat; rec.Parcelat)
                {
                    Caption = 'Plots';
                    ApplicationArea = All;
                }
                field(Pronesia; rec.Pronesia)
                {
                    ApplicationArea = All;
                    Caption = 'Ownership';
                }
                field(Dependence; rec.Dependence)
                {
                    ApplicationArea = All;
                    Caption = 'Origin';// origjine
                    trigger OnValidate()
                    var
                        FA: Page "Fixed Asset Card";

                    begin
                        if rec.Dependence then begin
                            gDependence := true;
                        end
                        else
                            gDependence := false;
                    end;
                }
                field("Asset Dependence No."; rec."Asset Dependence No.")
                {
                    ApplicationArea = All;
                    Editable = gDependence;
                    Caption = 'Asset No Origin';// 'Origjine e Assetit No.'
                }

                field("Nr.Bashkepronar"; rec.Nr_Bashke)
                {
                    Caption = 'Co-owners No';
                    ApplicationArea = All;
                }

                field("Zona Kadastrale"; rec.Zona_Kadastrale)
                {
                    Caption = 'Cadastral Area';
                    ApplicationArea = All;
                }
                field("Numri i Pasurive"; rec.Nr_iPasurive)
                {
                    Caption = 'ID of Asset';
                    ApplicationArea = All;
                }
                field("Lloji i Pasurise"; rec.Lloji_i_pasurise)
                {
                    Caption = 'Type of asset';
                    ApplicationArea = All;
                }
                field("Siperfaqe Totale"; rec.Sip_Tot)
                {
                    Caption = 'Total Area';
                    ApplicationArea = All;
                }
                field("Diference Fakt-Doc"; rec.Diff_fakt_doc)
                {
                    Caption = 'Fact-Document Difference';
                    ApplicationArea = All;
                }

                field(Rruga; rec.Rruga)
                {
                    Caption = 'Street';
                    ApplicationArea = All;
                }

                field("NomeKlatura"; rec.Nome_Klatura)
                {
                    Caption = 'Nomenclature';
                    ApplicationArea = All;
                }

                field("Struktura"; rec.Struktura)
                {
                    Caption = 'Structure';
                    ApplicationArea = All;
                }
                field("Struktura Kate"; rec.Strukt_Kate)
                {
                    Caption = 'Structure Floors';
                    ApplicationArea = All;
                }
                field("Struktura Siperfaqe"; rec.Str_Sip)
                {
                    Caption = 'Structure Area';
                    ApplicationArea = All;
                }
                field("Struktura Perdorimi"; rec.Strukt_Perdorimi)
                {
                    Caption = 'Structure for Use';
                    ApplicationArea = All;
                }
                field("Perdorimi i tokes sipas Faktit"; rec.Perdor_tokes_fakt)
                {
                    Caption = 'Factual use of the asset';
                    ApplicationArea = All;
                }
                field("Perdorimi I tokes sipas PPV"; rec.Perdorimi_sipas_PPV)
                {
                    Caption = 'Use of the asset according to PPV';
                    ApplicationArea = All;
                }
                field("Perdorimi i Struktures sipas faktit"; rec.Stru_Sip_Fakt)
                {
                    Caption = 'Factual use of the structure';
                    ApplicationArea = All;
                }
                field("Trajtimi"; rec.Trajtimi)
                {
                    Caption = 'Treatment';
                    ApplicationArea = All;
                }
            }
        }
        addlast(General)
        {
            field(CmimRef; rec.CmimRef)
            {
                ApplicationArea = All;
                Caption = 'Price Reference';
                Editable = false;
            }
        }
    }

    actions
    {
        addlast(processing)
        {
            action("&Historiku")
            {
                ApplicationArea = All;
                Caption = 'Background';
                Image = UnitOfMeasure;
                Promoted = true;
                RunObject = Page Historiku;
                RunPageLink = "Asset No" = FIELD("No.");
                Visible = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    myInt := 1;
                    ///// commment
                end;

            }

            action("&Vendimet")
            {
                ApplicationArea = All;
                Caption = 'Decisions';
                Image = UnitOfMeasure;
                Promoted = true;
                RunObject = Page Vendimet;
                RunPageLink = "Asset No" = FIELD("No.");
                Visible = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    myInt := 1;
                    ///// commment
                end;

            }
            action("&Pjeset e Bashkepronareve")
            {
                ApplicationArea = All;
                Caption = 'Co-owners parts';
                Image = UnitOfMeasure;
                Promoted = true;
                RunObject = Page Bashkepronaret;
                RunPageLink = "Asset No" = FIELD("No.");
                Visible = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    myInt := 1;
                    ///// commment
                end;

            }
            action("&Kufizimet")
            {
                ApplicationArea = All;
                Caption = 'Limits';
                Image = UnitOfMeasure;
                Promoted = true;
                RunObject = Page Kufizimet;
                RunPageLink = "Asset No" = FIELD("No.");
                Visible = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    myInt := 1;
                    ///// commment
                end;

            }
            action("&Zona Fiskale")
            {

                ApplicationArea = All;
                Caption = 'Fiscal Area';
                Image = UnitOfMeasure;
                Promoted = true;
                Visible = true;
                RunObject = Page ZonaFiskale;
                RunPageLink = "Asset No" = FIELD("No.");

                trigger OnAction()
                var
                    ZonaFiskale: Record ZonaFiskale;
                    ZonaFiskalePage: Page ZonaFiskale;
                begin
                    ZonaFiskale.Reset();
                    ZonaFiskale.SetRange(ZonaFiskale."Asset No", rec."No.");
                    if not ZonaFiskale.FindSet() then begin
                        ZonaFiskale.Init();
                        ZonaFiskale.Validate(ZonaFiskale."Asset No", rec."No.");
                        ZonaFiskale.Insert();
                        ZonaFiskale.Modify();
                        //  ZonaFiskalePage.Run();
                    end
                    // else
                    //     ZonaFiskalePage.Run();
                end;
            }
            action("&Pozicioni")
            {
                ApplicationArea = All;
                Caption = 'Position';
                Image = UnitOfMeasure;
                Promoted = true;
                RunObject = Page Pozicioni;
                RunPageLink = "Asset No" = FIELD("No.");
                Visible = true;
                trigger OnAction()
                var
                    myInt: Integer;
                begin
                    myInt := 1;
                    ///// commment
                end;

            }


        }

    }
    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        if rec.Dependence then begin

            gDependence := true;
        end
        else
            gDependence := false;
        // rec.CalcFields(CmimRef);

    end;

    var
        gDependence: Boolean;
}