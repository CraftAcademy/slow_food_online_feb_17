Feature: Create navigation menu
As a visitor
In order to navigate the site
I would like a navigation menu in the header

  Background:
    Given I am on the index page

  Scenario: I navigate to the restaurant show page
    And I click "Restaurants"
    Then I should see "Restaurants"

  Scenario: I navigate to about page
    And I click "About"
    Then I should see "About"

  Scenario: I navigate to Registration page
    And I click "Registration"
    Then I should see "Registration page"

  Scenario: I navigate to Home page
    And I click "Home"
    Then I should see "index page"
