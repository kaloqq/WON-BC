pageextension 60200 VendorPageExtended extends "Vendor List"
{
    layout
    {
        addbefore(Name)
        {
            field("UCO Officer"; Rec."UCO Officer")
            {
                ApplicationArea = All;
            }
            field("Type"; Rec.Type)
            {
                ApplicationArea = All;
            }
        }
        addafter(Name)
        {
            field("Object Name"; Rec."Name Of Place")
            {
                ApplicationArea = All;
            }
            field(City; Rec.City)
            {
                ApplicationArea = All;
            }
            field(Region; Rec.Region)
            {
                ApplicationArea = All;
            }
            field(Quarter; Rec.Quarter)
            {
                ApplicationArea = All;
            }
            field("Address 2"; Rec."Address 2")
            {
                ApplicationArea = All;
            }
            field("Pickup Phone Number"; Rec."Pickup Phone Number")
            {
                ApplicationArea = All;
            }
            field(Chain; Rec.Chain)
            {
                ApplicationArea = All;
            }
            field("UCO Vendor Type"; Rec."UCO Vendor Type")
            {
                ApplicationArea = All;
            }
            field(Seats; Rec."Number of Seats")
            {
                ApplicationArea = All;
            }
            field(Size; Rec.Size)
            {
                ApplicationArea = All;
            }
            field("Forecast Quantity;"; Rec."Forecast Quantity")
            {
                ApplicationArea = All;
            }
            field(Product; Rec.Product)
            {
                ApplicationArea = All;
            }
            field("UCO Collection Period"; Rec."UCO Collection Period")
            {
                ApplicationArea = All;
            }
            field("Invoice by"; Rec."Invoice by")
            {
                ApplicationArea = All;
            }
            field("E-Mail"; Rec."E-Mail")
            {
                ApplicationArea = All;
            }
            field("Contract Status"; Rec."Contract Status")
            {
                ApplicationArea = All;
            }
            field("Active Vendor"; Rec."Active Vendor")
            {
                ApplicationArea = All;
            }
            field("Contract End Date"; Rec."Contract End Date")
            {
                ApplicationArea = All;
            }
            field("Payment Method"; Rec."Payment Method")
            {
                ApplicationArea = All;
            }
        }
        moveafter("Address 2"; "Phone No.")
        moveafter(Chain; "Country/Region Code", "Currency Code")
        moveafter("Pickup Phone Number"; "Contact")
        modify("Responsibility Center")
        {
            Visible = false;
        }
        modify(Blocked)
        {
            Visible = false;
        }
        modify("Location Code")
        {
            Visible = false;
        }


        // Fields that should be disabled
        modify("Search Name")
        {
            Enabled = false;
            ApplicationArea = None;
        }
        modify("Name 2")
        {
            Enabled = false;
            ApplicationArea = None;
        }
        modify("Fax No.")
        {
            Enabled = false;
            ApplicationArea = None;
        }

    }
}