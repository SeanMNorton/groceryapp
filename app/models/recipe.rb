class Recipe < ActiveRecord::Base
  # Remember to create a migration!
  has_many :ingredients # good
  belongs_to :author, class_name: "User" # good
end
