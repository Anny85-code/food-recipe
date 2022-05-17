class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.where(public: true).order(id: 'DESC')
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
