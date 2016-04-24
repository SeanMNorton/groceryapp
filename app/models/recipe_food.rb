class RecipeFood < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :food

  validates :recipe_id, :food_id, presence: true
end
