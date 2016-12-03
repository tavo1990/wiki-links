class Post < ApplicationRecord
  belongs_to :user
  validate :user_id, presence: true
  validate :content, presence: true, length: (maximum: 140)
  default_scope => {order(created_at: :desc)} #displays in order starting from the the most recent post
end

