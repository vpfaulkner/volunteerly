class ChangeNeededSlots < ActiveRecord::Migration[5.0]
  def change
    rename_column :teams, :needed_slots, :needed_assignments
  end
end
