require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :employeename => "Employeename",
        :designation => "Designation",
        :email => "Email",
        :description => "MyText",
        :salary => "9.99",
        :active => false
      ),
      stub_model(Employee,
        :employeename => "Employeename",
        :designation => "Designation",
        :email => "Email",
        :description => "MyText",
        :salary => "9.99",
        :active => false
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Employeename".to_s, :count => 2
    assert_select "tr>td", :text => "Designation".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
