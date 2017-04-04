Feature: Visitor sign in
  As a visitor
  In order to purchase items
  I would like to be able to login to the system

  Scenario: I sign in to an account
   Given I sign up for an account
   And I am on the sign in page
   Then I should see "Sign in"
   And I fill in "Email" with "nubbe@nubbe.com"
   And I fill in "Password" with "12345678"
   And I click "Sign in"
   Then I should see "Signed in successfully."
