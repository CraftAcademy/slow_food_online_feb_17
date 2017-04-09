Given(/^the following rating exist$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    create(:rating, rating: hash[:rating], counter: hash[:counter] , restaurant: restaurant)
  end
end

Given(/^I select "([^"]*)" from and "([^"]*)"$/) do |option, category|
  within("//form[@class='NisseKebbab']") do
    select option, from: category
  end
end

Then(/^I click on "([^"]*)"$/) do |button|
  within("//form[@class='NisseKebbab']") do
    click_button button
  end
end

Given(/^I select "([^"]*)" from and"([^"]*)"$/) do |option, category|
  within("//form[@class='AmberBurger']") do
    select option, from: category
  end
end

Then(/^I click on"([^"]*)"$/) do |button|
  within("//form[@class='AmberBurger']") do
    click_button button
  end
end
