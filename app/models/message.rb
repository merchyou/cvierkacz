class Message < ApplicationRecord
  has_many :comment

  validates :content, presence: true
  validates :content, length: {maximum: 140,
    too_long: "comment is too long. Keep it shorter than 140 char"}
end
