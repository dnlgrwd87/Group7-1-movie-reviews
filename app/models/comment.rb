class Comment < ApplicationRecord
  belongs_to :review
  validates :author, presence: true, length: { maximum: 25 }
  validates :body, presence: true, length: { maximum: 225 }
end
