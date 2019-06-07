class UpdateDoctorTableWithNewDetails < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :firstname
    remove_column :doctors, :lastname
    remove_column :doctors, :phone
  end
end
