class AddPaidValueToSchedule < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :paid, :boolean, :default => false
  end
end
