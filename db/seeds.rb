# Destroy existing data
Favourit.destroy_all
Cart.destroy_all
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
  { address: 'saint pierre, Mauritius', latitude: -20.225179, longitude: 57.5383 },
  { address: 'saint mark, Mauritius', latitude: -20.2175, longitude: 57.5203 },
  { address: 'saint yarn, Mauritius', latitude: -20.2279, longitude: 57.5377 },
  { address: 'Quatre Bornes, Mauritius', latitude: -20.2641, longitude: 57.4797 },
  { address: 'Bel Ombre, Mauritius', latitude: -20.4936, longitude: 57.3244 },
  { address: 'Le Morne, Mauritius', latitude: -20.4411, longitude: 57.3203 },
  # Add 5 more unique locations
  { address: 'Chamarel, Mauritius', latitude: -20.4274, longitude: 57.3966 },
  { address: 'Rivière Noire, Mauritius', latitude: -20.3602, longitude: 57.3615 },
  { address: 'Pamplemousses, Mauritius', latitude: -20.1058, longitude: 57.5707 },
  { address: 'Black River, Mauritius', latitude: -20.3566, longitude: 57.3619 },
  { address: 'Grand Port, Mauritius', latitude: -20.4346, longitude: 57.7017 },
  { address: 'Moka, Mauritius', latitude: -20.2356, longitude: 57.4964 },
  { address: 'Vacoas-Phoenix, Mauritius', latitude: -20.2986, longitude: 57.4783 }
]
bakery_name = [
  "chez_mimi",
  "laboulangerie_des_ile",
  " le_cristalin",
  "la_baguette_magic",
  "la_boulangerie_du_coin"
]
restaurant_name = [
  "chez_jj",
  "alberto",
  "kt_mane",
  "caton",
  "le_bon_gout"
]
supermarket_name = [
  "winner",
  "super_u",
  "jumbo",
  "shoprite" ,
  "monoprix"
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

# Define Cloudinary image URLs for each category
bakery_images = [
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152377/Bakery/angelo-pantazis-2-U0A2tNYhM-unsplash_hbsk6h.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152376/Bakery/siebe-warmoesken-R3iAcQxylmE-unsplash_abpi8i.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152375/Bakery/mae-mu-_h-2jrL9cMU-unsplash_wgsewi.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152375/Bakery/yeh-xintong-go3DT3PpIw4-unsplash_rxcajc.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152374/Bakery/mae-mu-m9pzwmxm2rk-unsplash_du53ci.jpg'
]
restaurant_images = [
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152364/Restaurant/jakub-kapusnak-4f4YZfDMLeU-unsplash_tvicnt.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152364/Restaurant/orijit-chatterjee-wEBg_pYtynw-unsplash_mmzcck.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152357/Restaurant/ali-inay-y3aP9oo9Pjc-unsplash_avmqkr.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152349/Restaurant/debbie-tea-LO7rNP0LRro-unsplash_v2nsbo.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152340/Restaurant/mahmoud-fawzy-n1DePkKznLY-unsplash_krmasu.jpg'
]
supermarket_images = [
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152260/Supermarket/tara-clark-Gk8LG7dsHWA-unsplash_vjigkz.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152257/Supermarket/oren-elbaz-4vJepwg_aB0-unsplash_epxau6.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152251/Supermarket/nrd-D6Tu_L3chLE-unsplash_akhg4o.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152257/Supermarket/nrd-7vvNhFSBW2Y-unsplash_ffvf9h.jpg',
  'https://res.cloudinary.com/dkhggfhkc/image/upload/v1700152260/Supermarket/rob-maxwell-6Xb0-zJM_lU-unsplash_hbsz0m.jpg'
]
business_count = 0
while business_count < 5
  # Ensure there are enough locations
  if locations.empty?
    puts 'Not enough locations available!'
    break
  end
  # Ensure there are enough images for each category
  if bakery_images.length < 5 || restaurant_images.length < 5 || supermarket_images.length < 5
    puts 'Not enough images available for each category!'
    break
  end
  # Bakery
  p business_count
  bakery_location = locations.pop
  bakery = Business.create!(
    category: 'bakery',
    name: bakery_name[business_count],
    description: 'Delight in our assortment of freshly baked pastries and bread.',
    address: bakery_location[:address],
    latitude: bakery_location[:latitude],
    longitude: bakery_location[:longitude],
    image_url: bakery_images[business_count]
  )
  file = URI.open(bakery_images[business_count])
  bakery.photo.attach(io: file, filename: bakery.name, content_type: 'image/jpg')
  puts "added photo"
  5.times do
    Basket.create!(
      name: "Basket at #{bakery.name}",
      description: 'A unique selection of bakery items for your enjoyment.',
      price: rand(15.0..80.0).round(2),
      availability: Date.today + rand(1..30).days,
      business: bakery
    )
    5.times do
      Review.create!(
        comment: Faker::Restaurant.review,
        rating: rand(1..5),
        user: User.first,
        business: bakery
      )
    end
  end
  # Restaurant
  restaurant_location = locations.pop
  restaurant = Business.create!(
    category: 'restaurant',
    name: restaurant_name[business_count],
    description: 'Savor the finest local and international cuisine with a breathtaking view.',
    address: restaurant_location[:address],
    latitude: restaurant_location[:latitude],
    longitude: restaurant_location[:longitude],
    image_url: restaurant_images[business_count]
  )
  5.times do
    Basket.create!(
      name: "Basket at #{restaurant.name}",
      description: 'A unique selection of restaurant items for your enjoyment.',
      price: rand(15.0..80.0).round(2),
      availability: Date.today + rand(1..30).days,
      business: restaurant
    )
    5.times do
      Review.create!(
        comment: Faker::Restaurant.review,
        rating: rand(1..5),
        user: User.first,
        business: restaurant
      )
    end

  end
  # Supermarket
  supermarket_location = locations.pop
  supermarket = Business.create!(
    category: 'supermarket',
    name: supermarket_name[business_count],
    description: 'Your one-stop destination for fresh produce and daily essentials.',
    address: supermarket_location[:address],
    latitude: supermarket_location[:latitude],
    longitude: supermarket_location[:longitude],
    image_url: supermarket_images[business_count]
  )
  5.times do
    Basket.create!(
      name: "Basket at #{supermarket.name}",
      description: 'A unique selection of supermarket items for your enjoyment.',
      price: rand(15.0..80.0).round(2),
      availability: Date.today + rand(1..30).days,
      business: supermarket
    )
    5.times do
      Review.create!(
        comment: Faker::Restaurant.review,
        rating: rand(1..5),
        user: User.first,
        business: supermarket
      )
    end
  end
  business_count += 1
end
