require 'rails_helper'

feature 'home page' do
  before do
    visit('/')
  end
  
  scenario 'welcome message' do
    expect(page).to have_content('Welcome')
  end
end
