class AddAllTablesBack < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, unique: true, null: false
      t.string :password_hash, null: false

      t.timestamps null: false
    end
  end

  def change
    create_table :lists do |t|
      t.string :name, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end

  def change
    create_table :items do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end

  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.string :description
      t.string :prep_instructions
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end

  def change
    create_table :collaborators do |t|
      t.integer :user_id, null: false
      t.integer :list_id, null: false

      t.timestamps null: false
    end
  end

  def change
    create_table :ingredients do |t|
      t.integer :item_id, null: false
      t.integer :recipe_id, null: false

      t.timestamps null: false
    end
  end

  def change
    create_table :quantities do |t|
      t.integer :quantity, null: false, :default => 1
      t.integer :list_id, null: false
      t.integer :item_id, null: false

      t.timestamps null: false
    end
  end
end
