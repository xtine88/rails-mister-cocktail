# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all

Ingredient.create!(name: 'rum')

Cocktail.new(name:'something to drink')

Dose.new(description: '1L', ingredient: 'whiskey')
