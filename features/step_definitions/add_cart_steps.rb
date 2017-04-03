When(/^I click "([^"]*)" on "([^"]*)"$/) do |button, dish|
  dish = Dish.find_by(name: dish)
  within ".dish-#{dish.id}" do
    click_link_or_button button
  end
end

Given(/^I am on the restaurant menu and have one item in my cart$/) do
  menu = Menu.find_by(name: 'Nisses Takeaway')
  visit restaurant_menu_path(menu.restaurant, menu)
  dish = Dish.find_by(name: 'Kebabrulle')
  within ".dish-#{dish.id}" do
    click_link_or_button "Buy"
  end
end
