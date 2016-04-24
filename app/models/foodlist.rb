class Foodlist < ActiveRecord::Base
  belongs_to :food, foreign_key: :food_item_id
  belongs_to :list

  validates :food_item_id, :list_id, presence: true
end
