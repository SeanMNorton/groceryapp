class CreateRecipesFood < ActiveRecord::Migration
  def change
    create_table :recipe_foods do |t|
      t.integer :recipe_id, null: false
      t.integer :food_item_id, null: false

      t.timestamps null: false
    end
  end
end
