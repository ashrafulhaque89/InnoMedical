class AddUserToDoctor < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :user_id, :integer
  end
end
