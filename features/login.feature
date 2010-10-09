Feature: authentication
  As any user
  I have to log in
  So that I can use the system

Scenario: Logging In
  Given I am an authenticated user
  Then I should see "mrako"
    And I should see "Kirjaudu ulos"

Scenario: Logging Out
  Given I am an authenticated user
  When I go to "/logout"
  Then I should see "Kirjaudu järjestelmään"
