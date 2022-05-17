require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before(:each) do
    @user = User.create(name: 'Emy', email: 'emy@dodso.fr', password: '11111111')
    expect(@user).to be_valid
    @recipe = Recipe.create(name: 'cookies', preparation_time: '2', cooking_time: '1', description: 'chocolat cookies', public: true, user: @user)
  end

  after(:each) do
    User.destroy_all
    Recipe.destroy_all
  end

  it 'should create a recipe' do
    expect(@recipe).to be_valid
    expect(@recipe.name).to eq 'cookies'
    # expect(@recipe.preparation_time).to eq "02:00:00"
    # expect(@recipe.cooking_time).to eq "01:00:00"
    expect(@recipe.description).to eq 'chocolat cookies'
    expect(@recipe.public).to eq true
    expect(@recipe.user).to eq @user
  end
end
