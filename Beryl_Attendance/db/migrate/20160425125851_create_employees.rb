class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :fname
      t.string :lname
      t.integer :phoneno
      t.string :email
      t.string :password
      t.integer :sign_in_count
      t.time :current_sign_in_at
      t.time :last_sign_in_at
      t.inet :current_sign_in_ip
      t.inet :last_sign_in_ip
      t.time :confirmed_at
      t.time :confirmation_sent_at
      t.string :unconfirmed_email
      t.time :reset_password_sent_at
      t.timestamps null: false
    end
  end
end
