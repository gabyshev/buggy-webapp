class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :category
      t.boolean :preowned

      t.timestamps
    end
  end
end
