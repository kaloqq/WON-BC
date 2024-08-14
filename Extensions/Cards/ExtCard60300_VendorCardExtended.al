pageextension 60300 VendorCardExtended extends "Vendor Card"
{
    layout
    {

        addafter(General)
        {
            group("Additional Information")
            {
                Caption = 'Additional Information';
                field(Seats; Rec."Number of Seats")
                {
                    Caption = 'Number of Seats';
                    ApplicationArea = All;
                }
                field(Size; Rec.Size)
                {
                    Caption = 'Size';
                    ApplicationArea = All;
                }
                field("Cuisine Type"; Rec."Cuisine Type")
                {
                    Caption = 'Cuisine Type';
                    ApplicationArea = All;
                }
                field("Forecast Quantity;"; Rec."Forecast Quantity")
                {
                    Caption = 'Forecast Quantity';
                    ApplicationArea = All;
                }
                field(Product; Rec.Product)
                {
                    Caption = 'Product';
                    ApplicationArea = All;
                }
                field("UCO Collection Period"; Rec."UCO Collection Period")
                {
                    Caption = 'UCO Collection Period';
                    ApplicationArea = All;
                }
                field("Drum Size Code"; Rec."Drum Size Code")
                {
                    Caption = 'Drum Size Code';
                    ApplicationArea = All;
                }
                field("Invoice by"; Rec."Invoice by")
                {
                    Caption = 'Invoice by';
                    ApplicationArea = All;
                }
                field("Contract Start Date"; Rec."Contract Start Date")
                {
                    Caption = 'Contract Start Date';
                    ApplicationArea = All;
                }
                field("Contract End Date"; Rec."Contract End Date")
                {
                    Caption = 'Contract End Date';
                    ApplicationArea = All;
                }

            }
        }

        addbefore("Additional Information")
        {
            group("Reason for Lost Vendor")
            {
                Caption = 'Reason for Lost Vendor';
                Visible = VendorLostFieldsVisible;
                field("Vendor Lost"; Rec."Vendor Lost")
                {
                    Caption = 'Vendor Lost';
                    ApplicationArea = All;
                }
                field("Vendor Lost Note"; Rec."Vendor Lost Note")
                {
                    Caption = 'Vendor Lost Note';
                    ApplicationArea = All;
                }
            }

        }

        addafter("Name")
        {
            field("Object Name"; Rec."Name Of Place")
            {
                Caption = 'Name of Place';
                ApplicationArea = All;
            }
            field("UCO Vendor Type"; Rec."UCO Vendor Type")
            {
                Caption = 'UCO Vendor Type';
                ApplicationArea = All;
            }
            field("Type"; Rec.Type)
            {
                ApplicationArea = All;
                Caption = 'Type';
            }
            field("Contract Status"; Rec."Contract Status")
            {
                Caption = 'Contract Status';
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    SetVendorLostFieldsVisibility();
                end;
            }
            field("Payment Method"; Rec."Payment Method")
            {
                Caption = 'Payment Method';
                ApplicationArea = All;
            }
            field("UCO Officer"; Rec."UCO Officer")
            {
                Caption = 'UCO Officer';
                ToolTip = 'Name of the responsible person';
                ApplicationArea = All;
            }
            field(Chain; Rec.Chain)
            {
                Caption = 'Chain';
                ApplicationArea = All;
            }
            field("Active Vendor"; Rec."Active Vendor")
            {
                Caption = 'Active';
                ApplicationArea = All;
                trigger OnValidate()
                begin
                    if Rec."Active Vendor" then begin
                        Rec.Blocked := Rec.Blocked::" "
                    end
                    else begin
                        Rec."Contract Status" := Rec."Contract Status"::Cancelled;
                        Rec.Blocked := Rec.Blocked::All;
                    end;
                    CurrPage.Update();
                end;
            }
            field(UIC; Rec.UIC)
            {
                Caption = 'UIC';
                ApplicationArea = All;
            }
            field("Person In Charge"; Rec."Person In Charge")
            {
                Caption = 'Person In Charge';
                ApplicationArea = All;
            }
        }
        addafter(City)
        {
            field(Region; Rec.Region)
            {
                Caption = 'Region';
                ApplicationArea = All;
            }
            field(Quarter; Rec.Quarter)
            {
                Caption = 'Quarter';
                ApplicationArea = All;
            }
        }
        addafter("Phone No.")
        {
            field("Pickup Phone Number"; Rec."Pickup Phone Number")
            {
                Caption = 'Pickup Phone Number';
                ApplicationArea = All;
            }
        }
        moveafter("Pickup Phone Number"; Contact)
        modify(Blocked)
        {
            Visible = true;
        }
        modify(MobilePhoneNo)
        {
            Visible = false;
        }
        modify("Fax No.")
        {
            Visible = false;
        }
        modify("Home Page")
        {
            Visible = false;
        }
        modify("Language Code")
        {
            Visible = false;
        }
        modify("Format Region")
        {
            Visible = false;
        }
        modify("E-Mail")
        {
            trigger OnAfterValidate()
            begin
                Rec."Invoice by" := Rec."Invoice by"::Email;
                CurrPage.Update();
            end;
        }
    }

    var
        VendorLostFieldsVisible: Boolean;

    trigger OnAfterGetRecord()
    begin
        SetVendorLostFieldsVisibility();
    end;

    local procedure SetVendorLostFieldsVisibility()
    begin
        if Rec."Contract Status" = Rec."Contract Status"::Cancelled then begin
            VendorLostFieldsVisible := true;
        end
        else begin
            VendorLostFieldsVisible := false;
        end;
        CurrPage.Update();
    end;
}