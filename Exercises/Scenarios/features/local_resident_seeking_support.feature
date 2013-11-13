Feature: Local Resident seeking Support
  As a local resident
  So that I can get support for a specific condition
  I want to find contact details for a local service specific to my need

  Scenario: Find help with care for elderly
    Given that I am on the home page
    When I click on "elderly"
    Then I should see "Indian Elders Association"
    And I should see "Age UK"