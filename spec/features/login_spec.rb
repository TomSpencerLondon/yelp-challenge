require 'rails_helper'

feature 'login' do
  context 'buttons' do
    before do
      visit '/'
    end
    scenario 'sign in/up buttons' do
      visit '/'
      expect(page).to have_link('Sign in')
    end
    scenario 'sign out button' do
      sign_up
      expect(page).to have_link('Sign out')
    end
  end
end