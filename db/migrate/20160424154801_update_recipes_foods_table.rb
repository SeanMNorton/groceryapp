class UpdateRecipesFoodsTable < ActiveRecord::Migration
  def change
    rename_column(:recipe_foods, :food_item_id, :food_id)
  end
end
