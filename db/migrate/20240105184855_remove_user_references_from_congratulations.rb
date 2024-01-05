class RemoveUserReferencesFromCongratulations < ActiveRecord::Migration[7.1]
  def change
    remove_reference :congratulations, :user, null: false, foreign_key: true
  end
end
