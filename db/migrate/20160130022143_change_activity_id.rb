class ChangeActivityId < ActiveRecord::Migration[5.0]
  def change
    rename_column :commitments, :activity_id, :team_id
  end
end
