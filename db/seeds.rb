require 'open-uri'
require 'json'

if Rails.env.development?
  puts 'Cleaning up database'
  Cocktail.destroy_all
  Dose.destroy_all
  Ingredient.destroy_all
  Review.destroy_all
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

@basilisk = Cocktail.new(
  remote_photo_url: 'https://images.unsplash.com/photo-1486428263684-28ec9e4f2584?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80',
  name: 'Basilisk'
)

@basilisk.save!

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

puts 'Creating doses'

@cocktails = Cocktail.all
@ingredients = Ingredient.all

@dose_one = Dose.new(
  description: "45ml",
  ingredient_id: @ingredients[0].id,
  cocktail_id: Cocktail.first.id
)

@dose_one.save!

@dose_two = Dose.new(
  description: "25ml",
  ingredient_id: @ingredients[4].id,
  cocktail_id: Cocktail.first.id
)

@dose_two.save!

@dose_three = Dose.new(
  description: "1 teaspoon",
  ingredient_id: @ingredients[6].id,
  cocktail_id: Cocktail.first.id
)

@dose_three.save!

@dose_four = Dose.new(
  description: "25ml",
  ingredient_id: @ingredients[50].id,
  cocktail_id: @cocktails[1].id
)

@dose_four.save!

@dose_five = Dose.new(
  description: "60ml",
  ingredient_id: @ingredients[40].id,
  cocktail_id: @cocktails[1].id
)

@dose_five.save!

@dose_six = Dose.new(
  description: "2ml",
  ingredient_id: @ingredients[5].id,
  cocktail_id: @cocktails[1].id
)

@dose_six.save!

@dose_seven = Dose.new(
  description: "45ml",
  ingredient_id: @ingredients[99].id,
  cocktail_id: @cocktails[2].id
)

@dose_seven.save!

@dose_eight = Dose.new(
  description: "55ml",
  ingredient_id: @ingredients[9].id,
  cocktail_id: @cocktails[2].id
)

@dose_eight.save!

@dose_nine = Dose.new(
  description: "15ml",
  ingredient_id: @ingredients[17].id,
  cocktail_id: @cocktails[2].id
)

@dose_nine.save!

@dose_ten = Dose.new(
  description: "30ml",
  ingredient_id: @ingredients[67].id,
  cocktail_id: @cocktails[3].id
)

@dose_ten.save!

@dose_eleven = Dose.new(
  description: "45ml",
  ingredient_id: @ingredients[7].id,
  cocktail_id: @cocktails[3].id
)

@dose_eleven.save!

@dose_twelve = Dose.new(
  description: "3ml",
  ingredient_id: @ingredients[88].id,
  cocktail_id: @cocktails[3].id
)

@dose_twelve.save!

@dose_thirteen = Dose.new(
  description: "1ml",
  ingredient_id: @ingredients[90].id,
  cocktail_id: @cocktails[4].id
)

@dose_thirteen.save!

@dose_fourteen = Dose.new(
  description: "55ml",
  ingredient_id: @ingredients[12].id,
  cocktail_id: @cocktails[4].id
)

@dose_fourteen.save!

@dose_fifteen = Dose.new(
  description: "20ml",
  ingredient_id: @ingredients[80].id,
  cocktail_id: @cocktails[4].id
)

@dose_fifteen.save!

@dose_sixteen = Dose.new(
  description: "6ml",
  ingredient_id: @ingredients[76].id,
  cocktail_id: @cocktails[5].id
)

@dose_sixteen.save!

@dose_seventeen = Dose.new(
  description: "10ml",
  ingredient_id: @ingredients[6].id,
  cocktail_id: @cocktails[5].id
)

@dose_seventeen.save!

@dose_eighteen = Dose.new(
  description: "10ml",
  ingredient_id: @ingredients[9].id,
  cocktail_id: @cocktails[5].id
)

@dose_eighteen.save!

@dose_nineteen = Dose.new(
  description: "10ml",
  ingredient_id: @ingredients[1].id,
  cocktail_id: @cocktails[6].id
)

@dose_nineteen.save!

@dose_twenty = Dose.new(
  description: "12ml",
  ingredient_id: @ingredients[44].id,
  cocktail_id: @cocktails[6].id
)

@dose_twenty.save!

@dose_twenty_one = Dose.new(
  description: "5ml",
  ingredient_id: @ingredients[15].id,
  cocktail_id: @cocktails[6].id
)

@dose_twenty_one.save!

@dose_twenty_two = Dose.new(
  description: "16ml",
  ingredient_id: @ingredients[46].id,
  cocktail_id: @cocktails[7].id
)

@dose_twenty_two.save!

@dose_twenty_three = Dose.new(
  description: "6ml",
  ingredient_id: @ingredients[4].id,
  cocktail_id: @cocktails[7].id
)

@dose_twenty_three.save!

@dose_twenty_four = Dose.new(
  description: "15ml",
  ingredient_id: @ingredients[87].id,
  cocktail_id: @cocktails[7].id
)

