class Api::V1::MenusController < ApplicationController
  def index
    menus = Restaurant.find(params[:restaurant_id])
    @menus = [menus]
  end
end
