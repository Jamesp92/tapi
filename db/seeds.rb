class Seed

  def self.begin
    seed = Seed.new
    seed.generate_inventory_kegs
  end

  def generate_inventory_kegs
  sizes = ["1/2", "1/6", "50L"]
  serving_sizes = ["16oz", "12oz", "8oz"]
  prices = ["120.00", "150.00"]
    40.times do |i|

      inventory = InventoryKeg.create!(
        style: Faker::Beer.style,
        brand: Faker::Beer.name,
        brewery: Faker::Beer.brand,
        date_received: Faker::Date.in_date_period(month: 9),
        priority: false,
        abv: Faker::Beer.alcohol,
        price: prices.sample(),
        serving_size: serving_sizes.sample(),
        date_tapped: nil,
        partial: false,
        serving_price: "6.00",
        keg_size: sizes.sample()

      )

      puts"inventory filled"
    end
  end

end
Seed.begin
