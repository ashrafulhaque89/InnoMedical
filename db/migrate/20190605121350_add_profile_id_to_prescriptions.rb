class AddProfileIdToPrescriptions < ActiveRecord::Migration[5.2]
  def change
    add_reference :prescriptions, :patient_profile, foreign_key: true
  end
end
