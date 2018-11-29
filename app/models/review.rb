class Review < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { maximum: 25 }
  validates :author, presence: true, length: { maximum: 25 }
  validates :text, presence: true,  length: { minimum: 50, maximum: 1000 }
  validates :rating, presence: true
end