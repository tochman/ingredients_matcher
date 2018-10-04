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
    Then I should see "What's in your fridge?"
    And I should select "Chicken"
    And I should select "Tomatoes"
    And I should select "Garlic"