class AddDoctorIdtoSchedule < ActiveRecord::Migration[5.2]
  def change
     add_reference :schedules, :doctor, foreign_key: true
  end
end
