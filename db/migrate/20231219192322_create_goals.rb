class CreateGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :goals do |t|
      t.string :goal_name
      t.date :goal_time
      t.boolean :completed, default: false

      t.timestamps
    end
  end
end
