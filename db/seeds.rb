# Destroy existing data
User.destroy_all
Basket.destroy_all
Business.destroy_all

# Create Users
User.create!(
  email: 'user@example.com',
  password: 'password',
  address: 'Some Address',
  first_name: 'John',
  last_name: 'Doe',
  latitude: -20.3484,
  longitude: 57.5522
)

# Create businesses (restaurants, bakeries, supermarkets) around Mauritius
categories = ['restaurant', 'bakery', 'supermarket']

# Unique locations
locations = [
  { address: 'Port Louis, Mauritius', latitude: -20.1619, longitude: 57.4989 },
  { address: 'Grand Baie, Mauritius', latitude: -20.0186, longitude: 57.5802 },
  { address: 'Mahebourg, Mauritius', latitude: -20.4081, longitude: 57.7034 },
  { address: 'Tamarin, Mauritius', latitude: -20.3253, longitude: 57.3702 },
  { address: 'Flacq, Mauritius', latitude: -20.2346, longitude: 57.7151 },
  { address: 'Flic en Flac, Mauritius', latitude: -20.2711, longitude: 57.3661 },
  { address: 'Rose Belle, Mauritius', latitude: -20.4047, longitude: 57.6191 },
  { address: 'Quatre Bornes, Mauritius', latitude: -20.2641, longitude: 57.4797 },
  { address: 'Bel Ombre, Mauritius', latitude: -20.4936, longitude: 57.3244 },
  { address: 'Le Morne, Mauritius', latitude: -20.4411, longitude: 57.3203 },
  # Add 5 more unique locations
  { address: 'Chamarel, Mauritius', latitude: -20.4274, longitude: 57.3966 },
  { address: 'Rivière Noire, Mauritius', latitude: -20.3602, longitude: 57.3615 },
  { address: 'Pamplemousses, Mauritius', latitude: -20.1058, longitude: 57.5707 },
  { address: 'Black River, Mauritius', latitude: -20.3566, longitude: 57.3619 },
  { address: 'Grand Port, Mauritius', latitude: -20.4346, longitude: 57.7017 }
]

business_names = [
  "Chez Pierre", "La Boulangerie", "Freshway Market",
  "Spice Garden", "Sweet Cravings", "Island Pantry",
  "Seafood Haven", "The Pastry Shop", "Green Grocers",
  "Sunset Bistro", "The Bread House", "Farmers' Market",
  "Sunny Foods", "Morning Fresh", "Tasty Bites",
  "Golden Harvest", "Aroma Delights", "Marketplace",
  "Ocean Fresh", "Country Oven"
]

restaurant_descriptions = [
  "Savor the finest local and international cuisine with a breathtaking view.",
  "Experience a fusion of flavors crafted by our seasoned chefs.",
  "Indulge in a variety of dishes prepared with fresh, locally sourced ingredients."
]

bakery_descriptions = [
  "Delight in our assortment of freshly baked pastries and bread.",
  "Taste the sweetness of life with our delectable cakes and desserts.",
  "Experience the aroma of homemade bread and artisanal treats."
]

supermarket_descriptions = [
  "Your one-stop destination for fresh produce and daily essentials.",
  "Explore a wide selection of locally sourced groceries and organic products.",
  "Stock up on quality food items and household necessities."
]

# Loop through categories and locations for limited business creation
business_count = 0
while business_count < 15
  category = categories.sample
  location = locations.pop
  descriptions = category == 'restaurant' ? restaurant_descriptions : category == 'bakery' ? bakery_descriptions : supermarket_descriptions

  business = Business.create!(
    category: category,
    name: business_names.pop,
    description: descriptions.sample,
    address: location[:address],
    latitude: location[:latitude],
    longitude: location[:longitude]
  )

  5.times do
    Basket.create!(
      name: "Basket at #{business.name}",
      description: "A unique selection of #{category}s for your enjoyment.",
      price: rand(15.0..80.0).round(2),
      availability: Date.today + rand(1..30).days,
      business: business
    )
  end

  business_count += 1
end
