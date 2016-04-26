class DropTables < ActiveRecord::Migration
  def change
    drop_table(:users)
    drop_table(:lists)
    drop_table(:recipes)
    drop_table(:listeditems)
    drop_table(:collaborators)
    drop_table(:recipe_foods)
    drop_table(:foods)
  end
end
