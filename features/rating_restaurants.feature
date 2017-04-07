Feature: Rate restaurant on checkout page
  As a visitor
  In order to show what I think of a restaurant
  I would like to be able to rate restaurants from 1-5

  Background:
   Given the following restaurants exist
    | name         |
    | NisseKebbab  |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
   And the following dishes exist
    | name       | price | menu            |
    | Kebabrulle | 180   | Nisses Takeaway |
    | Falafel    | 100   | Nisses Takeaway |
   And the following rating exist
    | rating | counter  | restaurant    |
    | 3      | 30       | NisseKebbab  |

    Scenario: I complete payment and receive a receipt
      Given I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      And I click "Checkout"
      And I should see "Total: 180"
      And I click "Finalize order"
      And I should see "Thank you for your order"
      And I should see "Rating 3"
      And I select "5" from "rating_rating"
      And I click "Rating"
      Then show me the page
      Then I should see "Rating 3.16"
