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

    @javascript
    Scenario: I complete payment and receive a receipt
      Given I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      Given I am on the restaurant menu page for "Tasty burgers"
      And I click "Buy" on "Burger"
      And I click "Checkout"
      And I click the "Pay with Card" stripe button
      And I fill in my card details on the stripe form
      And I submit the stripe form
      And I select "5" from restaurant rating "NisseKebbab"
      And I click on "Rating" for "NisseKebbab"
      Then I should see "NisseKebbab"s "Rating 3.16"
      And I select "1" from restaurant rating "AmberBurger"
      And I click on "Rating" for "AmberBurger"
      Then I should see "AmberBurger"s "Rating 2.97"
