class User < ActiveRecord::Base
  has_many :userlists
  has_many :lists, through: :userlists
  has_many :recipes

  validates :username, :password_hash, presence: true
  validates :username, uniqueness: true
end
