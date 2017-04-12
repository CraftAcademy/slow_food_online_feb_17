require 'rails_helper'

RSpec.describe Api::V1::MenusController, type: :request do

  describe 'GET /v1/menus' do
    it 'should return menu name' do
      restaurant = create(:restaurant)
      create(:menu , restaurant: restaurant)
      get "/api/v1/restaurants/#{restaurant.id}/menus"

      expected_response = {
        'entries' => [{
          'name' => restaurant.menu.name
          }]
      }

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
