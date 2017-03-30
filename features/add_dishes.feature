Feature: Add dishes to menu
  As a user
  In order to decide from various dishes from a restaurant
  I would like to see many dishes in the restaurant´s menu

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
    | AmberBurger |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
    | Tasty burgers   | AmberBurger |
   And the following dishes exist
    | name       | price | menu            |
    | Kebabrulle | 180   | Nisses Takeaway |

   Scenario: I see dishes in the menu
    Given I am on the restaurant menu page for "Nisses Takeaway"
    Then I should see "Menu"
    And I should see "Kebabrulle"
    And I should see "180"
