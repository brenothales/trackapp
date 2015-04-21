class Task < ActiveRecord::Base

  has_many :subtasks, dependent: :destroy
  has_many :logs, through: :subtasks

  validates :name, presence: { message: 'Please provide a name' }

  def logged
    logs.map(&:duration).sum
  end

end
