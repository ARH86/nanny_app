class AddDurationToActivities < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_activities, :start_time, :datetime
    remove_column :job_activities, :duration, :integer

    add_column :activities, :start_time, :datetime
    add_column :activities, :duration, :integer
  end
end
