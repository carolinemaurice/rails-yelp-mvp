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
casa = { name: 'La Casa', address: 'Fenouillet', category: 'italian' }
frite = { name: 'La Nouvelle Belgique ', address: 'Seilh', category: 'belgian' }
tradition = { name: 'O Tradition', address: 'Lespinasse', category: 'french' }
monde = { name: 'Au tour du monde', address: 'Saint Alban', category: 'chinese' }
sushi = { name: 'Sendo Sushi', address: 'Bruguière', category: 'japanese' }

attr_group = [casa, frite, tradition, monde, sushi]

attr_group.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts 'Finished!'
