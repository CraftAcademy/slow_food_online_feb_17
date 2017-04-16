json.entries do
    json.array! @restaurants.each do |restaurant|
        json.name restaurant.name
        json.description restaurant.description
        json.id restaurant.id
    end
end
