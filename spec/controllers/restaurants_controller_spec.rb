require 'rails_helper'



RSpec.describe RestaurantsController, type: :controller do


  let(:valid_attributes) {
    { name: 'test name', description: 'test description for restaurant' }
  }

  let(:invalid_attributes) {
    { name: '', description: '' }    
}

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RestaurantsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "returns a success response" do
      restaurant = Restaurant.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      restaurant = Restaurant.create! valid_attributes
      get :show, params: {id: restaurant.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      restaurant = Restaurant.create! valid_attributes
      get :edit, params: {id: restaurant.to_param}, session: valid_session
      expect(response).to be_success
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Restaurant" do
        expect {
          post :create, params: {restaurant: valid_attributes}, session: valid_session
        }.to change(Restaurant, :count).by(1)
      end

      it "redirects to the created restaurant" do
        post :create, params: {restaurant: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Restaurant.last)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: {restaurant: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        { name: 'test name two', description: 'test description two' }
      }

      it "updates the requested restaurant" do
        restaurant = Restaurant.create! valid_attributes
        put :update, params: {id: restaurant.to_param, restaurant: new_attributes}, session: valid_session
        restaurant.reload
        expect(restaurant.name).to eq "test name two"
        expect(restaurant.description).to eq "test description two"
      end

      it "redirects to the restaurant" do
        restaurant = Restaurant.create! valid_attributes
        put :update, params: {id: restaurant.to_param, restaurant: valid_attributes}, session: valid_session
        expect(response).to redirect_to(restaurant)
      end
    end

    context "with invalid params" do
      it "returns a success response (i.e. to display the 'edit' template)" do
        restaurant = Restaurant.create! valid_attributes
        put :update, params: {id: restaurant.to_param, restaurant: invalid_attributes}, session: valid_session
        expect(response).to be_success
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested restaurant" do
      restaurant = Restaurant.create! valid_attributes
      expect {
        delete :destroy, params: {id: restaurant.to_param}, session: valid_session
      }.to change(Restaurant, :count).by(-1)
    end

    it "redirects to the restaurants list" do
      restaurant = Restaurant.create! valid_attributes
      delete :destroy, params: {id: restaurant.to_param}, session: valid_session
      expect(response).to redirect_to(restaurants_url)
    end
  end

end