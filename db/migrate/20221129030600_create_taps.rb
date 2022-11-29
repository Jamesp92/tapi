class CreateTaps < ActiveRecord::Migration[7.0]
  def change
    create_table :taps do |t|
      t.column :tap_style , :string

      t.timestamps
    end
  end
end
