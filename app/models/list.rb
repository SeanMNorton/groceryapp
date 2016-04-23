class List < ActiveRecord::Base
  has_many :userlists
  has_many :users, through: :userlists

  has_many :foodlists
  has_many :foods, through: :foodlists

  validates :name, presence: true
end
