class CreatePrescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :prescriptions do |t|
      t.string :medicine_name
      t.text :instructions
      t.date :prescription_date
      t.date :valid_until_date

      t.timestamps
    end
  end
end
