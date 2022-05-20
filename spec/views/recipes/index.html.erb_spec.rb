require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  before(:each) do
    ally = User.create(name: 'Ally', email: 'ally@recipe.com', password: '11111111')
    recipe_1 = Recipe.create!(name: 'Cook1', preparation_time: '10min', cooking_time: '20min', description: 'MyText', public: false, user: ally)
    recipe_2 = Recipe.create!(name: 'Cook1', preparation_time: '10min', cooking_time: '20min', description: 'MyText', public: false, user: ally)
    assign(:recipes, [recipe_1, recipe_2])
  end

  it 'renders a list of recipes' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Preparation Time'.to_s, count: 2
    assert_select 'tr>td', text: 'Cooking Time'.to_s, count: 2
    assert_select 'tr>td', text: 'MyText'.to_s, count: 2
    assert_select 'tr>td', text: false.to_s, count: 2
  end
end
