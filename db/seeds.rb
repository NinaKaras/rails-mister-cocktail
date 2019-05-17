# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all

require 'json'
require 'open-uri'

puts "Creating ingredients"

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients_serialized = open(url).read

ingredients = JSON.parse(ingredients_serialized)
ingredients['drinks'].each do |drink|
  Ingredient.create!(name: drink['strIngredient1'])
end


# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "tequila")
# Ingredient.create(name: "rum")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "tonic")
# Ingredient.create(name: "orange")
# Ingredient.create(name: "cucumber")
# Ingredient.create(name: "tonic")
# Ingredient.create(name: "orange")
# Ingredient.create(name: "cucumber")
# Ingredient.create(name: "orange juice")
# Ingredient.create(name: "red bull")
# Ingredient.create(name: "water")
