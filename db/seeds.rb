# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# # Clear existing data
# User.destroy_all
# Review.destroy_all
# Booking.destroy_all
# Basket.destroy_all
# Business.destroy_all
# Cart.destroy_all
# Favourit.destroy_all
# #business categories
# business_categories = {
#   'restaurant' => [' Chez Ophelie', 'All Blue', Faker::FunnyName.three_word_name, Faker::FunnyName.name , Faker::FunnyName.four_word_name],
#   'boulangerie' => [Faker::FunnyName.name , Faker::FunnyName.name ,Faker::FunnyName.name ,Faker::FunnyName.name,Faker::FunnyName.name],
#   'supermarket' => [Faker::FunnyName.name ,Faker::FunnyName.name ,Faker::FunnyName.name ,Faker::FunnyName.name,Faker::FunnyName.name],
#   # 'Keyboard Instruments' => ['Piano', 'Organ', 'Synthesizer', 'Electric Keyboard', 'Accordion']
# }
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
# puts "users"
# # Seed Businesses
#   business_categories.each do |category, names|
#     names.each do |name|
#       business = Business.create!(
#         category: category,
#         name: name,
#         description: Faker::Lorem.sentence,
#         address: Faker::Address.full_address,
#         latitude: Faker::Address.latitude,
#         longitude: Faker::Address.longitude
#       )
#       puts "create business"
#       # Seed Baskets
#       basket = Basket.create!(
#         name: "#{name} Basket",
#         description: Faker::Lorem.sentence,
#         price: Faker::Commerce.price,
#         availability: Faker::Date.forward(days: 30),
#         business: business
#       )
#       puts "create baskets"

#       # # Seed Reviews
#       Review.create!(
#         comment: Faker::Lorem.paragraph,
#         rating: rand(1.0..5.0),
#         business: business,
#         users: user
#       )
#       puts "create reviews"

#       # Seed Carts
#       Cart.create!(
#         user: users.sample,
#         basket: basket,
#         pick_up: Faker::Date.forward(days: 15),
#         business: business
#       )
#       puts "create cart"

#       # Seed Favourites
#       Favourit.create!(
#         user: users.sample,
#         basket: basket
#       )
#       puts "create favorites"

#     end
#   end
#   # Seed Bookings
#   users.each do |user|
#     Booking.create!(
#       user: user,
#       cart_ids: user.carts.pluck(:id)
#     )
#     puts "create bookings"

# end
