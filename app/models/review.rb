class Review < ApplicationRecord
  RATINGS = (0..5).to_a
  belongs_to :booking
  belongs_to :user
  validates :content, :rating, presence: true
  validates :rating, :inclusion=> { :in => RATINGS }
end
