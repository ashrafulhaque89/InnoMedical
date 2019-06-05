class AddUserReferenceToDoctor < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :users, foreign_key: true
  end
end
