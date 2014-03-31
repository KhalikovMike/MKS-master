require 'spec_helper'

describe "requests/edit" do
  before(:each) do
    @request = assign(:request, stub_model(Request,
      :Person => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit request form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", request_path(@request), "post" do
      assert_select "input#request_Person[name=?]", "request[Person]"
      assert_select "input#request_email[name=?]", "request[email]"
      assert_select "input#request_phone[name=?]", "request[phone]"
    end
  end
end
