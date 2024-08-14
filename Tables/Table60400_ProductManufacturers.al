table 60400 ProductManufacturers
{
    fields
    {
        field(60701; "Manufacturer ID"; Integer)
        {
            Caption = 'ID';
            NotBlank = true;
            TableRelation = "No. Series".Code;
        }
        field(60702; "Manufacturer Name"; Text[100])
        {
            Caption = 'Manufacturer Name';
            NotBlank = true;
        }
    }
    keys
    {
        key(PK; "Manufacturer ID")
        {
            Clustered = true;
        }
    }
}