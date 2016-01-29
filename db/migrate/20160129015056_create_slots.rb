class CreateSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :slots do |t|
      t.date :date
      t.integer :commitment_id

      t.timestamps
    end
  end
end
