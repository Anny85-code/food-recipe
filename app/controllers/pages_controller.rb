class PagesController < ApplicationController
  def home; end
  def error; end
  def home
    @foods = Food.where(user: current_user)
  end
end
