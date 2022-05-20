require 'rails_helper'

RSpec.describe 'recipes/new', type: :system do
  before(:each) do
    ally = User.create(name: 'Ally', email: 'ally@recipe.com', password: '11111111')
  end

  it 'renders new recipe form' do
    visit new_user_session_path
    fill_in 'user_email',	with: 'ally@recipe.com'
    fill_in 'user_password',	with: '11111111'
    click_button 'Log in'

    visit new_recipe_path
    fill_in 'recipe_name',	with: 'Apple pie'
    fill_in 'recipe_preparation_time',	with: '20min'
    fill_in 'recipe_cooking_time',	with: '10min'
    fill_in 'recipe_description',	with: 'Test'
    check 'recipe_public'
    click_button 'commit'

    expect(page).to have_content 'Apple pie'
  end
end
