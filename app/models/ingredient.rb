class Ingredient < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :recipe ## good to go
  belongs_to :item ## good to go
end
