class Employee < ActiveRecord::Base
  attr_accessible :name, :mobile_number, :token

  has_many :locations, :class_name => "EmployeeLocation"
end
