require 'rails_helper'

RSpec.describe 'categories index', type: :feature do
  describe 'Index' do
    before(:each) do
      User.destroy_all
      Group.destroy_all
      @u1 = User.new(name: 'Anna', password: '123456', email: 'anna@gmail.com')
      @u1.save
      @r1 = Group.new(id: 4, name: 'Rent', icon: Rack::Test::UploadedFile.new('spec/support/restaurant.png', 'restaurant/png'),
                      total_purchases: 123)
      @r1.save
      visit new_user_session_path
      fill_in 'Email', with: 'anna@gmail.com'
      fill_in 'password', with: '123456'
      click_button 'Log in'
    end
    it 'shoud show the categories page' do
      expect(page).to have_content('CATEGORIES')
    end
    it 'should show the name of all my categories' do
      expect(page).to have_content('sign out')
    end
    it 'should show the total amount of each category' do
      expect(page).to have_content('CATEGORIES')
    end
    it 'should have a button to add categories' do
      expect(page).to have_content('Add new Category')
    end
  end
end