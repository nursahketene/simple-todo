Feature: authentication
  As any user
  I have to log in
  So that I can use the system

  Scenario: Logging In
    Given I am an authenticated user
    Then I should see "mrako's tasks"
      And I should see "Log out"

  Scenario: Logging Out
    Given I am an authenticated user
    When I follow "Log out"
    Then I should see "Login with your username and password"
