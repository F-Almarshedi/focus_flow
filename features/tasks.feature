Feature: Manage tasks
  As a user
  I want to manage my tasks
  So that I can stay organized

  Scenario: View tasks list
    Given I am on the tasks page
    Then I should see "Tasks"

  Scenario: Create a new task
    Given I am on the new task page
    When I fill in "Title" with "Homework 1"
    And I fill in "Description" with "Math assignment"
    And I fill in "Due date" with "2025-11-30"
    And I check "Completed"
    And I press "Create Task"
    Then I should see "Homework 1"

  Scenario: Edit an existing task
    Given a task exists
    And I am on the edit task page
    When I fill in "Title" with "Updated Homework"
    And I press "Update Task"
    Then I should see "Updated Homework"

  Scenario: Delete a task
    Given a task exists
    And I am on the task details page
    When I press "Destroy this task"
    Then I should see "Task was successfully destroyed."

  Scenario: Mark task as completed
    Given a task exists
    And I am on the edit task page
    When I check "Completed"
    And I press "Update Task"
    Then I should see "Completed: true"

