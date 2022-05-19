class PagesController < ApplicationController
  def home
    @foods = Food.where(user: current_user)
  end
end
