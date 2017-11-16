require 'rails_helper'

feature 'restaurant' do
  scenario 'can create a restaurant' do
    visit('/restaurants/new')
    fill_in :restaurant_name, with: 'KFC'
    fill_in :restaurant_description, with: 'Finger-licking good'
    click_button 'Create Restaurant'
    expect(page).to have_content(' Name: KFC Description: Finger-licking good')
  end
end
