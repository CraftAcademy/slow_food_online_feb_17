Given(/^the following restaurants exist$/) do |table|
  table.hashes.each do |hash|
    create(:restaurant, name: hash[:name])
  end
end

Given(/^the following menus exist$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    create(:menu, name: hash[:name], restaurant: restaurant)
  end
end

Given(/^I am on the restaurant menu page for "([^"]*)"$/) do |name|
  menu = Menu.find_by(name: name)
  visit restaurant_menu_path(menu.restaurant, menu)
end

Given(/^the following restaurant exist$/) do |table|
  table.hashes.each do |hash|
    create(:restaurant, name: hash[:name], description: hash[:description], street: hash[:street])
  end
end

Then(/^I should see "([^"]*)" start rating should be "([^"]*)"$/) do |name, rating|
  restaurant = Restaurant.find_by(name: name)
  rate = Rating.find_by(restaurant_id: restaurant)
  expect(rate.rating).to eq rating.to_i
end
