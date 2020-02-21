class Costume < ApplicationRecord
  THEMES = %w(comics animals politics circus fairy-tales pirates other)
  SIZE = %w(XS S M L)
  GENDER = %w(F M)
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  validates :title, :location, :price, :photo, presence: true
  validates :theme, :inclusion=> { :in => THEMES }, allow_nil: true
  validates :size, :inclusion=> { :in => SIZE }, allow_nil: true

  validates :gender, :inclusion=> { :in => GENDER }, allow_nil: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_description,
    against: [ :title, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
 end
