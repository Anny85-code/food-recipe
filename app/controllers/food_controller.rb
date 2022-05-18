class FoodController < ApplicationController
  def index
    @food = Food.all
  end

  def show
    @food = Food.includes(:user, :recipes).find(params[:id])
  end

  def destroy
    @post = Food.find(params[:id])
    user = User.find(@food.user_id)
    @food.destroy if @food.present?
    food.save
    respond_to do |format|
      format.html { redirect_to user_path(id: @food.user_id), notice: 'food was removed.' }
    end
  end

end
