class AddColumnsToInventoryKegsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :inventory_kegs, :position, :integer, default: nil
    add_reference :inventory_kegs, :taps, type: :integer, foreign_key: true
  end
end
