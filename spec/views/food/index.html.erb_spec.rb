require 'rails_helper'

RSpec.feature 'food/index.html.erb', type: :system do
  describe 'food#index' do
    before(:each) do
      Food.destroy_all
      @food1 = Food.create(name: 'Ekpang', measuring_unit: 6, price: 7)
      @food2 = Food.create(name: 'Edesi', measuring_unit: 5, price: 15)
      @food3 = Food.create(name: 'Edikang ikong', measuring_unit: 15, price: 25)
      
      visit user_session_path

      within 'form' do
        fill_in 'Email', with: @user1.email
        fill_in 'Password', with: @user1.password

        click_button 'Log in'
      end
    end

    scenario 'if logs in, should be able to create food' do
      expect(page).to have_content 'Ekang'
      expect(page).to have_content 'Edesi'
      expect(page).to have_content 'Edikang ikong'
    end
  end
end
