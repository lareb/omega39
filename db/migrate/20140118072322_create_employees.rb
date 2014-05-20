class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :name
      t.string :mobile_number, :null => false
      t.string :token, :null => false, :default => "x"
      t.timestamps
    end
  end
end
