class RenameSlotsToAssignments < ActiveRecord::Migration[5.0]
  def change
    rename_table :slots, :assignments
  end
end
