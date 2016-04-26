require 'faker'


User.destroy_all
List.destroy_all
Item.destroy_all

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

end
