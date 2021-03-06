# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Host.destroy_all
Space.destroy_all

ann = Host.new(
  name: "Ann Koh",
  email: "ann@gmail.com",
  password: 123456
  )
ann.save!

annspace1 = Space.new(
  name: "Majestic Hotel",
  address: "Novena, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  quiet: "You could hear a pin drop in our tranquil space, where only soothing music will help you maximize your productivity.",
  natural_lighting: "Our skylights allow rays of sunshine to shine through on the beautiful foliage we have spread throughout our space.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lounge1', 'https://source.unsplash.com/1600x900/?hotel-lounge2', 'https://source.unsplash.com/1600x900/?hotel-lounge3']
)
annspace1.host = ann
annspace1.save!

annspace2 = Space.new(
  name: "Antique Palms Resort",
  address: "Raffles Place, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  good_coffee: "We roast our own coffee beans from Guatemala at our in-house roastery, all under the critical care of our master barista.",
  strong_aircon: "We keep this space comfortably cool with the aircon consistently set to 23 C, which scientists have determined is the ideal temperature for creativity.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lounge31', 'https://source.unsplash.com/1600x900/?hotel-lounge32', 'https://source.unsplash.com/1600x900/?hotel-lounge33']
)
annspace2.host = ann
annspace2.save!

annbooking1 = Booking.new(
  start_time: DateTime.new(2020,3,19,11),
  end_time: DateTime.new(2020,3,19,16),
  client_name: "Saken",
  client_email: "saken@saken.com"
  )
annbooking1.space = annspace1
annbooking1.save!

annbooking2 = Booking.new(
  start_time: DateTime.new(2020,3,20,12),
  end_time: DateTime.new(2020,3,20,17),
  client_name: "Sarah",
  client_email: "sarah@sarah.com"
  )
annbooking2.space = annspace1
annbooking2.save!

annbooking3 = Booking.new(
  start_time: DateTime.new(2020,3,21,9),
  end_time: DateTime.new(2020,3,21,13),
  client_name: "Miguel",
  client_email: "miguel@miguel.com"
  )
annbooking3.space = annspace2
annbooking3.save!


annbooking4 = Booking.new(
  start_time: DateTime.new(2020,3,22,12),
  end_time: DateTime.new(2020,3,22,16),
  client_name: "Prima",
  client_email: "prima@prima.com"
  )
annbooking4.space = annspace2
annbooking4.save!

host1 = Host.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 123456
  )
  host1.save!
space1 = Space.new(
  name: "Sunrise Aurora Resort & Spa",
  address: "Holland Village, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  quiet: "Relax with your thoughts in our serene, peaceful space.",
  natural_lighting: "We have plenty of light through floor-to-ceiling windows to complement our plant-filled, natural design.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby1', 'https://source.unsplash.com/1600x900/?hotel-lobby2', 'https://source.unsplash.com/1600x900/?hotel-lobby3']
)
space1.host = host1
space1.save!

space2 = Space.new(
  name: "Coast Hotels",
  address: "Somerset, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  cozy: "Your creativity will flourish in the comfiest of chairs sitting next to a lovely cactus garden.",
  natural_lighting: "Enjoy light streaming through the skylights in our bright, airy space.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby4', 'https://source.unsplash.com/1600x900/?hotel-lobby5', 'https://source.unsplash.com/1600x900/?hotel-lobby6']
)
space2.host = host1
space2.save!


space3 = Space.new(
  name: "Kings Inn",
  address: "Buona Vista, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  strong_aircon: "You'll be cool and comfortable in our lobby with excellent air circulation throughout the space.",
  good_coffee: "Our restaurant staff serves only the best locally sourced coffee.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby7', 'https://source.unsplash.com/1600x900/?hotel-lobby8', 'https://source.unsplash.com/1600x900/?hotel-lobby9']
)
space3.host = host1
space3.save!

space4 = Space.new(
  name: "Moss View Hotel",
  address: "Little India, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  drinks_available: "After a day of work, please enjoy cocktails crafted by our in-house bartender at special discounts for Be Our Guest clients.",
  food_available: "Need to work through lunch? We've got you covered with  a full menu from our restaurant.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby10', 'https://source.unsplash.com/1600x900/?hotel-lobby11', 'https://source.unsplash.com/1600x900/?hotel-lobby12']
)
space4.host = host1
space4.save!

space5 = Space.new(
  name: "Hillside Hotel",
  address: "Telok Ayer, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  comfortable_seats: "Ergonomics are important when you're working on a computer all day. We have the latest ergo chairs to keep you comfy.",
  natural_lighting: "We've just re-designed our lobby space to invite more natural lighting in, integrating indoor and out through our center garden.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby13', 'https://source.unsplash.com/1600x900/?hotel-lobby14', 'https://source.unsplash.com/1600x900/?hotel-lobby15']
)
space5.host = host1
space5.save!

host2 = Host.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 123456
  )
  host1.save!
space6 = Space.new(
  name: "Quaint Motel",
  address: "Orchard, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  quiet: "Relax with your thoughts in our serene, peaceful space.",
  natural_lighting: "We have plenty of light through floor-to-ceiling windows to complement our plant-filled, natural design.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby16', 'https://source.unsplash.com/1600x900/?hotel-lobby17', 'https://source.unsplash.com/1600x900/?hotel-lobby18']
)
space6.host = host2
space6.save!

space7 = Space.new(
  name: "La Parisienne",
  address: "City Hall, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  cozy: "Your creativity will flourish in the comfiest of chairs sitting next to a lovely cactus garden.",
  natural_lighting: "Enjoy light streaming through the skylights in our bright, airy space.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby19', 'https://source.unsplash.com/1600x900/?hotel-lobby20', 'https://source.unsplash.com/1600x900/?hotel-lobby21']
)
space7.host = host2
space7.save!


space8 = Space.new(
  name: "The Worldly Traveler",
  address: "Marina Bay, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  strong_aircon: "You'll be cool and comfortable in our lobby with excellent air circulation throughout the space.",
  good_coffee: "Our restaurant staff serves only the best locally sourced coffee.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby22', 'https://source.unsplash.com/1600x900/?hotel-lobby23', 'https://source.unsplash.com/1600x900/?hotel-lobby24']
)
space8.host = host2
space8.save!

space9 = Space.new(
  name: "Grand Hotel",
  address: "Kallang, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  drinks_available: "After a day of work, please enjoy cocktails crafted by our in-house bartender at special discounts for Be Our Guest clients.",
  food_available: "Need to work through lunch? We've got you covered with  a full menu from our restaurant.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby25', 'https://source.unsplash.com/1600x900/?hotel-lobby26', 'https://source.unsplash.com/1600x900/?hotel-lobby27']
)
space9.host = host2
space9.save!

space10 = Space.new(
  name: "Shoreline Hotel & Spa",
  address: "Tiong Bahru, Singapore",
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  comfortable_seats: "Ergonomics are important when you're working on a computer all day. We have the latest ergo chairs to keep you comfy.",
  natural_lighting: "We've just re-designed our lobby space to invite more natural lighting in, integrating indoor and out through our center garden.",
  images: ['https://source.unsplash.com/1600x900/?hotel-lobby28', 'https://source.unsplash.com/1600x900/?hotel-lobby29', 'https://source.unsplash.com/1600x900/?hotel-lobby30']
)
space10.host = host2
space10.save!

