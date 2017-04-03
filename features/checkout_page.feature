Feature: Show order on checkout page
  As a user
  In order to see what Im ordering
  I would like to see a summary of my order

  Background:
   Given the following restaurants exist
    | name        |
    | NisseKebbab |
   And the following menus exist
    | name            | restaurant  |
    | Nisses Takeaway | NisseKebbab |
   And the following dishes exist
    | name       | price | menu            |
    | Kebabrulle | 180   | Nisses Takeaway |
    | Falafel    | 190   | Nisses Takeaway |

    Scenario: I buy dishes and go to checkout
      Given I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      And I click "Buy" on "Falafel"
      And I click "Checkout"
      And I should see "Your Shopping Cart"
      And I should see "Kebabrulle"
      And I should see "Falafel"
      Then I should see "Total: 370"
