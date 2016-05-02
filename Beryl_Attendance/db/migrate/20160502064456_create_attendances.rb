class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :date
      t.string :month
      t.integer :year
      t.timestamps null: false
    end
  end
end
