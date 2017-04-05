class DishController < ApplicationController

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @menu = Menu.find(params[:menu_id])
    @dish = Dish.new(menu: @menu)
  end

  def create
    @menu = Menu.find(params[:menu_id])
    @dish = Dish.new(dish_params)
    @dish.save
    flash[:notice] = "A new dish has been added to #{@menu.name} menu"
    redirect_to restaurant_menu_path(@menu.restaurant, @menu)
  end

  private

  def dish_params
    params.require(:dish).permit(:name,
                                 :price,
                                 :description,
                                 :menu_id)
  end
end
