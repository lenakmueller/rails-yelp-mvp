# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
makimaki = { name: 'Maki Maki', address: 'Bonn', phone_number: '088-888-888', category: 'japanese' }
pizza_east = { name: 'Pizza East', address: 'London', phone_number: '033-333-333', category: 'italian' }
vapiano = { name: 'Vapiano', address: 'Cologne', phone_number: '044-444-444', category: 'italian' }
cityfries = { name: 'City Fries', address: 'Frankfurt', phone_number: '011-111-111', category: 'belgian' }
chomchay = { name: 'Chom Chay', address: 'Cologne Rudolfplatz', phone_number: '022-222-222 ', category: 'chinese' }

[makimaki, pizza_east, vapiano, cityfries, chomchay].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
