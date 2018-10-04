class CreateJobActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :job_activities do |t|
      t.integer :job_id
      t.integer :activity_id
      t.datetime :start_time
      t.integer :duration

      t.timestamps
    end
  end
end
