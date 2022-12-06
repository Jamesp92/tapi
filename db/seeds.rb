class Seed

  def self.begin
    seed = Seed.new
    InventoryKeg.destroy_all
    User.destroy_all
    Archive.destroy_all
    Tap.destroy_all
    seed.generate_inventory_kegs
    seed.generate_users
    seed.generate_archives
    seed.generate_taps
  end

  def generate_users
    User.create!(user_name: "user", password: "user")
    puts"Users created!"
  end

  def generate_inventory_kegs
    sizes = ["1/2", "1/6", "50L"]
    serving_sizes = ["16oz", "12oz", "8oz"]
    prices = ["120.00", "150.00"]
    20.times do |i|
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

    5.times do |i|
      inventory = InventoryKeg.create!(
        style: Faker::Beer.style,
        brand: Faker::Beer.name,
        brewery: Faker::Beer.brand,
        date_received: Faker::Date.in_date_period(month: 9),
        priority: true,
        abv: Faker::Beer.alcohol,
        price: prices.sample(),
        serving_size: serving_sizes.sample(),
        date_tapped: nil,
        partial: false,
        serving_price: "6.00",
        keg_size: sizes.sample()
      )
    end
    puts"Priority Kegs Created!"

    5.times do |i|
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
        partial: true,
        serving_price: "6.00",
        keg_size: sizes.sample()
      )
    end
    puts"Partial Kegs Created!"
  end

  def generate_archives
    sizes = ["1/2", "1/6", "50L"]
    serving_sizes = ["16oz", "12oz", "8oz"]
    prices = ["120.00", "150.00"]
    20.times do |i|
      archive_keg = Archive.create!(
        style: Faker::Beer.style,
        brand: Faker::Beer.name,
        brewery: Faker::Beer.brand,
        date_received: Faker::Date.in_date_period(month: 9),
        priority: false,
        abv: Faker::Beer.alcohol,
        price: prices.sample(),
        serving_size: serving_sizes.sample(),
        date_tapped: Faker::Date.in_date_period(month: 9),
        partial: false,
        serving_price: "6.00",
        keg_size: sizes.sample(),
        date_kicked: Faker::Date.in_date_period(month: 10),
        duration: nil 
      )
    end
    puts"Archive Created!"    
  end

  def generate_taps
    6.times do |i|
      styles = ["Lager", "IPA", "Hazy IPA", "Stout", "Beligan", "Sour"]
      tap = Tap.create!(
        tap_style: styles.sample(),
        keg_on_id: InventoryKeg.take.id,
        keg_on_deck_id: InventoryKeg.take.id,
      )
    end
    puts"Taps created!"
  end

end

Seed.begin
