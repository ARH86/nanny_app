class ToRemoveExtraIdsFromTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :activities, :activity_id, :integer
    remove_column :children, :child_id, :integer
    remove_column :jobs, :job_id, :integer
    remove_column :users, :user_id, :integer
  end
end
