# db/seeds.rb

# Clear existing data
Basket.destroy_all
Booking.destroy_all
Business.destroy_all
Cart.destroy_all
Favourit.destroy_all
Review.destroy_all
User.destroy_all

# Seed Users
users = []
10.times do |i|
  users << User.create!(
    email: "user#{i + 1}@example.com",
    password: "password",
    address: Faker::Address.full_address,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
end

# Seed Businesses
business_categories.each do |category, names|
  names.each do |name|
    business = Business.create!(
      category: category,
      name: name,
      description: Faker::Lorem.sentence,
      address: Faker::Address.full_address,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
    )

    # Seed Baskets
    basket = Basket.create!(
      name: "#{name} Basket",
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      availability: Faker::Date.forward(days: 30),
      business: business
    )

    # Seed Reviews
    Review.create!(
      comment: Faker::Lorem.paragraph,
      rating: rand(1.0..5.0),
      business: business
    )

    # Seed Carts
    Cart.create!(
      user: users.sample,
      basket: basket,
      pick_up: Faker::Date.forward(days: 15),
      business: business
    )

    # Seed Favourites
    Favourit.create!(
      user: users.sample,
      basket: basket
    )
  end
end

# Seed Bookings
users.each do |user|
  Booking.create!(
    user: user,
    cart_ids: user.carts.pluck(:id)
  )
end
