tableextension 50021 "Fixed Assets" extends "Fixed Asset"
{

    fields
    {
        field(50021; Parcelat; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Parcela;

        }
        field(50022; Pronesia; Text[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Pronesia e Parceles";

        }
        field(50023; Dependence; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(50024; "Asset Dependence No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Fixed Asset";
        }
        field(50025; Bashkepronaret; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(50026; Nr_Bashke; Integer)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = Count(Bashkepronaret where("Asset No" = field("No.")));
        }


        field(50027; Nr_iPasurive; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(50028; Diff_fakt_doc; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50029; Poz_geo; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50030; Trajtimi; enum Trajtimi)
        {
            DataClassification = ToBeClassified;
            InitValue = " ";
        }
        field(50031; Lloji_i_pasurise; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50032; Kufizimet; Text[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = Kufizimet;
        }
        field(50033; Nome_Klatura; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50034; Trajtimi_vlere_tregu; text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50035; Struktura; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50036; Str_Sip; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50037; Stru_Sip_Fakt; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(50038; Zona_Kadastrale; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50039; Sip_Tot; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50040; Trajt_vler_perf; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50041; Rruga; text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50042; Strukt_Kate; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50043; Strukt_Perdorimi; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50044; Perdor_tokes_fakt; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50045; Perdorimi_sipas_PPV; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50046; Cmim_zone_fisk; decimal)
        {
            DataClassification = ToBeClassified;
            TableRelation = ZonaFiskale;
        }
        field(50047; Institucion; text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50048; Pjeset_Bashke; Decimal)
        {
            DataClassification = ToBeClassified;
            TableRelation = Bashkepronaret;
        }
        field(50049; CmimRef; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = lookup(ZonaFiskale.CmimiRef where("Asset No" = field("No.")));
        }

    }
    var
        gEditable: Boolean;
}