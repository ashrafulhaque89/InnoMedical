class AddProfileToPatientHistory < ActiveRecord::Migration[5.2]
  def change
    add_reference :patient_histories, :patient_profile, foreign_key: true
  end
end
