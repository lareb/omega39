class CreateEmployeeLocations < ActiveRecord::Migration
  def change
    create_table :employee_locations do |t|
      t.integer   :employee_id, :null => false
      t.string    :latitude, :null => false
      t.string    :longitude, :null => false
      t.datetime  :position_on
      t.timestamps
    end
  end
end
