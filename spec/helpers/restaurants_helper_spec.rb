require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the RestaurantsHelper. For example:
#
# describe RestaurantsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe RestaurantsHelper, type: :helper do
  # pending "add some examples to (or delete) #{__FILE__}"

  
end

def add_restaurant
  visit('/restaurants/new')
  fill_in :restaurant_name, with: 'KFC'
  fill_in :restaurant_description, with: 'Finger-licking good'
  click_button 'Create Restaurant'
end


