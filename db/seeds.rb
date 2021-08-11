# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
puts "Creating restaurants..."
cantine = { name: "Cantine", address: "7 Boundary St, London E2 7JE", phone_number: "55555555", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "222222", category: "italian" }
sushishop = { name: "SushiShop", address: "124 rue sainte, London E2 7JE", phone_number: "11111", category: "japanese" }
falafel = { name: "FalafelTime", address: "10 luili, London E2 7JE", phone_number: "333333", category: "french" }
burger_king = { name: "Burger King", address: "7 Boundary St, London E2 7JE", phone_number: "55555555", category: "french" }

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[cantine, pizza_east, sushishop, falafel, burger_king].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
