require 'rails_helper'

RSpec.describe "reviews/show", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "MyString",
      :description => "MyText"
    ))
    @review = assign(:review, Review.create!(
      :rating => 2,
      :review => "MyText",
      :restaurant => @restaurant      
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
