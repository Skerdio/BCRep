pageextension /*50325*/50045 "Cash Receipt Journal Exts" extends "Cash Receipt Journal"
{
    layout
    {
        addfirst(Control1)
        {
            field("Cash Register Operation"; Rec."Cash Register Operation")
            {
                ApplicationArea = All;
                Editable = gEditableOperationType;
                trigger OnValidate()
                begin
                    IF (REC."Cash Register Operation" = REC."Cash Register Operation"::INITIAL) or (REC."Cash Register Operation" = REC."Cash Register Operation"::" ") THEN
                        Error(ErrorText001);
                    if (Rec.Amount < 0) and (Rec."Cash Register Operation" = Rec."Cash Register Operation"::DEPOSIT) or
                        (Rec.Amount > 0) and (Rec."Cash Register Operation" = Rec."Cash Register Operation"::WITHDRAW) then
                        Error(ErrorTxt002);
                end;
            }
        }
        modify("Account No.")
        {
            trigger OnAfterValidate()
            var
                lBankAccount: Record "Bank Account";
            begin
                lBankAccount.SetRange(lBankAccount."No.", rec."Account No.");
                IF lBankAccount.FindSet() THEN begin
                    IF lBankAccount."Is Cash" then
                        gEditableOperationType := true
                    else begin
                        gEditableOperationType := false;
                        Clear(Rec."Cash Register Operation");
                    end;
                end
                else begin
                    gEditableOperationType := false;
                    Clear(Rec."Cash Register Operation");
                end;
            end;
        }
    }
    actions
    {
        modify(Post)
        {
            Caption = 'Post and Fiscalize';
        }

    }
    trigger OnAfterGetRecord()
    var
        lBankAccount: Record "Bank Account";
    begin
        lBankAccount.SetRange(lBankAccount."No.", rec."Account No.");
        IF lBankAccount.FindSet() THEN begin
            IF lBankAccount."Is Cash" then
                gEditableOperationType := true
            else BEGIN
                gEditableOperationType := false;
                Clear(Rec."Cash Register Operation");
            END;
        end
        else begin
            gEditableOperationType := false;
            Clear(Rec."Cash Register Operation");
        end;
        if rec."Cash Register Operation" = rec."Cash Register Operation"::INITIAL then
            clear(Rec."Cash Register Operation");
    end;

    var
        ErrorText001: Label 'Nuk mund te zgjidhet tipi deklarimit INITIAL';//The INITIAL declaration type can not be selected
        ErrorTxt002: Label 'Nuk mund te zgjidhet ky veprim, sepse nuk perkon me tipin e deklarimit';//  This action cannot be selected because it does not match the declaration type
        gEditableOperationType: Boolean;
}