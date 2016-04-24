class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :description
      t.string :prep_instructions
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
