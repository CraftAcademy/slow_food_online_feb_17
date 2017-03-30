Feature: Create menu show page
  As a visitor
  In order to select dishes from a menu
  I would like to be able to visit a menu page and see the restaurants menu name

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
    | AmberBurger |
   Given the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
    | Tasty burgers   | AmberBurger |

  Scenario: I create an menu page and the menu´s name i displayed
    Given I am on the restaurant menu page for "Nisses Takeaway"
    And I should see "Menu"
    And I should see "NisseKebbab"
    And I should not see "Tasty burgers"
    Then I should see "Nisses Takeaway"
