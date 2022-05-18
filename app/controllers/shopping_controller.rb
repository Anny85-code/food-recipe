class ShoppingController < ApplicationController
    layout 'application2'

  def index

    @inventories = current_user.inventories
    @foods = []
    @total = 0
    @inventories.each do |inventory|
      inventory_foods =  inventory.inventory_foods
          inventory_foods.each do |invf|
            if invf.quantity.zero?
              @foods << invf.food 
              #@total += invf.food.price * invf.food.
            end
          end
    end

      @recipes = Recipe.where(user: current_user)
        @recipes.each do |recipe|
          recipe_foods =  recipe.recipe_foods
             recipe_foods.each do |rf|
                if @foods.include? rf.food
                  @total += rf.quantity * rf.food.price
                end
             end
        end
  end
end
