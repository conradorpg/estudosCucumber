Feature: CBT Feature

  Scenario: Adding ToDos
    Given I go to my ToDo app
    When I add a new ToDo
    Then I should have 6 ToDos