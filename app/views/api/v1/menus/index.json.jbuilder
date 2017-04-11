json.entries do
    json.array! @restaurants.each do |menu|
        json.name  menu.menu.name
    end
end
