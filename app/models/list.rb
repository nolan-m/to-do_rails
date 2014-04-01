class List < ActiveRecord::Base
  has_many :tasks
  validates :name, :presence => true

  def done_tasks
    Task.where(:list_id => self.id, :status => true)
  end

  def not_done_tasks
    Task.where(:list_id => self.id, :status => false)
  end

end
