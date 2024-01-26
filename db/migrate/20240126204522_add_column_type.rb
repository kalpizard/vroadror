class AddColumnType < ActiveRecord::Migration[7.1]
  def change
    change_column :tasks, :task_name, :string
  end
end
