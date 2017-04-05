Feature: Receipt Page
  As a user
  In order to see receipt on my order.
  I would like to see a summary of my order details when the payment transaction  is complete.

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
    | Falafel    | 100   | Nisses Takeaway |

    Scenario: I complete payment and receive a receipt
      Given I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Kebabrulle"
      And I click "Checkout"
      And I should see "Total: 180"
      And I click "Finalize order"
      And I should see "Thank you for your order"
      And I should see "Kebabrulle"
      And I should see "Total: 180"
      Then my order should be marked as true
      When I am on the restaurant menu page for "Nisses Takeaway"
      And I click "Buy" on "Falafel"
      Given there is "cart_id" cookie set to "123"
      Then I should see "1 dishes in cart"
