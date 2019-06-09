class AddPatientProfileToAppointments < ActiveRecord::Migration[5.2]
  def change
     add_reference :appointments, :patient_profile, foreign_key: true
  end
end
