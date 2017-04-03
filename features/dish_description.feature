Feature: Dish full description page
As a visitor
In order to decide what dish to order
I would like to read a description about the dishes

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
    | Pizza      | 180   | Nisses Takeaway |

  Scenario: I see description about the dish
    Given I am on the restaurant menu page for "Nisses Takeaway"
    And I click "Kebabrulle"
    Then I should see "kebabrulle"
    And I should see "description"
    
