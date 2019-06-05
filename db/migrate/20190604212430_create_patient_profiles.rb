class CreatePatientProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_profiles do |t|
      t.string :gender
      t.string :ethnicity

      t.timestamps
    end
  end
end
