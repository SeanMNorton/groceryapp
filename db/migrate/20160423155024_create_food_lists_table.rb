class CreateFoodListsTable < ActiveRecord::Migration
  def change
    create_table :foodlists do |t|
      t.integer :list_id, null: false
      t.integer :food_item_id, null: false
      t.integer :item_quantity, null: false, :default => 1

      t.timestamps null: false
    end
  end
end
