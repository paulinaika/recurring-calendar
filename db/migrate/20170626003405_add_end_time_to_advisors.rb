class AddEndTimeToAdvisors < ActiveRecord::Migration[5.1]
  def change
    add_column :advisors, :end_time, :datetime
  end
end
