class AddRoleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :user, :role, :integer
  end
end
