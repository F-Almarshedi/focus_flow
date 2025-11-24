Given("I am on the tasks page") do
  visit tasks_path
end

Given("I am on the new task page") do
  visit new_task_path
end

Given("a task exists") do
  @task = Task.create!(
    title: "Sample Task",
    description: "Test",
    due_date: Date.today,
    completed: false
  )
end

Given("I am on the edit task page") do
  visit edit_task_path(@task)
end

Given("I am on the task details page") do
  visit task_path(@task)
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

When("I check {string}") do |field|
  check field
end

When("I press {string}") do |button|
  click_button button
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

