json.entries do
    json.array! @restaurants.menu.each do |menu|
        json.name  menu.menu.name
    end
end
