require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :employeename => "MyString",
      :designation => "MyString",
      :email => "MyString",
      :description => "MyText",
      :salary => "9.99",
      :active => false
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_employeename", :name => "employee[employeename]"
      assert_select "input#employee_designation", :name => "employee[designation]"
      assert_select "input#employee_email", :name => "employee[email]"
      assert_select "textarea#employee_description", :name => "employee[description]"
      assert_select "input#employee_salary", :name => "employee[salary]"
      assert_select "input#employee_active", :name => "employee[active]"
    end
  end
end
