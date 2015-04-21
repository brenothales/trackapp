class Subtask < ActiveRecord::Base

  belongs_to :task
  has_many :logs, dependent: :destroy

  validates :name, presence: { message: 'Please provide a name' }
  validates_presence_of :task

  def work?
    !logs.empty? && !logs.first.stop
  end

  def logged
    logs.map(&:duration).sum
  end

end
