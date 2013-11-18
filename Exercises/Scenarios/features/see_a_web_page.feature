Feature: See a web page
  As a manager
  So that I can check my page exists
  I want to confirm some page content

  Scenario: Check content
    Given that I am on the home page
    Then I should see "Hello World"