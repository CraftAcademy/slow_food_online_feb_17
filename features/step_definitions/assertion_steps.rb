Then(/^I should see "([^"]*)"$/) do |content|
  expect(page).to have_content content
end

Given(/^I should not see "([^"]*)"$/) do |content|
  expect(page).not_to have_content content
end
