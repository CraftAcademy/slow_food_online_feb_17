When(/^I click the "([^"]*)" stripe button$/) do |arg|
  find('.stripe-button-el').trigger('click')
end

And(/^I fill in my card details on the stripe form$/) do
  sleep(2)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
  within_frame @stripe_iframe do
    fill_in 'Email', with: 'random@morerandom.com'
    fill_in 'Card number', with: '4242 4242 4242 4242'
    fill_in 'CVC', with: '123'
    fill_in 'cc-exp', with: '12/2021'
  end
end

And(/^I submit the stripe form$/) do
  cart = ShoppingCart.last
  within_frame @stripe_iframe do
    click_button "Pay kr#{sprintf('%.2f', cart.total.to_i)}"
  end
  sleep(10) #--> Uncomment this line if you're running live tests with actual API calls to Stripe
end

Given(/^I register as a user with username "([^"]*)" and email "([^"]*)"$/) do |name, email|
  visit new_user_registration_path
  fill_in "Name", with: name
  fill_in "Email", with: email
  fill_in "Password", with: "12345678"
  fill_in "Password confirmation", with: "12345678"
  click_button "Sign up"
end

And(/^I check out but my card is declined$/) do
  StripeMock.prepare_card_error(:card_declined)
  steps %q{
    And I submit the stripe form
  }
end

And (/^I should be on the checkout page$/) do
  expect(current_path).to eq cart_path(ShoppingCart.last)
end
