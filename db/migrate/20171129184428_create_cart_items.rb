class CreateCartItems < ActiveRecord::Migration[5.1]
  def change
    create_table :cart_items do |t|
      t.references :cart, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :quantity
      t.decimal :total_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
