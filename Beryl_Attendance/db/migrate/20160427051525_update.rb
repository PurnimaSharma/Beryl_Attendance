class Update < ActiveRecord::Migration
  def change
  	change_column :employees, :sign_in_count, :integer, :default => 0
  end
end
