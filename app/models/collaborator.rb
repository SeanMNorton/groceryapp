class Collaborator < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :collaborator, class_name: "User", foreign_key: :user_id ## good to go
  belongs_to :list # good to go
end
