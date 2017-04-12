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
   And the following rating exist
    | rating | counter  | restaurant    |
    | 3      | 30       | NisseKebbab   |
    | 3      | 30       | AmberBurger   |

    Scenario: I complete payment and receive a receipt
      Given I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      Given I am on the restaurant menu page for "Tasty burgers"
      And I click "Buy" on "Burger"
      And I click "Checkout"
      And I should see "Total: 370"
      And I click "Finalize order"
      And I should see "Thank you for your order"
      And I should see "Rating 3"
      And I select "5" from and "rating_rating"
      And I click on "Rating"
      Then I should see "Rating 3.16"
      And I select "1" from and"rating_rating"
      And I click on"Rating"
      Then I should see "Rating 2.97"
