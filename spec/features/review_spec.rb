require 'rails_helper'

feature 'reviews' do

  before do
    sign_up
    add_restaurant 
    visit '/restaurants'
  end

  scenario 'can leave a review on a restaurant page' do
    click_link 'KFC'
    expect(page).to have_link('Add review')
  end

  scenario 'can view reviews of a particular restaurant' do
    expect(page).to have_link('Reviews')
  end
end
