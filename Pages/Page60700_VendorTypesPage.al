page 60700 VendorTypeList
{
    PageType = List;
    SourceTable = VendorTypes;
    ApplicationArea = All;
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Type ID"; Rec."Type ID")
                {
                    Caption = 'ID';
                    ApplicationArea = All;
                }
                field("Type Name"; Rec."Type Name")
                {
                    Caption = 'UCO Vendor Type Name';
                    ApplicationArea = All;
                }

            }
        }
    }
}