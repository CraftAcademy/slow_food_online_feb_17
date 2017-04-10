class Api::V1::ListRestaurantsController < ApplicationController
  def index
    restaurants = Restaurant.all
    render json: {entries: restaurants}
  end
end
