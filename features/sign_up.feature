Feature: Create the registration form
  As a visitor
  In order to place an order
  I would like to create an account


  Scenario: I create an account
   Given I am on the registration page
   Then I should see "Sign up"
   When I fill in "Name" with "Sara"
   And I fill in "Email" with "sara@sara.com"
   And I fill in "Password" with "12345678"
   And I fill in "Password confirmation" with "12345678"
   And I click "Sign up"
   Then I should see "You have signed up successfully."
