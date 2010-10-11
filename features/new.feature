Feature: Adding a new Todo Item
  As a user
  I want to add a todo item
  So that I could remember what I should do

  @javascript
  Scenario: Adding a new Item
    Given I am an authenticated user
    When I follow "Lisää uusi tehtävä"
      And I fill in "title" with "Osta Maitoa"
      And I press "Tallenna"
    Then I should see "Muista: Osta Maitoa"

