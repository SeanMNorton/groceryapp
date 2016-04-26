class Recipe < ActiveRecord::Base
  # Remember to create a migration!
  has_many :ingredients
  has_many :items, through: :ingredients, source: :item # good
  belongs_to :author, class_name: "User", foreign_key: :user_id# good
end
