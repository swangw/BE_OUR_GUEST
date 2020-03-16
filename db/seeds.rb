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

5.times do
  host = Host.new(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 123456
    )
  host.save!
  5.times do
    space = Space.new(
      name: Faker::Company.name,
      address: Faker::Address.street_address,
      price_per_hour: rand(10..15),
      outlets: rand(5..10),
      capacity: rand(15..20)
    )
    space.host = host
    space.save!
  end
end
