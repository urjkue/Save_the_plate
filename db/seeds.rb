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
  "La Baguette Dorée",
  "La Boulangerie des îles",
  "Pains et Délices",
  "Le Pétrin Magique",
  "Au Fournil Gourmand"
]
restaurant_name = [
  "Le Délice Épicurien",
  "La Table Enchantée",
  "Saveurs Divines",
  "L'Auberge Gourmande",
  "Le bon goût"
]
supermarket_name = [
  "Supermarché Étoile",
  "Marché Fantastique",
  "Supermarché Horizon",
  "Épicentre Marchand" ,
  "Magasin des Merveilles"
]
restaurant_descriptions = [
  "Discover an unforgettable culinary experience with our surprise basket of the day. Exquisite flavors and unique creations await you. Let our chef surprise you!",
  "Immerse yourself in a world of delights with our surprise basket. Refined dishes and magical flavor combinations for an extraordinary gastronomic experience.",
  "Embark on a taste journey with our surprise basket. Divine dishes prepared with passion await you. Let us awaken your taste buds!",
  "Experience the best of our cuisine with our surprise basket. Tasty dishes, quality ingredients, and a breathtaking gastronomic experience.",
  "Explore flavors from around the world with our surprise basket. Dishes inspired by different cultures for a unique culinary journey.",
]
bakery_descriptions = [
  "Éveillez vos sens avec notre panier surprise rempli de délices croustillants. Baguettes fraîches, pains spéciaux et douceurs sucrées vous réservent une expérience gourmande.",
  "Redécouvrez le plaisir du pain avec notre panier surprise. Des créations uniques, des saveurs variées et des douceurs qui réchauffent le cœur.",
  "Laissez-vous charmer par notre panier surprise rempli de douceurs divines. Des pâtisseries délicates, des biscuits artisanaux et bien plus encore.",
  "Plongez dans un monde féerique de saveurs avec notre panier surprise. Des créations magiques, des pains enchantés et des surprises sucrées vous attendent.",
  "Découvrez le plaisir du fournil avec notre panier surprise. Des pains croustillants, des gâteaux moelleux et des saveurs gourmandes pour combler vos envies."
]
supermarket_descriptions = [
  "Explorez notre panier surprise rempli d'étoiles du quotidien. Des produits frais, des trouvailles inattendues et des pépites gourmandes pour un shopping étoilé.",
  "Découvrez le fantastique avec notre panier surprise. Des produits de qualité, des saveurs surprenantes et des trouvailles uniques pour un quotidien extraordinaire.",
  "Faites un voyage autour du monde avec notre panier surprise. Des produits exotiques, des découvertes culinaires et des surprises pour éveiller votre curiosité.",
  "Transformez votre routine avec notre panier surprise. Des produits du quotidien de qualité, des promotions spéciales et des surprises enchantées pour chaque panier.",
  "Plongez dans un univers de merveilles avec notre panier surprise. Des produits de tous les jours transformés en trouvailles extraordinaires pour un shopping magique.",
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
    category: 'Bakery',
    name: bakery_name[business_count],
    description: bakery_descriptions[business_count],
    address: bakery_location[:address],
    latitude: bakery_location[:latitude],
    longitude: bakery_location[:longitude],
    image_url: bakery_images[business_count]
  )
  # file = URI.open(bakery_images[business_count])
  # bakery.photo.attach(io: file, filename: bakery.name, content_type: 'image/jpg')
  # puts "added photo"
  5.times do
    Basket.create!(
      name: "Basket at #{bakery.name}",
      description: bakery_descriptions[business_count],
      price: rand(150..250),
      pickup: DateTime.now + rand(1..30).days,
      availability: Date.today + rand(1..30).days,
      business: bakery,
    )

  end

  # Restaurant
  restaurant_location = locations.pop
  restaurant = Business.create!(
    category: 'restaurant',
    name: restaurant_name[business_count],
    description: restaurant_descriptions[business_count],
    address: restaurant_location[:address],
    latitude: restaurant_location[:latitude],
    longitude: restaurant_location[:longitude],
    image_url: restaurant_images[business_count]
  )
  5.times do
    Basket.create!(
      name: "Basket at #{restaurant.name}",
      description: restaurant_descriptions[business_count],
      price: rand(15..80),
      pickup: DateTime.now + rand(1..30).days,
      availability: Date.today + rand(1..30).days,
      business: restaurant
    )


  end

  # Supermarket
  supermarket_location = locations.pop
  supermarket = Business.create!(
    category: 'supermarket',
    name: supermarket_name[business_count],
    description: supermarket_descriptions[business_count],
    address: supermarket_location[:address],
    latitude: supermarket_location[:latitude],
    longitude: supermarket_location[:longitude],
    image_url: supermarket_images[business_count]
  )
  5.times do
    Basket.create!(
      name: "Basket at #{supermarket.name}",
      description: supermarket_descriptions[business_count],
      price: rand(15..80).round(2),
      pickup: DateTime.now + rand(1..30).days,
      availability: Date.today + rand(1..30).days,
      business: supermarket
    )
    # 5.times do
    #   Review.create!(
    #     comment: Faker::Restaurant.review,
    #     rating: rand(1..5),
    #     user: User.first,
    #     business: supermarket
    #   )
    # end
  end
  business_count += 1
end
