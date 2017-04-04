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
   Given the following dishes exists
    | name       | price  | description | menu            |
    | Kebabrulle | 180    | Xtra Lök    | Nisses Takeaway |
    | Burger     | 190    | Cheese Dlux | Tasty burgers   |
    | Pizza      | 180    | Xtra All    | Nisses Takeaway |

  Scenario: I see description about the dish
    Given I am on the restaurant menu page for "Nisses Takeaway"
    And I click "Kebabrulle"
    Then I should see "Kebabrulle"
    And I should see "Xtra Lök"
