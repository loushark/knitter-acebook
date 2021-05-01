class AddOtherUserRefToFriends < ActiveRecord::Migration[6.1]
  def change
    # add_reference :friends, :other_user, null: false, foreign_key: true
    add_reference :friends, :other_user, foreign_key: {to_table: :users}
  end
end
