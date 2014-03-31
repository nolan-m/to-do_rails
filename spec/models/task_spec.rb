require 'spec_helper'

describe Task do
  it { should validate_presence_of :name }

  describe ".done_tasks" do
    it "shows a list of tasks that are done" do
      task = Task.create(:name => "test")
      task.update(:status => true)
      Task.done_tasks.should eq [task]
    end
  end

  describe ".not_done_tasks" do
    it "shows a list of tasks that are not done" do
      task = Task.create(:name => "test", :status => false)
      Task.not_done_tasks.should eq [task]
    end
  end
end
