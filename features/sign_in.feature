Feature: Visitor sign in/sign out
  As a visitor
  In order to purchase items
  I would like to be able to sign in and out to the system

  Background:
    Given the following user exist
      | name  | email           | password  | password_confirmation |
      | Nubbe | nubbe@nubbe.com | 12345678  | 12345678              |

  Scenario: User can sign in
    Given I am on the sign in page
    And I fill in "Email" with "nubbe@nubbe.com"
    And I fill in "Password" with "12345678"
    And I click button "Sign in"
    Then I should see "Signed in successfully."

  Scenario: User can sign out
    Given I am logged in as "nubbe@nubbe.com"
    And I am on the index page
    And I click "Sign Out"
    Then I should see "Signed out successfully."
