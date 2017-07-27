class AddIndexToActivities < ActiveRecord::Migration[5.0]
  def change
    add_index :activities, [:user_id, :created_at]
  end
end
