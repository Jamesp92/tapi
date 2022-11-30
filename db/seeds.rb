class Seed

  def self.begin
    seed = Seed.new
    seed.generate_inventory_kegs
    # seed.generate_states
  end

  t.string "style"
  t.string "brand"
  t.string "brewery"
  t.date "date_received"
  t.boolean "priority", default: false
  t.decimal "abv", precision: 8, scale: 2
  t.decimal "price", precision: 8, scale: 2
  t.integer "serving_size"
  t.date "date_tapped"
  t.boolean "partial", default: false
  t.integer "serving_price"
  t.integer "keg_size"

  def generate_inventory_kegs
  
    .times do |i|
      inventory = Inventory_keg.create!(
        style:
        brand: Faker::Beer.name 
        brewery: Faker::Beer.brand,
        date_received:
        priority:
        abv: Faker::Beer.alcohol,
        price:
        serving_size:
        date_tapped:
        partial:
        serving_price:
        keg_size:

      )
    puts"inventory filled"
  end
end
 




Seed.begin
