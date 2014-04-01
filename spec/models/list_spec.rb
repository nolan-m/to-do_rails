require 'spec_helper'

describe List do
  it { should have_many :tasks }
  it { should validate_presence_of :name }

  describe "#done_tasks" do
    it "should give us all complete tasks from a list" do
      list = List.create(:name => "tests")
      task = Task.create(:name => "test", :status => true, :list_id => list.id)
      list.done_tasks.should eq [task]
    end
  end

  describe "#not_done_tasks" do
    it "should give us all incomplete tasks from a list" do
      list = List.create(:name => "tests")
      task = Task.create(:name => "test", :status => false, :list_id => list.id)
      list.not_done_tasks.should eq [task]
    end
  end
end
