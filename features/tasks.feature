Feature: Manage tasks
  In order to organize my work
  As a user
  I want to create and view tasks

  Scenario: User creates a new task
    Given I am on the tasks page
    When I add a new task with title "Study Rails"
    Then I should see "Study Rails" in the task list
