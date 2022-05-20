require 'rails_helper'

RSpec.describe 'public_recipes/index.html.erb', type: :system do
  before(:each) do
    ally = User.create(name: 'Ally', email: 'ally@recipe.com', password: '11111111')
    abu = User.create(name: 'Abu', email: 'abu@recipe.com', password: '11111111')

    5.times do |_i|
      Recipe.create(name: 'Apple Pie', preparation_time: '20 min', cooking_time: '45 min', description: 'I remember ', public: true, user: ally)
      Recipe.create(name: 'Apple Pie Hidden', preparation_time: '20 min', cooking_time: '45 min', description: 'I remember ', public: false, user: ally)
      Recipe.create(name: 'Recipe', preparation_time: '20 min', cooking_time: '45 min', description: 'I remember ', public: true, user: abu)
    end
  end

  after(:each) do
    User.destroy_all
  end

  it 'I can see the title.' do
    visit public_recipes_path
    expect(page).to have_content 'Public Recipes'
  end

  it 'I can see one recipe.' do
    visit public_recipes_path
    expect(page).to have_content 'Apple Pie'
    expect(page).to have_content 'Abu'
    expect(page).to have_content 'Ally'
  end

  it 'I can found 10 recipes.' do
    visit public_recipes_path
    recipes = page.find_all('.recepie_thumb')
    expect(recipes.size).to eq 10
  end

  it 'I can access this pages if user is not connected' do
    visit public_recipes_path
    expect(page).to have_content 'Sign In'
    recipes = page.find_all('.recepie_thumb')
    expect(recipes.size).to eq 10
  end

  it 'I can access this pages if user is connected' do
    visit new_user_session_path
    fill_in 'user_email',	with: 'ally@recipe.com'
    fill_in 'user_password',	with: '11111111'
    click_button 'Log in'

    visit public_recipes_path
    expect(page).to have_content 'logout'

    recipes = page.find_all('.recepie_thumb')
    expect(recipes.size).to eq 10
  end
end
