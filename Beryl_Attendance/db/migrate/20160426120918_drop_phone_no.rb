class DropPhoneNo < ActiveRecord::Migration
  def change
  	remove_column :employees, :phoneno
  end
end
