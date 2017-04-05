Given(/^I am on the index page$/) do
  visit root_path
end

Then(/^I expect google maps to load$/) do
  sleep(0.1) until page.evaluate_script('$.active').zero?
  expect(page).to have_css '#map .gm-style'
end
