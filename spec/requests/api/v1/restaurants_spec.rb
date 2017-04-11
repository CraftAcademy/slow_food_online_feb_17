require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do

  describe 'GET /v1/restaurants' do
    it 'should return all the restaurants' do
      restaurant = create(:restaurant)
      get '/api/v1/restaurants'

      expected_response = {
        'entries' => [{
          'id' => restaurant.id, 'name' => restaurant.name, 'street' => restaurant.street,
          'zip_code' => restaurant.zip_code, 'city' => restaurant.city, 'food_style' => restaurant.food_style,
          'created_at' => restaurant.created_at.strftime("%FT%T.%LZ"), 'updated_at' => restaurant.updated_at.strftime("%FT%T.%LZ"),
          'description' => restaurant.description
        }]     }

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
