class AddPhoneNo < ActiveRecord::Migration
  def change
  	add_column :employees, :phoneno, :string
  end
end
