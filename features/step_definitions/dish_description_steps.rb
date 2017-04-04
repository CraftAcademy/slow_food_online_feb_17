Given(/^the following dishes exists$/) do |table|
  table.hashes.each do |hash|
    menu = Menu.find_by(name: hash[:menu])
    create(:dish, name: hash[:name], price: hash[:price], description: hash[:description], menu: menu)
  end
end
