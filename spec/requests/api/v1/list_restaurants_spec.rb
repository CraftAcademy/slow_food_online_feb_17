require 'rails_helper'

RSpec.describe Api::V1::ListRestaurantsController, type: :request do
  describe 'GET /v1/list_restaurants' do
    it 'should return all the restaurants' do
      create(:restaurant)
      get '/api/v1/list_restaurants'
      expect(response.status).to eq 200
      expect(response_json['entries'].first['name']).to eq "Nisses"
    end
  end
end
