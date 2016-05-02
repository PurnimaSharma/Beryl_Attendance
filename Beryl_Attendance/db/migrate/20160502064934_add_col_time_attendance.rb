class AddColTimeAttendance < ActiveRecord::Migration
  def change
  	add_column :attendances, :time, :string
  end
end
