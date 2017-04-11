require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do
  let(:restaurant) { create(:restaurant) }

  describe 'GET /v1/restaurants' do
    it 'should return all the restaurants' do
      create(:restaurant)
      get '/api/v1/restaurants'
      expect(response.status).to eq 200
      expected_response = {
        'entries' => {
          'id' => restaurant.id, 'name' => restaurant.name, 'street' => restaurant.street,
          'zip_code' => restaurant.zip_code, 'city' => restaurant.city, 'food_style' => restaurant.food_style,
          'description' => restaurant.description
        }      }

      expect(response_json).to eq expected_response
    end
  end
end
