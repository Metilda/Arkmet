class Employee < ActiveRecord::Base
	audited
  attr_accessible :active, :description, :designation, :email, :employeename, :salary
end
