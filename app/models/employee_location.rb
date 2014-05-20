class EmployeeLocation < ActiveRecord::Base
  attr_accessible :employee_id, :latitude, :longitude, :position_on

  belongs_to :employee
end
