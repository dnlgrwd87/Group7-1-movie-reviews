class Comment < ApplicationRecord
  belongs_to :review
  validates :author, presence: true
  validates :body, presence: true, length: { minimum: 15 }
end
