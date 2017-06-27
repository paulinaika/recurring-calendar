class Advisor < ApplicationRecord
  serialize :recurring, Hash
  has_many :bookings
  has_many :user, through: :bookings

  def recurring=(value)
    if value == "null"
      super(nil)
    elsif RecurringSelect.is_valid_rule?(value)
      super(RecurringSelect.dirty_hash_to_rule(value).to_hash)
    else
      super(nil)
    end
  end

  def rule
    IceCube::Rule.from_hash recurring
  end

  def schedule(start)
    schedule = IceCube::Schedule.new(start = Time.now, :end_time => start + 6)
    schedule.add_recurrence_rule(rule)
    schedule
  end

  def calendar_advisors(start)
    if recurring.empty?
      [self]
    else
      start_date = start.beginning_of_month.beginning_of_week
      end_date = start.end_of_month.end_of_week
      schedule(start_date).occurrences(end_date).map do |date|
        Advisor.new(id: :id, name: name, start_time: date, end_time: date)
    end
  end
end

end
