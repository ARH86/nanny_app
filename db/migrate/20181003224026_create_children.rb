class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.integer :child_id
      t.integer :parent_id
      t.string :name
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
