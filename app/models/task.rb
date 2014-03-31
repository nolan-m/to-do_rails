class Task < ActiveRecord::Base
  validates :name, :presence => true

  def self.done_tasks
    Task.where(:status => true)
  end

  def self.not_done_tasks
    Task.where(:status => false)
  end


end
