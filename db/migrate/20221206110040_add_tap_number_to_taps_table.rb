class AddTapNumberToTapsTable < ActiveRecord::Migration[7.0]
  def change
    add_column :taps, :tap_number, :integer 
  end
end
