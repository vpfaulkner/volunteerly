class RenameCommitmentsToMemberships < ActiveRecord::Migration[5.0]
  def change
    rename_table :commitments, :memberships
  end
end
