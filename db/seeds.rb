require 'faker'


User.destroy_all
List.destroy_all
Item.destroy_all
Recipe.destroy_all

all_lists = [
  "Jewel Osco - Sunday",
  "Family Picnic",
  "Brunch",
  "Sam's Club List",
  "Party Time!",
  "Monthly Shopping",
  "IKEA",
  "Road Trip"
]

all_items = [
  "Popcorn",
  "Spaghetti",
  "Noodles",
  "Chips",
  "Beer",
  "Whiskey",
  "Pasta Sauce",
  "Chicken",
  "Ground Beef",
  "Chicken Noodle Soup",
  "Green Peppers",
  "Olives",
  "Toilet Paper",
  "Cat Litter",
  "Salt",
  "Milk",
  "Eggs"
].map { |name| Item.create!(name: name) }


all_recipes = [
  "Ma's Homemade Chili",
  'BMT',
  "Breakfast Burrito",
  "Moscow Mules",
  "Pina Colada",
  "Oven Baked Pizza",
  "Tacos!",
  "Recipe for Disaster"
]

users = [User.create!( :username => 'Jon',
                      :password_hash => 'password'),
         User.create!( :username => 'Sean',
                      :password_hash => 'password')]

users.each do |user|
  all_lists.sample(2).map do |list_name|
    list = user.lists.create!(:name => list_name)

    list.items = all_items.sample(rand(3..7))
    list.save
  end

  all_recipes.sample(2).map do |recipe_name|
    recipe = user.recipes.create!(:name => recipe_name)

    recipe.items = all_items.sample(rand(3..7))
    recipe.save
  end

end
