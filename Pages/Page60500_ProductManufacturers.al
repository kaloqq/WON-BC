page 60500 ProductManufacturersList
{
    PageType = List;
    SourceTable = ProductManufacturers;
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Manufacturer ID"; Rec."Manufacturer ID")
                {
                    Caption = 'ID';
                    ApplicationArea = All;
                }
                field("Manufacturer Name"; Rec."Manufacturer Name")
                {
                    Caption = 'Manufacturer Name';
                    ApplicationArea = All;
                }
            }
        }
    }
}