require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      task = Task.new(
        title: "Test task",
        description: "Testing RSpec",
        due_date: Date.today,
        completed: false
      )
      expect(task).to be_valid
    end

    it "is invalid without a title" do
      task = Task.new(title: nil)
      expect(task).to_not be_valid
    end

    it "is invalid without a due_date" do
      task = Task.new(title: "No date task", due_date: nil)
      expect(task).to_not be_valid
    end
  end
end

