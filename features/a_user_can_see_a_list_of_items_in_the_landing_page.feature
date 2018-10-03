Feature: View items
As a user
In order to be able to choose for a recipe
I would like to see a list of items available on the website

Background:
    Given the following items exists
    | name      |
    | Chicken   |
    | Tomatoes  |
    | Garlic    |
    And I visit the landing page


Scenario: View list of items on the landing page
    Then I should see "What's on your fridge?"
    And I should see "Chicken"
    And I should see "Tomatoes"
    And I should see "Garlic"