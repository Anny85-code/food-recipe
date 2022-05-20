class FoodController < ApplicationController
  before_action :authenticate_user!, only: %i[index new create destroy]
  load_and_authorize_resource

  def index
    @foods = Food.where(user: current_user)
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

    @food.destroy if @food.present?
    respond_to do |format|
      format.html { redirect_to foods_path, notice: 'food was removed.' }
    end
  end

  def food_params
    params.require(:food).permit(:name, :measuring_unit, :price)
  end
end
