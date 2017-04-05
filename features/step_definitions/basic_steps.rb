Given(/^I am on the restaurant registration page$/) do
  visit new_restaurant_path
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, content|
  fill_in field, with: content
end

When(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

When(/^I click button "([^"]*)"$/) do |button|
  click_button button
end

Then(/^show me the page$/) do
  save_and_open_page
end
