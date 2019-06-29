class AddCosttoSchedule < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :cost, :decimal
  end
end
