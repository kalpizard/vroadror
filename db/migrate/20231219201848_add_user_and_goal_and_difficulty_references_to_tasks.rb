class AddUserAndGoalAndDifficultyReferencesToTasks < ActiveRecord::Migration[7.1]
  def change
    add_reference :tasks, :user, null: false, foreign_key: true
    add_reference :tasks, :goal, null: false, foreign_key: true
    add_reference :tasks, :difficulty, null: false, foreign_key: true
  end
end
