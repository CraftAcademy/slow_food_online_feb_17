Feature: Delete dishes from restaurant
  As a restaurant owner
  In order to manage my menu
  I would like to be able to delete dishes on my menu

Background:
 Given the following restaurants exist
  | name        |
  | NisseKebbab |
  | AmberBurger |
 And the following menus exist
  | name            | restaurant  |
  | Nisses Takeaway | NisseKebbab |
  | Tasty burgers   | AmberBurger |
Given the following dishes exist
  | name       | price | menu            |
  | Kebabrulle | 180   | Nisses Takeaway |
  | Burger     | 190   | Tasty burgers   |

Scenario: I successfully deleted the dish
  Given I am on the restaurant "NisseKebbab" delete dish page
  Then I should see "Delete dish"
  And I should see "Kebabrulle" in "dish_name"
  And I should see "180" in "dish_price"
  And I should see "Xtra All" in "dish_description"
  And I should see "Category" in "Starter"
  Then I click "Delete dish"
  Then I should see "Are you sure you want to delete this dish?"
  Then I should see "Kebabrulle details successfully deleted"
  And the dish name in the system should now be " "

Scenario: Unsuccesfull deletion of dish
  Given I am on the restaurant "NisseKebbab" delete dish page
  Then I should see "Delete dish"
  And I should see "Kebabrulle" in "dish_name"
  And I should see "180" in "dish_price"
  And I should see "Xtra All" in "dish_description"
  And I should see "Category" in "Starter"
  Then I click "Delete dish"
  Then I should see "Are you sure you want to delete this dish?"
  Then I should see "Kebabrulle details successfully deleted"
  And the dish name should still be "Kebabrulle" in the system
