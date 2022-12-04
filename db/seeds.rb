class Seed

  def self.begin
    seed = Seed.new
    InventoryKeg.destroy_all
    User.destroy_all
    seed.generate_inventory_kegs
    seed.generate_users
  end

  def generate_users
    User.create!(user_name: "user", password: "user")
    puts"Users created!"
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

    end
    puts"Kegs Created!"

  end

end
Seed.begin
