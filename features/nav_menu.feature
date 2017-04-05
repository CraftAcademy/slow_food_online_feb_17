Feature: Create navigation menu
  As a visitor
  In order to navigate the site
  I would like a navigation menu in the header

  Background:
    Given I am on the index page

  Scenario: I navigate to Home page
    And I click "Home"
    Then I should see "Slow Food Online"

  Scenario: I navigate to Sign up page
    And I click "Sign up"
    Then I should see "Sign up"

  Scenario: I navigate to Sign in page
    And I click "Sign in"
    Then I should see "Sign in"
