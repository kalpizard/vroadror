class RemoveReferenceUserToTask < ActiveRecord::Migration[7.1]
  def change
    remove_column :Tasks, :user_id
  end
end
