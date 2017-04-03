Feature: Add dish to cart
  As a visitor
  In order to select a dish that I´d like to order
  I would like to place it in the cart

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

  Scenario: I buy a dish and put it in the cart
    Given I am on the restaurant menu page for "Nisses Takeaway"
    Then I should see "Kebabrulle"
    And I should see "Falafel"
    And I click "Buy" on "Kebabrulle"
    And I should see "Kebabrulle has been added to your order"
    Then I should see "1 dishes in cart"

  Scenario: I buy a second dish and put it in the cart
    Given I am on the restaurant menu and have one item in my cart
    And I click "Buy" on "Falafel"
    And I should see "Falafel has been added to your order"
    Then I should see "2 dishes in cart"
