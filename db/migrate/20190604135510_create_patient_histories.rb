class CreatePatientHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :patient_histories do |t|
      t.text :medical_history
      t.string :picture

      t.timestamps
    end
  end
end
