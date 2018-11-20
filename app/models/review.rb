class Review < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true
  validates :text, presence: true
  validates :text, presence: true
  validates :text, presence: true, length: { minimum: 20 }
end