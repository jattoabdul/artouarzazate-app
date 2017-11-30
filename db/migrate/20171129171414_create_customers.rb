class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :username, limit: 30
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :address, limit: 300
      t.string :password_digest

      t.timestamps
    end
  end
end
