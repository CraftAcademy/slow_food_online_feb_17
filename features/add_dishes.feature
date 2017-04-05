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
  Given I am on the new dish page
  Then I should see "Add new dish"
  When I fill in "name" with "Pizza"
  And I fill in "price" with "180"
  And I fill in "description" with "Xtra All"
  And I select "Takeaway" from "menu"
  Then I click "Add dish"
  Then I should see "A new dish has been added to Takeaway menu"
  And the "Pizza" dish is saved on the database

Scenario: Unsuccessful adding of dish
  Given I am on the new dish page
  Then I should see "Add new dish"
  When I fill in "name" with "Pizza"
  And I fill in "price" with " "
  And I fill in "description" with "Xtra All"
  And I select "Takeaway" from "menu"
  Then I click "Add dish"
  Then I should see "Please make sure to fill in all the fields"
  And the "Pizza" dish should not be on the system
