class Api::V1::MenusController < ApplicationController
  def index
    @restaurants = Restaurant.find(params[:restaurant_id])
  end
end
