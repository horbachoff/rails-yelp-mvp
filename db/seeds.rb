# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Carlota", address: "7 Boundary St, London E2 7JE", phone_number: "9173798094", category: "italian" }
pizza_east =  { name: "Hola Coca-cola", address: "London", phone_number: "2222222094", category: "chinese" }
matata = { name: "Akuna Matata", address: "Kiev", phone_number: "912223344", category: "belgian" }
avocado =  { name: "Ice Cream Leak", address: "New York", phone_number: "1111111114", category: "french" }
lola =  { name: "Lolita", address: "Belgium", phone_number: "000000004", category: "japanese" }

[ dishoom, pizza_east, matata, avocado, lola ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
