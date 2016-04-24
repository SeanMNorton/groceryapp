class CreateUserLists < ActiveRecord::Migration
  def change
    create_table :userlists do |t|
      t.integer :user_id, null: false
      t.integer :list_id, null: false

      t.timestamps null: false
    end
  end
end
