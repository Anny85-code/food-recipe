require 'rails_helper'

RSpec.describe 'shopping/index.html.erb', type: :system do
  before(:each) do
    ally = User.create(name: 'Ally', email: 'ally@recipe.com', password: '11111111')

    5.times do |_i|
      Recipe.create(name: 'Apple Pie', preparation_time: '20 min', cooking_time: '45 min', description: 'I remember ', public: true, user: ally)
    end
  end

  after(:each) do
    User.destroy_all
  end

  it 'I can see the title.' do
    visit new_user_session_path
    fill_in 'user_email',	with: 'ally@recipe.com'
    fill_in 'user_password',	with: '11111111'
    click_button 'Log in'

    visit shop_path
    expect(page).to have_content 'Shopping List'
    expect(page).to have_content 'total'
  end
end
