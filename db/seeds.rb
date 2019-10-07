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

puts 'Creating cocktails'

@opinicus = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1566823422707-7813dab8eca9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  name: 'Opinicus'
  )

@opinicus.save!

@harpy = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1527661591475-527312dd65f5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=358&q=80',
  name: 'Harpy'
)

@harpy.save!

@silver_basilisk = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1486428263684-28ec9e4f2584?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  name: 'Silver Basilisk'
)

@silver_basilisk.save!

@ghoul = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1550426735-c33c7ce414ff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=320&q=80',
  name: 'Ghoul'
)

@ghoul.save!

@ulfheddin = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1536599424071-0b215a388ba7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  name: 'Ulfheddin'
)

@ulfheddin.save!

@barghest = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1506802913710-40e2e66339c9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  name: 'Barghest'
)

@barghest.save!

@mourntart = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1517644493876-7864565e3bf9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  name: 'Mourntart'
)

@mourntart.save!

@chort = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1552286101-1d6d585650be?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  name: 'Chort'
)

@chort.save!

@amanis = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1566284628402-3f0895b3eb28?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60',
  name: 'Amanis'
)

@amanis.save!

puts "Completed #{Cocktail.count} cocktails and #{Ingredient.count} ingredients"