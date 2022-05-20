require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  before(:each) do
    @user = User.create(name: 'Emy', email: 'emy@dodso.fr', password: '11111111')
    @recipe = Recipe.create(name: 'cookies', preparation_time: '2', cooking_time: '1', description: 'chocolat cookies', public: true, user: @user)
    @food = Food.create(name: 'chocolate', measuring_unit: 'g', price: 3, user: @user)
    @recipe_food = RecipeFood.create(quantity: 2, recipe: @recipe, food: @food)
  end

  after(:each) do
    Recipe.destroy_all
    Food.destroy_all
    RecipeFood.destroy_all
    User.destroy_all
  end

  it 'should create a recipefood' do
    expect(@recipe_food).to be_valid
    expect(@recipe_food.quantity).to eq 2
    expect(@recipe_food.recipe).to eq @recipe
    expect(@recipe_food.food).to eq @food
  end
end
