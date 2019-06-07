class ChangePatientProfileGender < ActiveRecord::Migration[5.2]
  def change
    remove_column :patient_profiles, :gender
    add_column :patient_profiles, :gender, :integer
  end
end
