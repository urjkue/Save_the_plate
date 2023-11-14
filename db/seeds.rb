# # db/seeds.rb

# # Clear existing data
# Basket.destroy_all
# Booking.destroy_all
# Business.destroy_all
# Cart.destroy_all
# Favourit.destroy_all
# Review.destroy_all
# User.destroy_all

# # Seed Users
# users = []
# 10.times do |i|
#   users << User.create!(
#     email: "user#{i + 1}@example.com",
#     password: "password",
#     address: Faker::Address.full_address,
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude
#   )
# end

# # Seed Businesses
# business_categories.each do |category, names|
#   names.each do |name|
#     business = Business.create!(
#       category: category,
#       name: name,
#       description: Faker::Lorem.sentence,
#       address: Faker::Address.full_address,
#       latitude: Faker::Address.latitude,
#       longitude: Faker::Address.longitude
#     )

#     # Seed Baskets
#     basket = Basket.create!(
#       name: "#{name} Basket",
#       description: Faker::Lorem.sentence,
#       price: Faker::Commerce.price,
#       availability: Faker::Date.forward(days: 30),
#       business: business
#     )

#     # Seed Reviews
#     Review.create!(
#       comment: Faker::Lorem.paragraph,
#       rating: rand(1.0..5.0),
#       business: business
#     )

#     # Seed Carts
#     Cart.create!(
#       user: users.sample,
#       basket: basket,
#       pick_up: Faker::Date.forward(days: 15),
#       business: business
#     )

#     # Seed Favourites
#     Favourit.create!(
#       user: users.sample,
#       basket: basket
#     )
#   end
# end

# # Seed Bookings
# users.each do |user|
#   Booking.create!(
#     user: user,
#     cart_ids: user.carts.pluck(:id)
#   )
# end
#

# db/seeds.rb

# # db/seeds.rb

# Seed Users
5.times do
  User.create(
    email: Faker::Internet.email,
    password: 'password',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.full_address,
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  )
end

# Seed Businesses
categories = ['restaurant', 'bakery', 'supermarket']

categories.each do |category|
  5.times do
    business = Business.create(
      category: category,
      name: Faker::Company.name,
      description: Faker::Company.catch_phrase,
      address: Faker::Address.full_address,
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
    )

    # Seed Baskets
    basket = Basket.create(
      name: "Basket for #{business.name}",
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      availability: Faker::Date.forward(days: 30),
      business: business
    )

    # Associate the Basket with the Business
    business.update(basket: basket)

    # Seed Reviews
    Review.create(
      comment: Faker::Lorem.paragraph,
      rating: rand(1..5).to_f,
      business: business,
      user: User.all.sample
    )

    # Seed Favourites
    Favourit.create(
      basket: basket,
      user: User.all.sample
    )

    # Seed Carts
    Cart.create(
      user: User.all.sample,
      basket: basket,
      pick_up: Faker::Date.forward(days: 7),
      business: business
    )

    # Seed Bookings
    Booking.create(
      cart_id: Cart.all.sample.id,
      user: User.all.sample
    )
  end
end
