require 'rails_helper'

feature 'restuarant' do
  scenario 'can create a restaurant' do
    visit('/restaurants/new')
    expect(page).to have_button('Create Restaurant')
  end
end
