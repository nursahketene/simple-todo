Feature: User Authentication
  As any user
  I have to log in
  So that I can use the system

  Scenario: Logging In
    Given I login to the system
    Then I should see "mrako's tasks"
      And I should see "Log out"

  Scenario: Logging Out
    Given I login to the system
    When I go to "/logout"
    Then I should see "Login with your username and password"
