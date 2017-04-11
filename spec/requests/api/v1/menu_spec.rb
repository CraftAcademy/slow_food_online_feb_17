require 'rails_helper'

RSpec.describe Api::V1::MenusController, type: :request do

  describe 'GET /v1/restaurants' do
    it 'should return menu name' do
      menu = create(:restaurant)
      get '/api/v1/restaurants/:restaurant_id/menus/:id'

      expected_response = {
        'entries' => [{
          'menu' => restaurant.menu.name
          }]
      }

      expect(response_json).to eq expected_response
      expect(response.status).to eq 200
    end
  end
end
