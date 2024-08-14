table 60600 VendorTypes
{
    fields
    {
        field(60501; "Type ID"; Integer)
        {
            Caption = 'ID';
            NotBlank = true;
            TableRelation = "No. Series".Code;
        }
        field(60502; "Type Name"; Text[100])
        {
            Caption = 'UCO Vendor Type';
            NotBlank = true;
        }
    }
    keys
    {
        key(PK; "Type ID")
        {
            Clustered = true;
        }
    }
}