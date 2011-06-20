Feature: Adding a new Todo Item
  As a user
  I want to add a todo item
  So that I could remember what I should do

  @javascript
  Scenario: Adding a new Item
    Given I go to the home page
      And I fill in "user_login" with "mrako"
      And I fill in "user_pass" with "test"
      And I press "Login"
    When I follow "Add a New Task"
      And I fill in "title" with "Buy Milk"
      And I press "Save"
    Then I should see "Remember: Buy Milk"
