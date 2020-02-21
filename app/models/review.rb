class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :content, :rating, presence: true
  validates :rating, presence: true
end
