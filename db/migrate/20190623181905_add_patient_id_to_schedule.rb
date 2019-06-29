class AddPatientIdToSchedule < ActiveRecord::Migration[5.2]
  def change
     add_reference :schedules, :patient_profile, foreign_key: true
  end
end
