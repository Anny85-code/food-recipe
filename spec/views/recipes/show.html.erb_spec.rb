require 'rails_helper'

RSpec.describe 'recipes/show', type: :system do
  before(:each) do
    ally = User.create(name: 'Ally', email: 'ally@recipe.com', password: '11111111')
    @recipe1 = Recipe.create!(name: 'Cook1', preparation_time: '10min', cooking_time: '20min', description: 'MyText', public: true, user: ally)
  end

  it 'I can see the Recipe details' do
    visit recipe_path(@recipe1.id)
    expect(page).to have_content 'Cook1'
    expect(page).to have_content '10min'
    expect(page).to have_content '20min'
    expect(page).to have_content 'MyText'
  end
end
