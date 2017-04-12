require 'rails_helper'

RSpec.describe Api::V1::RestaurantsController, type: :request do

  describe 'GET /v1/restaurants' do
    it 'should return all the restaurant´s name, id and description' do
      restaurant = create(:restaurant)
      get '/api/v1/restaurants'

      expected_response = {
        'entries' => [{
          'name' => restaurant.name, 'description' => restaurant.description, 'id' => restaurant.id
          }]
      }

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
