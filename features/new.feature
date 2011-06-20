Feature: Adding a new Todo Item
  As a user
  I want to add a todo item
  So that I could remember what I should do

  @javascript
  Scenario: Adding a new Item
    Given I am an authenticated user
    When I follow "Add a New Task"
      And I fill in "title" with "Buy Milk"
      And I press "Save"
    Then I should see "Remember: Buy Milk"
