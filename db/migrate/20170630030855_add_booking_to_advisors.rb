class AddBookingToAdvisors < ActiveRecord::Migration[5.1]
  def change
    add_reference :advisors, :booking, foreign_key: true
  end
end
