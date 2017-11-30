class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price, precision: 10, scale: 2
      t.text :description
      t.string :image_url
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
