class ScheduleException < ApplicationRecord
  belongs_to :advisor

  validates :time, presence: true
end
