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

# # Clear existing data
# User.destroy_all
# Business.destroy_all
# Basket.destroy_all
# Cart.destroy_all
# Favourit.destroy_all
# Review.destroy_all
# Booking.destroy_all

# # Create users
# user1 = User.create!(
#   email: 'user1@example.com',
#   password: 'password',
#   first_name: 'John',
#   last_name: 'Doe',
#   address: '123 Main St',
#   latitude: 40.7128,
#   longitude: -74.0060
# )

# # Create businesses
# categories = ['restaurant', 'bakery', 'supermarket']

# categories.each do |category|
#   5.times do |i|
#     business = Business.create!(
#       category: category,
#       name: "#{category.capitalize} #{i + 1}",
#       description: "Description for #{category.capitalize} #{i + 1}",
#       address: "#{i + 1}#{category.capitalize} Street",
#       latitude: 40.7128 + (i * 0.01),
#       longitude: -74.0060 - (i * 0.01)
#     )

#     # Create baskets for each business
#     3.times do |j|
#       Basket.create!(
#         name: "Basket #{j + 1} for #{business.name}",
#         description: "Description for Basket #{j + 1}",
#         price: (j + 1) * 5.0,
#         availability: Date.today + j,
#         business: business
#       )
#     end

#     # Create reviews for each business
#     Review.create!(
#       comment: "Great #{category}!",
#       rating: 4.5,
#       business: business,
#       user: user1
#     )

#     # Create Favourites for each user
#     Favourit.create!(
#       basket: business.baskets.first,
#       user: user1
#     )

#     # Create bookings for each user
#     Booking.create!(
#       cart_id: [business.baskets.first.id, business.baskets.second.id],
#       user: user1
#     )

#     # Create carts for each user
#     Cart.create!(
#       user: user1,
#       basket: business.baskets.first,
#       pick_up: Date.today + 1,
#       business: business
#     )
#   end
# end
