Feature: Select items

As a user
In order to get the recipe that I want
I would like to be able to select the items available

Background:
    Given the following items exists
    | name      |
    | Chicken   |
    | Tomatoes  |
    | Garlic    |
    And I visit the landing page

Scenario: Select items on the landing page
    Then I should see "What's on your fridge?"
    And I should check "Chicken"
    And I should check "Tomatoes"
    And I should check "Garlic"