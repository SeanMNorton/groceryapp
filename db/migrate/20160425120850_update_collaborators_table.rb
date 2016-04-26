class UpdateCollaboratorsTable < ActiveRecord::Migration
  def change
    rename_table :collaborators, :listusers
  end

  def change
    rename_table :foodlists, :listeditems
  end
end
