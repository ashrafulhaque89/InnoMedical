class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.string :description
      t.integer :cost
      t.datetime :startdate
      t.datetime :finishdate

      t.timestamps
    end
  end
end
