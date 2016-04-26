class Collaborator < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :collaborator, class_name: "User" ## good to go
  belongs_to :list # good to go
end
