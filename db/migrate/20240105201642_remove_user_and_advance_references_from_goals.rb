class RemoveUserAndAdvanceReferencesFromGoals < ActiveRecord::Migration[7.1]
  def change
    remove_reference :goals, :user, null: false, foreign_key: true
    remove_reference :goals, :advance, null: false, foreign_key: true
  end
end
