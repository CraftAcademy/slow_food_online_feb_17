class Api::V1::DishesController < ApplicationController
  def index
    @dishes = Menu.find(params[:menu_id]).dishes
  end
end
