class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume
  has_one :review
end
