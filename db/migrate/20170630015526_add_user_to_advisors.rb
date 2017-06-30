class AddUserToAdvisors < ActiveRecord::Migration[5.1]
  def change
    add_reference :advisors, :user, foreign_key: true
  end
end
