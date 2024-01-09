class RemoveUserReferenceFromNotifications < ActiveRecord::Migration[7.1]
  def change
    remove_reference :notifications, :user, null: false, foreign_key: true
  end
end
