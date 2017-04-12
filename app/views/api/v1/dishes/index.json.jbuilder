json.entries do
    json.array! @dishes.each do |dish|
        json.name dish.name
        json.price dish.price
        json.category dish.category
        json.description dish.description
    end
end
