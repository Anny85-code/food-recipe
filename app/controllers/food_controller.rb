class FoodController < ApplicationController
  before_action :authenticate_user!, only: %i[new create destroy]
  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id

    respond_to do |format|
      if @food.save
        format.html { redirect_to food_index_path(id: @food.user_id) }
        flash[:notice] = 'You have successfully created food.'
      else
        format.html { render :new, alert: 'An error has occurred while creating food' }
      end
    end
  end

  def destroy
    @food = Food.find(params[:id])
    user = User.find(@food.user_id)
    @food.destroy if @food.present?
    user.save
    respond_to do |format|
      format.html { redirect_to user_path(id: @food.user_id), notice: 'food was removed.' }
    end
  end

  def food_params
    params.require(:food).permit(:name)
  end
end
