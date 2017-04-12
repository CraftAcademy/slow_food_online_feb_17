json.entries do
    json.array! @menus.each do |menu|
        json.name  menu.menu.name
    end
end
