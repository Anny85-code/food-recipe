class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_foods, dependent: :destroy

  def total_price
    total = 0
    recipe_foods.each do |recipe_food|
      p recipe_food.food
      total += recipe_food.quantity * recipe_food.food.price
    end
    total / 1000
  end
end
