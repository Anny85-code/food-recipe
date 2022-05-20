require 'rails_helper'

RSpec.feature 'food/index.html.erb', type: :system do
  describe 'food#index' do
    before(:each) do
      ally = User.create(name: 'Ally', email: 'ally@recipe.com', password: '11111111')

      Food.destroy_all
      @food1 = Food.create(name: 'Ekpang', measuring_unit: 6, price: 7, user: ally)
      @food2 = Food.create(name: 'Edesi', measuring_unit: 5, price: 15, user: ally)
      @food3 = Food.create(name: 'Edikang ikong', measuring_unit: 15, price: 25, user: ally)

      visit new_user_session_path
      fill_in 'user_email',	with: 'ally@recipe.com'
      fill_in 'user_password',	with: '11111111'
      click_button 'Log in'
    end

    scenario 'if logs in, should be able to create food' do
      visit foods_path
      expect(page).to have_content 'Ekpang'
      expect(page).to have_content 'Edesi'
      expect(page).to have_content 'Edikang ikong'
    end
  end
end
