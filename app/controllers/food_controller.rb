class FoodController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def destroy
    @post = Food.find(params[:id])
    # user = User.find(@food.user_id)
    @food.destroy if @food.present?
    food.save
    respond_to do |format|
      format.html { redirect_to user_path(id: @food.user_id), notice: 'food was removed.' }
    end
  end
end
