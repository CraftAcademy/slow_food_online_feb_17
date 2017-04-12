Feature: Edit dishes on menu
  As a restaurant owner
  In order to manage my menu
  I would like to be able to edit dishes on my menu

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
    | AmberBurger |
   Given the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
    | Tasty burgers   | AmberBurger |
   Given the following dishes exist
    | name       | price | menu            |
    | Kebabrulle | 180   | Nisses Takeaway |
    | Burger     | 190   | Tasty burgers   |

   Scenario: I succesfully edit the dish
    Given I am on the "Kebabrulle" dish edit page for "NisseKebbab" restaurant
    When I fill in "dish_name" with "Felafelrulle"
    Then I click "Update Dish"
    Then I should see "Felafelrulle details successfully changed"
    And the dish name in the system should now be "Felafelrulle"

   Scenario: Unsuccesfull edit of the dish
    Given I am on the "Kebabrulle" dish edit page for "NisseKebbab" restaurant
    When I fill in "dish_name" with " "
    Then I click "Update Dish"
    Then I should see "Name can't be blank"
    And the dish name should still be "Kebabrulle" in the system

   Scenario: Link for editing dish
     Given I am on the restaurant menu page for "Nisses Takeaway"
     Then I should see "Edit dish"
     When I click "Edit dish"
     Then I should be on the edit page for "Kebabrulle"
