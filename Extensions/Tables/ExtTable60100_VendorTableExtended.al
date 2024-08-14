tableextension 60100 VendorTableExtended extends Vendor
{
    fields
    {
        field(60101; "Contract Status"; Option)
        {
            Caption = 'Contract Status';
            OptionMembers = "Signed","Unsigned","Cancelled";
            InitValue = "Unsigned";
        }
        field(60102; "Forecast Quantity"; Integer)
        {
            Caption = 'Forecast Quantity';
        }
        field(60103; "Latitude"; Code[20])
        {
            Caption = 'Latitude';
        }
        field(60104; "Longtitude"; Code[20])
        {
            Caption = 'Longtitude';
        }
        field(60105; "UCO Officer"; Code[20])
        {
            Caption = 'UCO Officer';
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(60106; "Drum Quantity"; Integer)
        {
            Caption = 'Drum Quantity';
        }
        field(60107; "Contract Start Date"; Date)
        {
            Caption = 'Contract Start Date';
        }
        field(60108; "Contract End Date"; Date)
        {
            Caption = 'Contract End Date';
        }
        field(60109; "UCO Collection Period"; Text[20])
        {
            Caption = 'UCO Collection Period';
        }
        field(60110; "Drum Size Code"; Option)
        {
            Caption = 'Drum Size Code';
            OptionMembers = "30","60","120";
        }
        field(60111; "Pickup Phone Number"; Text[20])
        {
            Caption = 'Pickup Phone Number';
        }
        field(60112; "Invoice by"; Option)
        {
            Caption = 'Invoice By';
            OptionMembers = "Email","Paper";
        }
        field(60113; "Vendor Lost"; Option)
        {
            Caption = 'Vendor Lost';
            OptionMembers = "BPC - Business Permanently Closed","VCNV - Old Vendor Closed","NUCO - No UCO at this Vendor","VCNQ - Old Vendor Closed","DOC - Vendor - Requires Government certificate/document","SEAS - Because of Season","COMP - Vendor sells to competitor";
        }
        field(60114; "Vendor Lost Note"; Text[1000])
        {
            Caption = 'Vendor Lost Note';
        }
        field(60115; "UCO Vendor Type"; Option)
        {
            Caption = 'UCO Vendor Type';
            OptionMembers = "LOCAL COLL","Restaurant","Hotel","Industrial foods","Supermarket";
        }
        field(60116; "UIC"; Text[20])
        {
            Caption = 'UIC';
        }
        field(60117; "Website"; Text[50])
        {
            Caption = 'Website';
        }
        field(60118; "Payment Method"; Option)
        {
            Caption = 'Payment Method';
            OptionMembers = "Cash","Bank";
        }
        field(60119; "Product"; Text[100])
        {
            Caption = 'Product';
            TableRelation = Item.Description;
        }
        field(60120; "Name Of Place"; Text[100])
        {
            Caption = 'Name of Place';
        }
        field(60121; "Quarter"; Text[50])
        {
            Caption = 'Quarter';
        }
        field(60122; "Chain"; Text[50])
        {
            Caption = 'Chain';
        }
        field(60123; "Number of Seats"; Integer)
        {
            Caption = 'Number of Seats';
        }
        field(60124; "Size"; Text[20])
        {
            Caption = 'Size';
        }
        field(60125; "Cuisine Type"; Text[50])
        {
            Caption = 'Cuisine Type';
        }
        field(60126; "Region"; Text[50])
        {
            Caption = 'Region';
        }
        field(60127; "Person In Charge"; Text[30])
        {
            Caption = 'Person In Charge';
        }
        field(60128; "Active Vendor"; Boolean)
        {
            Caption = 'Active';
        }
        field(60129; "Type"; Option)
        {
            Caption = 'Type';
            OptionMembers = "Vendor","Client","Vendor and Client";
        }

        modify(Address)
        {
            Caption = 'Company Address';
        }
        modify("Address 2")
        {
            Caption = 'Delivery Address';
        }
        modify("Phone No.")
        {
            Caption = 'Manager Phone No.';
        }
        modify(Contact)
        {
            Caption = 'Contact Person';
        }
        modify(Name)
        {
            Caption = 'Company Name';
        }

    }
    trigger OnInsert()
    begin
        "Contract Status" := "Contract Status"::"Signed";
    end;
}