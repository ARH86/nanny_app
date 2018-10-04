class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.integer :activity_id
      t.string :name

      t.timestamps
    end
  end
end
