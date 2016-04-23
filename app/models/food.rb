class Food < ActiveRecord::Base
  has_many :foodlists
  has_many :lists, through: :foodlists

  validates :name, presence: true
end
