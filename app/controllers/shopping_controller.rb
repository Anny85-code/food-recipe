class ShoppingController < ApplicationController
  layout 'application2'

  before_action :authenticate_user!, only: %i[index]

  def index
    inventory = current_user.inventories.first
    recipe = Recipe.find(params[:id])
    @shop = []
    @total = 0
    recipe.recipe_foods.each do |rf|
      infood = InventoryFood.where(inventory:, food: rf.food).first
      if infood.quantity < rf.quantity
        @shop << { food: rf.food, price: rf.quantity * rf.food.price }
        @total += rf.quantity * rf.food.price
      end
    end
  end
end
