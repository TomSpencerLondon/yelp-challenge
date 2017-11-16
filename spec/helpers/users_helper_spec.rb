require 'rails_helper'

def sign_up
  visit('/users/sign_up')
  fill_in :user_email, with: 'example@example.com'
  fill_in :user_password, with: 'hello123'
  fill_in :user_password_confirmation, with: 'hello123'
  click_button 'Sign up'
end