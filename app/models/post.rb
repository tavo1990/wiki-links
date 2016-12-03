class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :content, length: { maximum: 140 }, presence: true
  default_scope -> { order('created_at DESC') } #displays in order starting from the the most recent post
end

