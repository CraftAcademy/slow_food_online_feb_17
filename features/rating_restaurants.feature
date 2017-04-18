Feature: Rate restaurant on checkout page
  As a visitor
  In order to show what I think of a restaurant
  I would like to be able to rate restaurants from 1-5

  Background:
   Given the following restaurants exist
    | name         |
    | NisseKebbab  |
    | AmberBurger |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
    | Tasty burgers   | AmberBurger |
   And the following dishes exist
    | name       | price | menu            |
    | Kebabrulle | 180   | Nisses Takeaway |
    | Burger     | 190   | Tasty burgers   |
   Given the following user exist
    | name  | email           | password  | password_confirmation |
    | Nubbe | nubbe@nubbe.com | 12345678  | 12345678              |

    @javascript
    Scenario: I complete payment and receive a receipt
      Given I am logged in as "nubbe@nubbe.com"
      And I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      Given I am on the restaurant menu page for "Tasty burgers"
      And I click "Buy" on "Burger"
      And I click "Checkout"
      And I click the "Pay with Card" stripe button
      And I fill in my card details on the stripe form
      And I submit the stripe form
    
