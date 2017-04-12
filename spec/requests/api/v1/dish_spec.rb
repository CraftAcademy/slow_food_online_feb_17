require 'rails_helper'

RSpec.describe Api::V1::DishesController, type: :request do

  describe 'GET /v1/dish' do
    it 'should return all the dishes name,description,category and price' do
      restaurant = create(:restaurant)
      menu = create(:menu ,restaurant: restaurant)
      create(:dish ,menu: menu)
      get "/api/v1/restaurants/#{restaurant.id}/menus/#{menu.id}/dishes"

      expected_response = {
        'entries' => [{
          'name' => restaurant.menu.dishes[0].name, 'price' => restaurant.menu.dishes[0].price.to_s, 'category' => restaurant.menu.dishes[0].category, 'description' => restaurant.menu.dishes[0].description
          }]
      }
      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
