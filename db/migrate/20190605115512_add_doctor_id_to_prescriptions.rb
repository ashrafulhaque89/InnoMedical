class AddDoctorIdToPrescriptions < ActiveRecord::Migration[5.2]
  def change
    add_reference :prescriptions, :doctor, foreign_key: true
  end
end
