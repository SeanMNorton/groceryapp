class UpdateFoodlistsTable < ActiveRecord::Migration
  def change
    rename_column(:foodlists, :food_item_id, :food_id)
  end
end
