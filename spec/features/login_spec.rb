require 'rails_helper'

feature 'login' do
  context 'buttons' do

    before do
      visit '/'
    end

    scenario 'sign in/up buttons' do
      expect(page).to have_link('Sign in')
    end

    scenario 'sign out button' do
      sign_up
      expect(page).to have_link('Sign out')
    end
  end


  context 'not logged in' do

    scenario 'add restaurant' do
      visit('/restaurants/new')
      expect(current_path).to eq('/users/sign_in')
    end

    context 'restaurant created prior to tests' do

      before do
        sign_up
        add_restaurant
        click_link 'Sign out'
        visit('/restaurants')        
      end

      scenario 'destroy restaurant' do
        click_link 'Destroy'
        expect(current_path).to eq('/users/sign_in')
      end

      scenario 'edit restaurant' do
        click_link 'Edit'
        expect(current_path).to eq('/users/sign_in')
      end

      scenario 'show restaurant' do
        click_link 'Show'
        expect(current_path).to eq('/restaurants/1')
      end

    end

  end

end