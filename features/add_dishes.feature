Feature: Add dishes to restaurant
  As a restaurant owner
  In order to manage my menu
  I would like to be able to add dishes on my menu

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
    | AmberBurger |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
    | Tasty burgers   | AmberBurger |

Scenario: Add dish successfully
  Given I am on the restaurant "NisseKebbab" new dish page
  Then I should see "Add new dish"
  When I fill in "dish_name" with "Pizza"
  And I fill in "dish_price" with "180"
  And I fill in "dish_description" with "Xtra All"
  And I select "Starter" from "Category"
  Then I click "Add dish"
  Then I should see "A new dish has been added to Nisses Takeaway menu"
  And the "Pizza" dish is saved on the database

Scenario: Unsuccessful adding of dish
  Given I am on the restaurant "NisseKebbab" new dish page
  Then I should see "Add new dish"
  When I fill in "dish_name" with "Pizza"
  And I fill in "dish_price" with " "
  And I fill in "dish_description" with "Xtra All"
  And I select "Starter" from "Category"
  Then I click "Add dish"
  Then I should see "Please make sure to fill in all the fields correctly"
  And I should see "Price can't be blank"
  And the "Pizza" dish should not be on the system
