# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0677886655", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0687658760", category: "italian"}
la_broche = {name: "la Broche", address: "31 rue des capucins, Lyon", phone_number: "0698767865", category: "belgian"}
cafe_flow = {name: "Cafe Flow", address: "2 allée du Levant, Tour-de-Salvagny", phone_number: "0698789678", category: "french"}
la_brasserie_flow = {name: "La Brasserie Flow", address: "6 avenue du progrès, Chassieu", phone_number: "0634567567", category: "french"}

[dishoom, pizza_east, la_broche, cafe_flow, la_brasserie_flow].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
