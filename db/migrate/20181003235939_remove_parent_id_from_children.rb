class RemoveParentIdFromChildren < ActiveRecord::Migration[5.2]
  def change
    remove_column :children, :parent_id, :integer
    remove_column :jobs, :caregiver_id, :integer
    add_reference :children, :user, foreign_key: true
    add_reference :jobs, :user, foreign_key: true 
  end
end
