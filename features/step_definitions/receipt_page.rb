Then(/^my order should be marked as true$/) do
 expect(ShoppingCart.first.paid).to eq true
end

Given(/^there is "([^"]*)" cookie set to "([^"]*)"$/) do |key, value|
  cart = ShoppingCart.find_by(id: value)
  cart_id = cart.id
  case Capybara.current_session.driver
  when Capybara::Poltergeist::Driver
    page.driver.set_cookie(key, cart_id)
  when Capybara::RackTest::Driver
    headers = {}
    Rack::Utils.set_cookie_header!(headers, key, cart_id)
    cookie_string = headers['Set-Cookie']
    Capybara.current_session.driver.browser.set_cookie(cookie_string)
  else
    raise "no cookie-setter implemented for driver #{Capybara.current_session.driver.class.name}"
  end
end
