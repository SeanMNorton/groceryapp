class UpdateUserListsTable < ActiveRecord::Migration
  def change
    rename_table :userlists, :collaborators
  end
end
