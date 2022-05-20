class Food < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy
  has_many :inventory_foods, dependent: :destroy

  validates :name, presence: true, length: { maximum: 250 }
  validates :measuring_unit, presence: true, comparison: { greater_than_or_equal_to: 0 }
  validates :price, presence: true, comparison: { greater_than_or_equal_to: 0 }
end
