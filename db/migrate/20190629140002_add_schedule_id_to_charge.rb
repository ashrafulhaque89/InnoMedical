class AddScheduleIdToCharge < ActiveRecord::Migration[5.2]
  def change
    add_reference :charges, :schedule, foreign_key: true
  end
end
