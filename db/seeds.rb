# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning books table..."

Book.destroy_all

puts "Creating new books..."

sandman = Book.create!(name: "Sandman", :author_id => 2, rating: 4)
tempete_echos = Book.create!(name: "La Tempête des Echos", :author_id => 3 , rating: 4)
happy_fat = Book.create!(name: "Happy Fat", :author_id => 4, rating: 5)


puts "Seed complete!"