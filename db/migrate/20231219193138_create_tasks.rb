class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.integer :task_name
      t.string :task_description

      t.timestamps
    end
  end
end
