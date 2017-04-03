Given(/^I should see drop down menu "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I select "([^"]*)" from "([^"]*)"$/) do |option, category|
  select option, from: category
end

Given(/^the following restaurants exists$/) do |table|
  table.hashes.each do |hash|
    create(:restaurant, name: hash[:name], food_style: hash[:food_style] )
  end
end
