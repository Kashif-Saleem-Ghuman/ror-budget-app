require 'rails_helper'

RSpec.describe 'purchases/index', type: :feature do
  before(:each) do
    @user = User.create(name: 'Kolly', email: 'kolly@gmail.com', password: 'password', confirmed_at: Time.now)
    icon_file = fixture_file_upload(Rails.root.join('spec', 'support', 'restaurant.png'), 'image/png')
    @group = Group.create!(name: 'Groceries', icon: icon_file, author: @user)
    visit new_user_session_path
    fill_in 'Email', with: 'kolly@gmail.com'
    fill_in 'password', with: 'password'
    click_button 'Log in'
    visit group_purchases_path(@group)
  end

  it 'renders new purchase page' do
    expect(page).to have_content 'PURCHASES'
  end

  it 'has a link to add new purchase' do
    expect(page).to have_content 'Add new Purchase'
  end

  it 'clicks on back' do
    find("a[href='/']").click
    sleep 1
    expect(current_path).to eql root_path
  end
end
