require 'rails_helper'

RSpec.describe 'categories index', type: :feature do
  describe 'Index' do
    before(:each) do
      User.destroy_all
      Group.destroy_all
      @u1 = User.create(name: 'Anna', password: '123456', email: 'anna@gmail.com')
      visit new_user_session_path
      fill_in 'Email', with: 'anna@gmail.com'
      fill_in 'password', with: '123456'
      click_button 'Log in'
    end

    it 'should show the categories page' do
      expect(page).to have_content('CATEGORIES')
    end

    context 'when categories exist' do
      before(:each) do
        visit new_group_path
        fill_in 'Name', with: 'Rent'
        attach_file('group_icon', Rails.root.join('spec', 'support', 'restaurant.png'))
        click_button 'Add'
      end

      it 'should show the name of all my categories' do
        expect(page).to have_content('Rent')
      end


      it 'should have a button to add categories' do
        expect(page).to have_content('Add new Category')
      end

      it 'should have a button to delete categories' do
        expect(page).to have_content('Delete')
      end

      it 'should have date of creation' do
        expect(page).to have_content(Date.today.strftime('%d %b %Y'))
      end

      it 'should have the icon of the category' do
        expect(page).to have_css("img[src*='restaurant.png']")
      end
    end
  end
end
