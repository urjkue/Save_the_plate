

User.destroy_all
Basket.destroy_all
Review.destroy_all
Business.destroy_all
# Booking.destroy_all
# Cart.destroy_all
# Favourit.destroy_all


bus = []
Business.create!(
  category: "restaurant",
  name: "Creole Delight",
  description: "Creole Delight presents a blend of traditional Creole dishes with a modern twist. Located in the heart of Port Louis, indulge in flavors that tell the story of Mauritius' rich culinary heritage.",
  address: "Port Louis, Mauritius",
  latitude: -20.1649,
  longitude: 57.5014,
)


Business.create!(
  category: "restaurant",
  name: "Harbor View Bistro",
  description: "Harbor View Bistro offers a picturesque dining experience overlooking Port Louis Harbor. Delight in a menu combining local produce and international influences in a stunning setting.",
  address: "Port Louis, Mauritius",
  latitude: -20.1623,
  longitude: 57.5078,
)

Business.create!(
  category: "restaurant",
  name: "Spice Isle Cuisine",
  description: "Spice Isle Cuisine celebrates the diversity of Mauritian spices. Nestled in the heart of Port Louis, experience a culinary journey through bold flavors and aromatic dishes.",
  address: "Port Louis, Mauritius",
  latitude: -20.1657,
  longitude: 57.5081,
)


Business.create!(
  category: "restaurant",
  name: "Oceanfront Eats",
  description: "Oceanfront Eats offers a menu inspired by the sea's bounty. Enjoy fresh seafood delicacies in a serene setting by the coast of Port Louis.",
  address: "Port Louis, Mauritius",
  latitude: -20.1642,
  longitude: 57.5114,
)


Business.create!(
  category: "restaurant",
  name: "Tropical Spice Fusion",
  description: "Tropical Spice Fusion brings together flavors from around the globe. Situated in Port Louis, savor a fusion of tastes amidst a vibrant ambiance.",
  address: "Port Louis, Mauritius",
  latitude: -20.1615,
  longitude: 57.5073,
)


Business.create!(
  category: "supermarket",
  name: "Oceanfront Market",
  description: "Oceanfront Market offers a diverse selection of local and international products. Explore our Port Louis store for your grocery needs.",
  address: "Port Louis, Mauritius",
  latitude: -20.1687,
  longitude: 57.5066,
)


Business.create!(
  category: "supermarket",
  name: "Island Fresh Mart",
  description: "Island Fresh Mart showcases fresh produce and quality goods. Visit our Port Louis supermarket for a complete shopping experience.",
  address: "Port Louis, Mauritius",
  latitude: -20.1627,
  longitude: 57.5135,
)


Business.create!(
  category: "supermarket",
  name: "Coastal Essentials",
  description: "Coastal Essentials offers a range of products celebrating Mauritius' coastal cuisine. Find us in Port Louis for your culinary adventures.",
  address: "Port Louis, Mauritius",
  latitude: -20.1665,
  longitude: 57.5039,
)


Business.create!(
  category: "supermarket",
  name: "Tropical Grocers",
  description: "Tropical Grocers provides a diverse selection of tropical products. Visit our Port Louis store to discover new flavors.",
  address: "Port Louis, Mauritius",
  latitude: -20.1643,
  longitude: 57.5102,
)


Business.create!(
  category: "supermarket",
  name: "Harbor Market",
  description: "Harbor Market offers convenience and quality products. Explore our Port Louis location for a hassle-free shopping experience.",
  address: "Port Louis, Mauritius",
  latitude: -20.1691,
  longitude: 57.5120,
)


p "businesses done"

