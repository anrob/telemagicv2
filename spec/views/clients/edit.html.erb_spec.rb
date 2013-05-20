require 'spec_helper'

describe "clients/edit" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :phone_number => "MyString",
      :email_address => "MyString"
    ))
  end

  it "renders the edit client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", client_path(@client), "post" do
      assert_select "input#client_first_name[name=?]", "client[first_name]"
      assert_select "input#client_last_name[name=?]", "client[last_name]"
      assert_select "input#client_address[name=?]", "client[address]"
      assert_select "input#client_address2[name=?]", "client[address2]"
      assert_select "input#client_city[name=?]", "client[city]"
      assert_select "input#client_state[name=?]", "client[state]"
      assert_select "input#client_zip[name=?]", "client[zip]"
      assert_select "input#client_phone_number[name=?]", "client[phone_number]"
      assert_select "input#client_email_address[name=?]", "client[email_address]"
    end
  end
end
