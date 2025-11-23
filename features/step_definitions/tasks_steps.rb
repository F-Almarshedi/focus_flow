Given("I am on the tasks page") do
  visit "/tasks"
end

When("I add a new task with title {string}") do |title|
  visit "/tasks/new"
  fill_in "Title", with: title
  fill_in "Description", with: "Test description"
  fill_in "Due date", with: Date.today
  click_button "Create Task"
end

Then("I should see {string} in the task list") do |title|
  visit "/tasks"
  expect(page).to have_content(title)
end
