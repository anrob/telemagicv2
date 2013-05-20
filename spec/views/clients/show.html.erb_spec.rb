require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :phone_number => "Phone Number",
      :email_address => "Email Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    rendered.should match(/Last Name/)
    rendered.should match(/Address/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Zip/)
    rendered.should match(/Phone Number/)
    rendered.should match(/Email Address/)
  end
end
