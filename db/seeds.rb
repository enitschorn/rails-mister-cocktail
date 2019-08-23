require 'open-uri'
require 'json'
require 'faker'

images = ['https://images.unsplash.com/photo-1424591093900-514bab956faf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1542600176-9d2c4bb4bc1a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1560508180-03f285f67ded?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1485265449635-ca623a55e95c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 'https://images.unsplash.com/photo-1461823385004-d7660947a7c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60']

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

puts 'Creating cocktails'

cocktail_names = []
9.times { cocktail_names << Faker::Games::Witcher.monster }
cocktail_names.uniq.each do |name|
  @cocktail = Cocktail.new(name: name)
  @cocktail.remote_photo_url = images.sample
  @cocktail.save!
end

puts "Completed #{Cocktail.count} cocktails and #{Ingredient.count} ingredients"


