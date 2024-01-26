class AddGoalRefToAdvances < ActiveRecord::Migration[7.1]
  def change
    add_reference :advances, :goal, null: false, foreign_key: true
  end
end
