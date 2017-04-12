class Api::V1::RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    begin
      @restaurant = Restaurant.find(params[:id])
    rescue
      render json: { message: "error"}, status: 404
    end
  end
end
