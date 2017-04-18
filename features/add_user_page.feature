Feature: Add user previous order page with rating
  As a user
  In order to see my previus orders.
  I would like to see a user page with my order details.

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
    | Pizza      | 150   | Nisses Takeaway |
    | Burger     | 190   | Tasty burgers   |
   Given the following user exist
    | name  | email           | password  | password_confirmation |
    | Nubbe | nubbe@nubbe.com | 12345678  | 12345678              |

  @javascript
  Scenario: User whants to see previeus orders and rate resturants
    Given I am logged in as "nubbe@nubbe.com"
    And I am on the restaurant menu page for "Nisses Takeaway"
    And I click "Buy" on "Kebabrulle"
    And I click "Checkout"
    And I click the "Pay with Card" stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    And I am on the restaurant menu page for "Tasty burgers"
    And I click "Buy" on "Burger"
    And I click "Checkout"
    And I click the "Pay with Card" stripe button
    And I fill in my card details on the stripe form
    And I submit the stripe form
    And I click "Your page"
    Then I should see "Kebabrulle"
    Then show me the page
    And I select "5" from restaurant rating "NisseKebbab"
    And I click on "Rating" for "NisseKebbab"
    And I select "1" from restaurant rating "AmberBurger"
    And I click on "Rating" for "AmberBurger"
    Then I should see "NisseKebbab"s "Rating 3.16"
    And I should see "AmberBurger"s "Rating 2.97"
