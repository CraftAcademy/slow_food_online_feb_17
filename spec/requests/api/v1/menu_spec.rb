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


# In your controllers
#
# GET `new` ==> to generate a new instance of an resources [Opens a view that has a form we can use to create that resource]
# POST `create` ==> Used to create the resource
# GET `index` ==> To return all instances of the resource
# GET `show` => To return a single instance of the resource (Will usually take as a parameter the id of the instance we're looking for)
# POST/PATH `update` ==> Updating an instance of the resource
# DELETE `destroy` ==> Deletes an instance of the resource
