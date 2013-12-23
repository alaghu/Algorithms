Feature: User starts interacting with command line for Algorithm

  As a user
  I want to be able to enter different numbers
  So that I can find the largest number

  Scenario: start the algorithm
    Given I have not yet started
    When I start a new console
    Then I should see the "Welcome to Finding the Largest Number!"
    And I should see the "How many numbers do you want to check?"

