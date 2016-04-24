require 'faker'


User.destroy_all
List.destroy_all
Food.destroy_all

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

all_foods = [
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
]

user1 = User.create!( :username => Faker::Superhero.name,
                      :password_hash => 'password')

user2 = User.create!( :username => Faker::Superhero.name,
                      :password_hash => 'password')

2.times.map do
  selected_list = all_lists.shuffle
  selected_foods = all_foods.shuffle


  list = user1.lists.create!(:name => selected_list.pop)
  rand(3..7).times.map do
    food = list.foods.find_or_create_by(:name => selected_foods.pop)
  end
end
