Given(/^the following rating exist$/) do |table|
  table.hashes.each do |hash|
    restaurant = Restaurant.find_by(name: hash[:restaurant])
    create(:rating, rating: hash[:rating], counter: hash[:counter] , restaurant: restaurant)
  end
end

Given(/^I select "([^"]*)" from restaurant rating "([^"]*)"$/) do |option, name|
  rest = Restaurant.find_by(name: name)
  within(".rest-#{rest.id}") do
    select option
  end
end

Then(/^I click on "([^"]*)" for "([^"]*)"$/) do |button, name|
  rest = Restaurant.find_by(name: name)
  within(".rest-#{rest.id}") do
    click_button button
  end
end

Then(/^I should see "([^"]*)"s "([^"]*)"$/) do |name, rating|
  rest = Restaurant.find_by(name: name)
  within(".rest-#{rest.id}") do
    expect(page).to have_content rating
  end
end
