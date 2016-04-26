class List < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :owner, foreign_key: :user_id # good to go
  has_many :collaborators
  has_many :quantities
  has_many :items, through: :quantities
end
