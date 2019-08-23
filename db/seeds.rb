require 'open-uri'
require 'json'

if Rails.env.development?
  puts 'Cleaning up database'
  Cocktail.destroy_all
  Dose.destroy_all
  Ingredient.destroy_all
end

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)

puts 'Creating ingredients'

ingredients['drinks'].each do |ingredient|
  Ingredient.create!(name: (ingredient['strIngredient1']))
end

puts "Completed #{Ingredient.count}"
