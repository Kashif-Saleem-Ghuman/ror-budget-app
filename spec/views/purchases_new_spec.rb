require 'rails_helper'

RSpec.describe 'purchases/new', type: :feature do
  before(:each) do
    @user = User.create(name: 'Kolly', email: 'kolly@gmail.com', password: 'password', confirmed_at: Time.now)
    icon_file = fixture_file_upload(Rails.root.join('spec', 'support', 'restaurant.png'), 'image/png')
    @group = Group.create!(name: 'Groceries', icon: icon_file, author: @user)
    visit new_user_session_path
    fill_in 'Email', with: 'kolly@gmail.com'
    fill_in 'password', with: 'password'
    click_button 'Log in'
    visit new_group_purchase_path(@group)
  end

  it 'renders new purchase page' do
    expect(page).to have_content 'ADD PURCHASE'
  end

  it 'clicks on back' do
    find("a[href='/groups/#{CGI.escapeHTML(@group.id.to_s)}/purchases']").click
    sleep 1
    expect(current_path).to eql group_purchases_path(@group)
  end

  it 'has a form to add new purchase with a field name' do
    expect(page).to have_content 'Name'
  end

  it 'has a form to add new purchase with a field amount' do
    expect(page).to have_content 'Amount'
  end

  it 'has a form to add new purchase with a field groups' do
    expect(page).to have_content 'Groups'
  end
end
