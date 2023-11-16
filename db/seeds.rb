

User.destroy_all
Basket.destroy_all
Review.destroy_all
# Business.destroy_all
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

Basket.create!(
  name: "Creole Culinary Fusion",
  description: "Experience a fusion of traditional Creole dishes and international flavors.",
  price: 180,
  business_id: 54,
  pickup: DateTime.now + 1
)

Basket.create!(
  name: "Flavors of Mauritius",
  description: "Embark on a journey through the rich and vibrant flavors of Mauritius.",
  price: 200,
  business_id: 54,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Creole Spice Adventure",
  description: "Explore a spice-filled adventure featuring the best of Creole cuisine.",
  price: 170,
  business_id: 54,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Creole Comfort Feast",
  description: "Indulge in comforting Creole favorites in a curated feast.",
  price: 190,
  business_id: 54,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Savoring Creole Delicacies",
  description: "Delight in a selection of Creole delicacies that capture the essence of Mauritius.",
  price: 210,
  business_id: 54,
  pickup: DateTime.now + 5
)
Basket.create!(
  name: "Aromatic Spice Adventure",
  description: "Embark on an aromatic adventure with a blend of authentic Mauritian spices.",
  price: 200,
  business_id: 56,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Exotic Spice Fusion",
  description: "Experience the fusion of exotic flavors curated by Spice Isle Cuisine.",
  price: 190,
  business_id: 56,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Spice Infused Delights",
  description: "Delight in a collection of dishes infused with rich Mauritian spices.",
  price: 180,
  business_id: 56,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Sensory Spice Celebration",
  description: "Celebrate your senses with a unique culinary journey through Spice Isle Cuisine.",
  price: 195,
  business_id: 56,
  pickup: DateTime.now + 5
)
Basket.create!(
  name: "Coastal Catch Delights",
  description: "Savor the coastal catch delights with a blend of fresh seafood at Oceanfront Eats.",
  price: 190,
  business_id: 57,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Marine Medley Extravaganza",
  description: "Indulge in an extravaganza of marine medley showcasing Oceanfront Eats' finest seafood.",
  price: 185,
  business_id: 57,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Seaside Sunset Platter",
  description: "Enjoy a sunset platter curated with a variety of coastal flavors from Oceanfront Eats.",
  price: 195,
  business_id: 57,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Wave-inspired Cuisine",
  description: "Dive into wave-inspired cuisine that brings the essence of the sea to your table.",
  price: 180,
  business_id: 57,
  pickup: DateTime.now + 5
)

Basket.create!(
  name: "Island Paradise Platter",
  description: "Explore an exotic island paradise platter bursting with tropical flavors.",
  price: 200,
  business_id: 58,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Global Spice Journey",
  description: "Embark on a global spice journey featuring international influences and tropical delights.",
  price: 185,
  business_id: 58,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Tropical Spice Extravaganza",
  description: "Experience an extravaganza of tropical spices showcasing the essence of Tropical Spice Fusion.",
  price: 190,
  business_id: 58,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Tropical Fusion Delights",
  description: "Delight in a combination of tropical fusion flavors specially crafted at Tropical Spice Fusion.",
  price: 180,
  business_id: 58,
  pickup: DateTime.now + 5
)

Basket.create!(
  name: "Coastal Bounty Showcase",
  description: "Experience a showcase of coastal bounty with Oceanfront Market's premium selections.",
  price: 195,
  business_id: 59,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "International Flavors Collection",
  description: "Explore an international collection of flavors handpicked from Oceanfront Market.",
  price: 185,
  business_id: 59,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Gourmet Delicacies Ensemble",
  description: "Indulge in a gourmet ensemble featuring Oceanfront Market's finest delicacies.",
  price: 200,
  business_id: 59,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Market Fresh Extravaganza",
  description: "Delight in an extravaganza of market-fresh produce from Oceanfront Market.",
  price: 190,
  business_id: 59,
  pickup: DateTime.now + 5
)
Basket.create!(
  name: "Fresh Harvest Selection",
  description: "Explore a selection of freshly harvested products at Island Fresh Mart.",
  price: 185,
  business_id: 60,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Organic Delights Bundle",
  description: "Indulge in a bundle of organic delights sourced from Island Fresh Mart.",
  price: 195,
  business_id: 60,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Garden-Fresh Medley",
  description: "Experience a medley of garden-fresh produce curated at Island Fresh Mart.",
  price: 180,
  business_id: 60,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Farm-to-Table Selection",
  description: "Delight in a farm-to-table selection highlighting freshness at Island Fresh Mart.",
  price: 190,
  business_id: 60,
  pickup: DateTime.now + 5
)
Basket.create!(
  name: "Seaside Spice Sensation",
  description: "Indulge in a spice sensation inspired by coastal flavors at Coastal Essentials.",
  price: 195,
  business_id: 61,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Coastal Harvest Bounty",
  description: "Experience a bountiful harvest from the coast with Coastal Essentials' finest picks.",
  price: 185,
  business_id: 61,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Oceanic Gourmet Selection",
  description: "Explore a gourmet selection influenced by the ocean's bounty at Coastal Essentials.",
  price: 200,
  business_id: 61,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Coastal Fusion Feast",
  description: "Savor a fusion feast that captures the essence of coastal cuisine at Coastal Essentials.",
  price: 180,
  business_id: 61,
  pickup: DateTime.now + 5
)
Basket.create!(
  name: "Exotic Fruit Medley",
  description: "Indulge in a medley of exotic fruits sourced from Tropical Grocers.",
  price: 190,
  business_id: 62,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Tropical Spice Collection",
  description: "Explore a collection of tropical spices and flavors at Tropical Grocers.",
  price: 185,
  business_id: 62,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Island Treats Sampler",
  description: "Sample delightful island treats curated by Tropical Grocers.",
  price: 195,
  business_id: 62,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Tropical Pantry Essentials",
  description: "Discover essential pantry items showcasing tropical goodness at Tropical Grocers.",
  price: 180,
  business_id: 62,
  pickup: DateTime.now + 5
)

Basket.create!(
  name: "Harbor Market Exclusive Selection",
  description: "Explore an exclusive selection of gourmet treats and local specialties at Harbor Market.",
  price: 200,
  business_id: 63,
  pickup: DateTime.now + 2
)

Basket.create!(
  name: "Family Favorites Bundle",
  description: "Curated bundle featuring family favorites for a delightful dining experience from Harbor Market.",
  price: 150,
  business_id: 63,
  pickup: DateTime.now + 3
)

Basket.create!(
  name: "Harbor Market Breakfast Essentials",
  description: "Start your day right with a selection of breakfast essentials from Harbor Market.",
  price: 170,
  business_id: 63,
  pickup: DateTime.now + 4
)

Basket.create!(
  name: "Gourmet Delights Sampler",
  description: "Indulge in a sampler of gourmet delights carefully crafted by Harbor Market.",
  price: 220,
  business_id: 63,
  pickup: DateTime.now + 6
)


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
