require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone_number => "Phone Number",
        :email_address => "Email Address"
      ),
      stub_model(Client,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :address2 => "Address2",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :phone_number => "Phone Number",
        :email_address => "Email Address"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "Email Address".to_s, :count => 2
  end
end
