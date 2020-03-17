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

host1 = Host.new(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: 123456
  )
  host1.save!
space1 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  quiet: "Relax with your thoughts in our serene, peaceful space.",
  natural_lighting: "We have plenty of light through floor-to-ceiling windows to complement our plant-filled, natural design."
)
space1.host = host1
space1.save!

space2 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  cozy: "Your creativity will flourish in the comfiest of chairs sitting next to a lovely cactus garden.",
  natural_lighting: "Enjoy light streaming through the skylights in our bright, airy space."
)
space2.host = host1
space2.save!


space3 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  strong_aircon: "You'll be cool and comfortable in our lobby with excellent air circulation throughout the space.",
  good_coffee: "Our restaurant staff serves only the best locally sourced coffee."
)
space3.host = host1
space3.save!

space4 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  drinks_available: "After a day of work, please enjoy cocktails crafted by our in-house bartender at special discounts for Be Our Guest clients.",
  food_available: "Need to work through lunch? We've got you covered with  a full menu from our restaurant."
)
space4.host = host1
space4.save!

space5 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  comfortable_seats: "Ergonomics are important when you're working on a computer all day. We have the latest ergo chairs to keep you comfy.",
  natural_lighting: "We've just re-designed our lobby space to invite more natural lighting in, integrating indoor and out through our center garden."
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
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  quiet: "Relax with your thoughts in our serene, peaceful space.",
  natural_lighting: "We have plenty of light through floor-to-ceiling windows to complement our plant-filled, natural design."
)
space6.host = host2
space6.save!

space7 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  cozy: "Your creativity will flourish in the comfiest of chairs sitting next to a lovely cactus garden.",
  natural_lighting: "Enjoy light streaming through the skylights in our bright, airy space."
)
space7.host = host2
space7.save!


space8 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  strong_aircon: "You'll be cool and comfortable in our lobby with excellent air circulation throughout the space.",
  good_coffee: "Our restaurant staff serves only the best locally sourced coffee."
)
space8.host = host2
space8.save!

space9 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  drinks_available: "After a day of work, please enjoy cocktails crafted by our in-house bartender at special discounts for Be Our Guest clients.",
  food_available: "Need to work through lunch? We've got you covered with  a full menu from our restaurant."
)
space9.host = host2
space9.save!

space10 = Space.new(
  name: Faker::Company.name,
  address: Faker::Address.street_address,
  price_per_hour: rand(10..15),
  outlets: rand(5..10),
  capacity: rand(15..20),
  comfortable_seats: "Ergonomics are important when you're working on a computer all day. We have the latest ergo chairs to keep you comfy.",
  natural_lighting: "We've just re-designed our lobby space to invite more natural lighting in, integrating indoor and out through our center garden."
)
space10.host = host2
space10.save!

