Feature: index page with a list restaurants
  As a visitor
  in order to access the app
  I need to see an index page
  I would like to be presented with some examples of restaurants that deliver food

  Background:
    Given the following restaurants exist
    | name        |
    | NisseKebbab |

  Scenario: viewing list of restaurants
    Given I am on the index page
    And I should see "List Of Restaurants"
    And I should see "NisseKebbab"

  @javascript
  Scenario: Loading the map on the index page
    Given I am on the index page
    Then I expect google maps to load
