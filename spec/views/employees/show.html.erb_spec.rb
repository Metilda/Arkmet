require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :employeename => "Employeename",
      :designation => "Designation",
      :email => "Email",
      :description => "MyText",
      :salary => "9.99",
      :active => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Employeename/)
    rendered.should match(/Designation/)
    rendered.should match(/Email/)
    rendered.should match(/MyText/)
    rendered.should match(/9.99/)
    rendered.should match(/false/)
  end
end
