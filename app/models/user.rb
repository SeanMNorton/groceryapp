class User < ActiveRecord::Base
  # Remember to create a migration!
  has_many :collaborators ## dont' know about this one
  has_many :lists, source: :owner, foreign_key: :user_id ## don't know about this one
  has_many :recipes, source: :author ## don't know about this one
end
