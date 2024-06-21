class CreateInventoryKegs < ActiveRecord::Migration[7.0]
  def change
    create_table :inventory_kegs do |t|
      t.string :style 
      t.string :brand
      t.string :brewery
      t.date :date_received
      t.boolean :priority , default: false 
      t.decimal :abv, precision: 8, scale: 2
      t.decimal :price , precision: 8, scale: 2
      t.integer :serving_size 
      t.date :date_tapped
      t.boolean :partial , default: false
      t.integer :serving_price
      t.integer :keg_size

      t.timestamps
    end
  end
end
