class RemoveOtherUserIdFromFriends < ActiveRecord::Migration[6.1]
  def change
      remove_column :friends, :other_user_id
  end
end
