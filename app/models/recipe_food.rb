class RecipeFood < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :food, class_name: "Food", foreign_key: :food_item_id

  validates :recipe_id, :food_item_id, presence: true
end
