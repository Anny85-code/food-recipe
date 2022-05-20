class PublicRecipesController < ApplicationController
  layout 'application_content'

  def index
    @recipes = Recipe.includes(:recipe_foods).where(public: true).order(id: 'DESC')
  end

  def show
    @recipe = Recipe.includes(:recipe_foods).find(params[:id])
    render 'public_recipes/404' if !@recipe.public && (!user_signed_in? || @recipe.user != current_user)
  end
end
