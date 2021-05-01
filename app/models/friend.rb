class Friend < ApplicationRecord

  belongs_to :user
  belongs_to(
    :friend_a,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )
  belongs_to(
    :friend_b,
    class_name: "User",
    foreign_key: :other_user_id,
    primary_key: :id
  )
end
