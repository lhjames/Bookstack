# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating new books..."

quatre_filles = Book.create!(name: "Les Quatre filles du docteur March", :author_id => 5, rating: 4)
quatre_filles = Book.create!(name: "La Mort et l'Ecuyer du Roi", :author_id => 6, rating: 5)
akata = Book.create!(name: "Akata Witch", :author_id => 7, rating: 4)

puts "Seed complete!"