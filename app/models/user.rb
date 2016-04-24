class User < ActiveRecord::Base
  has_many :collaborators
  has_many :lists, through: :collaborators
  has_many :recipes

  validates :username, :password_hash, presence: true
  validates :username, uniqueness: true
end
