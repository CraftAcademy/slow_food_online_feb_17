json.name @restaurant.name
json.description @restaurant.description
json.id @restaurant.id
json.food_style @restaurant.food_style
json.menu do
  json.name @restaurant.menu.name
  json.dishes do
    json.array! @restaurant.menu.dishes.each do |dish|
      json.name dish.name
      json.price dish.price.to_s
      json.category dish.category
      json.description dish.description
    end
  end
end



