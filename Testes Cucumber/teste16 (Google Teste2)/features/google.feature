Feature: Visit Google

  Scenario: Visiting Google.com
    Given I visit google
    Then I should see Google in title