baskets_data = [
  # Previous entries...
  {
    business_id: 85,
    baskets: [
      { name: "Thai Street Food Extravaganza", description: "Explore the vibrant flavors of Thai street food.", price: 210, pickup: 2 },
      { name: "Pad Thai Delicacies", description: "Indulge in the classic flavors of Pad Thai.", price: 195, pickup: 3 },
      # Add more baskets for business_id: 85
    ]
  },
  {
    business_id: 86,
    baskets: [
      { name: "Indian Spice Paradise", description: "Experience the richness of Indian spices and flavors.", price: 200, pickup: 3 },
      { name: "Tandoori Grilled Specialties", description: "Savor the aroma and taste of Tandoori cuisine.", price: 220, pickup: 4 },
      # Add more baskets for business_id: 86
    ]
  },
  {
    business_id: 87,
    baskets: [
      { name: "Artisanal Pizza Selection", description: "Delight in handcrafted artisanal pizzas.", price: 180, pickup: 5 },
      { name: "Italian Pasta Feast", description: "Experience the authenticity of Italian pasta dishes.", price: 190, pickup: 6 },
      # Add more baskets for business_id: 87
    ]
  },
  {
    business_id: 88,
    baskets: [
      { name: "French Pastry Delights", description: "Indulge in a variety of exquisite French pastries.", price: 210, pickup: 4 },
      { name: "Croissant & Coffee Combo", description: "Enjoy a classic French breakfast combo.", price: 200, pickup: 5 },
      # Add more baskets for business_id: 88
    ]
  },
  {
    business_id: 89,
    baskets: [
      { name: "Mediterranean Seafood Medley", description: "Savor a diverse mix of Mediterranean seafood.", price: 220, pickup: 3 },
      { name: "Greek Salad Selection", description: "Delight in the freshness of Greek salads.", price: 190, pickup: 4 },
      # Add more baskets for business_id: 89
    ]
  },
  {
    business_id: 90,
    baskets: [
      { name: "Brazilian BBQ Fiesta", description: "Experience the flavors of a Brazilian barbecue feast.", price: 230, pickup: 2 },
      { name: "Feijoada Festival", description: "Indulge in Brazil's traditional black bean stew.", price: 210, pickup: 3 },
      # Add more baskets for business_id: 90
    ]
  },
  # Continue adding similar data for other business_ids...
]
baskets_data.each do |business_data|
  business = Business.find { |b| b.id == business_data[:business_id] }
  next unless business

  business_data[:baskets].each do |basket_info|
    Basket.create!(
      name: basket_info[:name],
      description: basket_info[:description],
      price: basket_info[:price],
      business_id: business.id,
      availability: Date.today,
      pickup: DateTime.now + basket_info[:pickup].days
    )
  end
end

p "basket done"












# ... Add three more unique baskets for Creole Delight



# Basket.create!(
#     name: "Basket for Creole Delight",
#     description: "description",
#     price:160,   #150-250
#     business_id: 1,
#     pickup: Dateime + 1 #datetime format

#   )







# users = []
# 10.times do |i|
#   users << User.create!(
#     email: "user#{i + 1}@example.com",
#     password: "password",
#     # address: Faker::Address.full_address,
#     # first_name: Faker::Name.first_name,
#     # last_name: Faker::Name.last_name,
#   )
# end

# puts("user done! ")

# Seed Businesses
# business_categories.each do |category|
#   puts category
#     business = Business.create!(
#       category: category,
#       name: Faker::Company.name,
#       description: Faker::Lorem.sentence,
#       address: Faker::Address.full_address,
#       latitude: Faker::Address.latitude,
#       longitude: Faker::Address.longitude
#     )
#     puts "business"

    # Seed Baskets


    #  business.update(basket_id: basket.id)

  # basket = Basket.create!(
    #   name: "Basket for #{business.name}",
    #   description: Faker::Lorem.sentence,
    #   price: Faker::Commerce.price,
    #   availability: Faker::Date.forward(days: 30),
    #   business_id: business.id,
    #   pickup: DateTime.now + 1 ,
    # )
    # puts "basket"    puts "business basket"

    # Seed Reviews
    # puts users.first.id
    # Review.create!(
    #   comment: Faker::Lorem.paragraph,
    #   users_id: users.first.id,
    #   rating: rand(1.0..5.0),
    #   business_id: business.id
    # )
    # puts "review"
# end


# db/seeds.rb

# # db/seeds.rb

# Seed Users
# 5.times do
#   User.create(
#     email: Faker::Internet.email,
#     password: 'password',
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     address: Faker::Address.full_address,
#     latitude: Faker::Address.latitude,
#     longitude: Faker::Address.longitude
#   )
# end

# # Seed Businesses
# categories = ['restaurant', 'bakery', 'supermarket']

# categories.each do |category|
#   5.times do
#     business = Business.create(
#       category: category,
#       name: Faker::Company.name,
#       description: Faker::Company.catch_phrase,
#       address: Faker::Address.full_address,
#       latitude: Faker::Address.latitude,
#       longitude: Faker::Address.longitude
#     )

#     # Seed Baskets
#     basket = Basket.create(
#       name: "Basket for #{business.name}",
#       description: Faker::Lorem.sentence,
#       price: Faker::Commerce.price,
#       availability: Faker::Date.forward(days: 30),
#       business: business
#     )

#     # Associate the Basket with the Business
#     business.update(basket: basket)

#     # Seed Reviews
#     Review.create(
#       comment: Faker::Lorem.paragraph,
#       rating: rand(1..5).to_f,
#       business: business,
#       user: User.all.sample
#     )

#     # Seed Favourites
#     Favourit.create(
#       basket: basket,
#       user: User.all.sample
#     )

#     # Seed Carts
#     Cart.create(
#       user: User.all.sample,
#       basket: basket,
#       pick_up: Faker::Date.forward(days: 7),
#       business: business
#     )

#     # Seed Bookings
#     Booking.create(
#       cart_id: Cart.all.sample.id,
#       user: User.all.sample
#     )
#   end
# end
