class EmployeeLocationsController < ApplicationController
  layout "lightwait", :only => [:show]

  def index
    @employee = Employee.find(params[:employee_id])
    @employee_locations = @employee.locations

    data = {:employee => {:token => "qwertyuiop", :mobile_number => "8087036184", :employee_location => {:latitude => "19.23", :longitude => "67.34", :position_on => "27-01-2014 20:45:00"}  }}

    EmployeeLocation.transaction do
      employee = Employee.where(:token => params[:employee][:token], :mobile => params[:employee][:mobile_number])
      if employee.blank?
        employee = Employee.create!(params[:employee])
      else
        employee = employee.first
      end

      EmployeeLocation.create(params[:employee][:employee_location].merge(:employee_id => employee.id))
    end

  end

  def show
    @employee = Employee.find(params[:employee_id])
    @employee_location = EmployeeLocation.find(params[:id])

#    @hash = Gmaps4rails.build_markers([@employee]) do |employee, marker|
#      marker.lat employee.locations.first.latitude
#      marker.lng employee.locations.first.longitude
#      marker.picture({:url => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png", :width => 36, "height" => 36, :infowindow => "#{employee.name}\n#{employee.mobile_number}"})
#    end
  end

  def create
    data = {:employee => {:token => "tyeriehtkrjghdfg", :mobile => "49564968", :employee_location => {:latitude => "19.23", :longitude => "67.34", :position_on => "27-01-2014 20:45:00"}  }}

    EmployeeLocation.transaction do
      employee = Employee.where(:token => params[:employee][:token], :mobile => params[:employee][:mobile_number])
      if employee.blank?
        employee = Employee.create!(params[:employee])
      else
        employee = employee.first
      end

      EmployeeLocation.create(params[:employee][:employee_location].merge(:employee_id => employee.id))
    end
  end

end
