class AddBookedValueToSchedule < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :booked, :boolean, :default => false
  end
end
