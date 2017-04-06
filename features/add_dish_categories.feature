Feature: Add different categories for the restaurant dishes
  As a restaurant owner
  In order to present my food in a good way
  I would like to be able to categorize my dishes in groups

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
   And the following dishes and category exist
    | name       | price | menu            | category    |
    | Kebabrulle | 180   | Nisses Takeaway | Starters    |
    | Falafel    | 190   | Nisses Takeaway | Main course |
    | Ice cream  | 230   | Nisses Takeaway | Dessert     |

  Scenario: I would like to see dishes sorted by category
    Given I am on the restaurant menu page for "Nisses Takeaway"
    Then I should see "Kebabrulle" in "Main course"
    And I should see "Falafel" in "Starters"
    And I should see "Ice cream" in "Dessert"
