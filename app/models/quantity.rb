class Quantity < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :item
  belongs_to :list
end
