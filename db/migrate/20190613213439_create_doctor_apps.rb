class CreateDoctorApps < ActiveRecord::Migration[5.2]
  def change
    create_table :doctor_apps do |t|
      t.references :doctor, foreign_key: true
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end
