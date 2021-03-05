enum 50000 Animals
{
    Extensible = true;

    value(1; Dog)
    {
    }
    value(2; Cat)
    {
    }
}

codeunit 50000 UseEnum
{
    trigger OnRun()
    var
        Animal: Enum Animals;
        Selection: Integer;
    begin
        Selection := StrMenu(Options, 0, Caption);
        If Selection = 0 then
            exit;

        Animal := Enum::Animals.FromInteger(Selection);
        //or
        Animal := Animals.FromInteger(Selection);

    end;

    var
        Options: Label 'Dog,Cat';
        Caption: Label 'Pick your pet: ';
}