class Collaborator < ActiveRecord::Base
  belongs_to :user
  belongs_to :list

  validates :user_id, :list_id, presence: true
end
