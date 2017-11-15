require 'rails_helper'

feature 'restaurant' do
  scenario 'can create a restaurant' do
    sign_up
    add_restaurant
    expect(page).to have_content('Name: KFC Description: Finger-licking good')
  end
end
