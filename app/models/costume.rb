class Costume < ApplicationRecord
  THEMES = %w(comics animals politics circus fairy-tales pirates other)
  SIZE = %w(XS S M L)
  GENDER = %w(F M)
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  validates :title, :description, :gender, :size, :location, :theme, :price, :photo, presence: true
  validates :theme, :inclusion=> { :in => THEMES }
  validates :size, :inclusion=> { :in => SIZE }
  validates :gender, :inclusion=> { :in => GENDER }
end
