class CreateTapsRable < ActiveRecord::Migration[7.0]
  def change
    create_table :taps do |t|
      t.references :keg_on, foreign_key: true
      t.references :keg_on_deck_id, foreign_key: { to_table: 'inventory_kegs' }
      t.string :tap_stlye

      t.timestamps
    end
  end
end
