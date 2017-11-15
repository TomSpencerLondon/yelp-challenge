require 'rails_helper'

RSpec.describe "reviews/index", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "MyString",
      :description => "MyText"
    ))
    assign(:reviews, [
      Review.create!(
        :rating => 2,
        :review => "MyText",
        :restaurant => @restaurant        
      ),
      Review.create!(
        :rating => 2,
        :review => "MyText",
        :restaurant => @restaurant        
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
