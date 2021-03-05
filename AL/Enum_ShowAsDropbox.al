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

page 50001 "Pick Your Pet"
{
    Caption = 'Pick your pet';
    PageType = StandardDialog;

    layout
    {
        area(Content)
        {
            field(Pet; Pet)
            {
                ApplicationArea = All;
                Caption = 'Animal';
            }
        }
    }

    var
        Pet: Enum Animals;

    procedure PickPet(var PetType: Enum Animals): Boolean
    begin
        if CurrPage.RunModal() = Action::OK then begin
            PetType := Pet;
            exit(true);
        end;
    end;
}
