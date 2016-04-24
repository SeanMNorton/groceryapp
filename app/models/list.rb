class List < ActiveRecord::Base
  has_many :collaborators
  has_many :users, through: :collaborators

  has_many :foodlists
  has_many :foods, through: :foodlists

  validates :name, presence: true
end
