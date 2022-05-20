class PagesController < ApplicationController
  def error; end

  def home
    @foods = Recipe.includes(:recipe_foods).where(public: true).order(id: 'DESC')
  end
end
