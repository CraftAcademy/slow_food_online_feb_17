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

  describe 'GET /v1/restaurants/:id' do
    let(:restaurant) { create(:restaurant, name: 'PizzaHut') }
    let(:menu) { create(:menu, restaurant: restaurant) }
    let!(:dish) { create(:dish, menu: menu) }

    it 'should return the restaurant with menu and dishes' do
      get "/api/v1/restaurants/#{restaurant.id}"
      expected_response =
          {
              name: 'PizzaHut',
              description: 'Delicious',
              id: restaurant.id,
              food_style: 'Burgers',
              menu: {
                  name: 'Lunch',
                  dishes: [{
                               name: 'Pizza',
                               price: '9.99',
                               category: 'Main course',
                               description: 'About'
                           }]
              }
          }
      expect(response_json).to eq JSON.parse(expected_response.to_json)
      expect(response.status).to eq 200
    end

    it 'should render error message on failure' do
      get '/api/v1/restaurants/9999999'
      expected_response = {message: 'error'}
      expect(response_json).to eq JSON.parse(expected_response.to_json)
      expect(response.status).to eq 404
    end
  end
end
