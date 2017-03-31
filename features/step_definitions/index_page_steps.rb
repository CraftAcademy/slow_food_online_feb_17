Given(/^I am on the index page$/) do
  visit root_path
end

And(/^(?:I expect a Google map to load|the map is loaded)$/) do
  sleep(0.1) until page.evaluate_script('$.active') == 0
  expect(page).to have_css '#map .gm-style'
end

