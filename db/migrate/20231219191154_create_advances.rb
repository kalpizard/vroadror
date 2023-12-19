class CreateAdvances < ActiveRecord::Migration[7.1]
  def change
    create_table :advances do |t|
      t.datetime :death_line
      t.float :current_progress

      t.timestamps
    end
  end
end
