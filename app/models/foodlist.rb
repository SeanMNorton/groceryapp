class Foodlist < ActiveRecord::Base
  belongs_to :food, class_name: "Food", foreign_key: :food_item_id
  belongs_to :list

  validates :food_item_id, :list_id, presence: true
end
