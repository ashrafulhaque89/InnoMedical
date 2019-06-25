class AddPatientProfileAndDoctorToDIagnosis < ActiveRecord::Migration[5.2]
  def change
    add_reference :diagnoses, :patient_profile, foreign_key: true
    add_reference :diagnoses, :doctor, foreign_key: true
  end
end
