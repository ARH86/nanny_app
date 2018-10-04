class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.integer :job_id
      t.datetime :start_time
      t.datetime :end_time
      t.integer :caregiver_id
      t.integer :child_id

      t.timestamps
    end
  end
end
