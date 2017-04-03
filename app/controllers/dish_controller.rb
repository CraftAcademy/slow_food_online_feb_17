class DishController < ApplicationController

  def show
    @dish = Menu.find_by(restaurant_id: params[:id])
  end
end
