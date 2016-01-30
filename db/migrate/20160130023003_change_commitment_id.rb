class ChangeCommitmentId < ActiveRecord::Migration[5.0]
  def change
    rename_column :slots, :commitment_id, :membership_id
  end
end
