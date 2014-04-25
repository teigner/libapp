Feature: division Management

  Scenario: Create a new division with valid data
    Given I am logged in as an administrator
     When I fill in the new division form with valid data
     Then the division should be created
      And I should be on the division detail page

  Scenario: Create a new division with invalid data
    Given I am logged in as an administrator
     When I fill in the new division form with invalid data
     Then I should see the new division form again
      And I should see an error message
      And the division should not be created
