class CreateSubtasks < ActiveRecord::Migration[7.1]
  def change
    create_table :subtasks do |t|
      t.integer :subtask_description

      t.timestamps
    end
  end
end
