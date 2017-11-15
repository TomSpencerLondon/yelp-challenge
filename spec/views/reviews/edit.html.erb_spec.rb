require 'rails_helper'

RSpec.describe "reviews/edit", type: :view do
  before(:each) do
    @restaurant = assign(:restaurant, Restaurant.create!(
      :name => "MyString",
      :description => "MyText"
    ))
    @review = assign(:review, Review.create!(
      :rating => 1,
      :review => "MyText",
      :restaurant => @restaurant
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input[name=?]", "review[rating]"

      assert_select "textarea[name=?]", "review[review]"
    end
  end
end
