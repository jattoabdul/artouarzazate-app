class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, limit: 30
      t.string :image_url

      t.timestamps
    end
  end
end
