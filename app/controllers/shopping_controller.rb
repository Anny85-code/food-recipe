class ShoppingController < ApplicationController

  before_action :authenticate_user!, only: %i[index]

  def index
    @shop = []
    @total = 0

    results = Food.joins(:recipe_foods).select(:foods, 'foods.*',
                                               'sum(recipe_foods.quantity) as rf_q').joins(:inventory_foods).select('inventory_foods.quantity as if_q').group('foods.id, inventory_foods.quantity')

    results.each do |result|
      next unless result.rf_q > result.if_q

      quantity = result.rf_q - result.if_q
      @shop << { food: result, quantity:, price: quantity * result.price }
      @total += quantity * result.price
    end
  end
end
