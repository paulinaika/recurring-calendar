class CreateScheduleExceptions < ActiveRecord::Migration[5.1]
  def change
    create_table :schedule_exceptions do |t|
      t.references :advisor, foreign_key: true
      t.datetime :time

      t.timestamps
    end
  end
end
