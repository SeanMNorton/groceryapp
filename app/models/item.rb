class Item < ActiveRecord::Base
  # Remember to create a migration!
  has_many :quantities ## I think these two are correct
  has_many :lists, through: :quantities
end
