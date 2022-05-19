class PublicRecipesController < ApplicationController
  layout 'application2'

  def index
    @recipes = Recipe.includes(:recipe_foods).where(public: true).order(id: 'DESC')
  end

  def show
    @recipe = Recipe.find(params[:id])
    render 'public_recipes/404' if !@recipe.public && (!user_signed_in? || @recipe.user != current_user)
  end
end
