class RenameActivitiesToTeams < ActiveRecord::Migration[5.0]
  def change
    rename_table :activities, :teams
  end
end
