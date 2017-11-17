require 'rails_helper'

feature 'login' do
  context 'buttons' do

    before do
      visit '/'
    end

    scenario 'sign in/up buttons' do
      expect(page).to have_link('Sign in')
      expect(page).to have_link('Sign up')
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
      
      scenario 'show restaurant' do
        click_link 'KFC'
        expect(current_path).to eq('/restaurants/1')
      end

      scenario 'destroy restaurant' do
        expect(page).to_not have_link('Destroy')
      end

      scenario 'edit restaurant' do
        expect(page).to_not have_link('Edit')
      end

    end

  end

end
