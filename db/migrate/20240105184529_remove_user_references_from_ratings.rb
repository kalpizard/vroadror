class RemoveUserReferencesFromRatings < ActiveRecord::Migration[7.1]
  def change
    remove_reference :ratings, :user, null: false, foreign_key: true
  end
end