@dose_twenty_four.save!

@dose_twenty_five = Dose.new(
  description: "1ml",
  ingredient_id: @ingredients[20].id,
  cocktail_id: @cocktails[8].id
)

@dose_twenty_five.save!

@dose_twenty_six = Dose.new(
  description: "24ml",
  ingredient_id: @ingredients[66].id,
  cocktail_id: Cocktail.last.id
)

@dose_twenty_six.save!

@dose_twenty_seven = Dose.new(
  description: "5ml",
  ingredient_id: @ingredients[68].id,
  cocktail_id: Cocktail.last.id
)

@dose_twenty_seven.save!

@dose_twenty_eight = Dose.new(
  description: "45ml",
  ingredient_id: @ingredients[43].id,
  cocktail_id: Cocktail.last.id
)

@dose_twenty_eight.save!

puts 'Creating reviews'

@opinicus_review_one = Review.new(
  rating: 3,
  description: "Lovely summer drink. Easy to make for parties with many guests. Make sure the limes are fresh though!",
  cocktail_id: Cocktail.first.id
)

@opinicus_review_one.save!

@opinicus_review_two = Review.new(
  rating: 5,
  description: "Made my night!",
  cocktail_id: Cocktail.first.id
)

@opinicus_review_two.save!

@harpy_review = Review.new(
  rating: 5,
  description: "Just what I needed a easy, sweet cocktail that was easy to make.",
  cocktail_id: @cocktails[2].id
)

@harpy_review.save!

@basilisk_review_one = Review.new(
  rating: 5,
  description: "This is the start to a good recipe. I would use fresh grapefruits. Most importantly use Cream of Coconut, NOT coconut milk. Goya makes it. I used Myers Dark Rum. I also added a little condensed milk and omitted the sugar. ",
  cocktail_id: @cocktails[3].id
)

@basilisk_review_one.save!

@basilisk_review_two = Review.new(
  rating: 1,
  description: "Not my thing. Too many ingredients.",
  cocktail_id: @cocktails[3].id
)

@basilisk_review_two.save!

@basilisk_review_three = Review.new(
  rating: 5,
  description: "YUM! I added some vanilla yogurt to this to make it more of a smoothie and we all wanted seconds! Good stuff!",
  cocktail_id: @cocktails[3].id
)

@basilisk_review_three.save!

@amanis_review = Review.new(
  rating: 4,
  description: "This is a great recipe! So simple, yet so quintessentially summer-time British! Cheers to all!",
  cocktail_id: @cocktails[4].id
)

@amanis_review.save!

@ghoul_review_one = Review.new(
  rating: 1,
  description: "Sorry...much too much lime juice! Choose between the juice and the wedge.",
  cocktail_id: @cocktails[5].id
)

@ghoul_review_one.save!

@ghoul_review_two = Review.new(
  rating: 4,
  description: "Absolutely ethereal. These drinks remind me of my dead grandmother who went to heaven. Truly a gift from above.(Only someone from below could hate them and if they were from below they cannot be from Arkansas).",
  cocktail_id: @cocktails[5].id
)

@ghoul_review_two.save!

@ulfheddin_review_one = Review.new(
  rating: 5,
  description: "Great drink! I made exactly as recipe stated. The two rums are what make this drink. I made for our memorial weekend BBQ - big hit! Not a poor man's drink though - to buy all the ingredients gets pretty costly - but worth it for something different!",
  cocktail_id: @cocktails[6].id
)

@ulfheddin_review_one.save!

@ulfheddin_review_two = Review.new(
  rating: 4,
  description: "This drink is awesome...takes you right to the islands!",
  cocktail_id: @cocktails[6].id
)

@ulfheddin_review_two.save!

@barghest_review = Review.new(
  rating: 3,
  description: "It's ok. Nothing special.",
  cocktail_id: @cocktails[7].id
)

@barghest_review.save!

@mourntart_review_one = Review.new(
  rating: 3,
  description: "Lovely.",
  cocktail_id: @cocktails[8].id
)

@mourntart_review_one.save!

@mourntart_review_two = Review.new(
  rating: 5,
  description: "Excellent recipe! We made a whole pitcher and they are all gone already...",
  cocktail_id: @cocktails[8].id
)

@mourntart_review_two.save!

@mourntart_review_three = Review.new(
  rating: 5,
  description: "I was looking for a drink to have out by the pool, on a warm summer day, this is it!! It's not too sweet, and very refreshing.",
  cocktail_id: @cocktails[8].id
)

@mourntart_review_three.save!

@chort_review = Review.new(
  rating: 4,
  description: "Great for a girl's night in drink option!! ",
  cocktail_id: @cocktails.last.id
)

@chort_review.save!

puts "Completed #{Cocktail.count} cocktails, #{Ingredient.count} ingredients, #{Dose.count} doses, and #{Review.count} reviews"