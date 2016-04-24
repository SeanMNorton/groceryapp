class Foodlist < ActiveRecord::Base
  belongs_to :food
  belongs_to :list

  validates :food_id, :list_id, presence: true
end
