class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :costume
  has_one :review, dependent: :destroy
  validates :status, inclusion: { in: %w(approved pending denied cancelled),
    message: "Not a valid status" }
  validates :start_date, :end_date, presence: true
  # validates :end_date, presence: true, date: { after_or_equal_to:  :start_date}
  validate :end_date_is_after_start_date

  scope :pending, -> { where status: 'pending'}
  scope :approved, -> { where status: 'approved'}
  scope :denied, -> { where status: 'denied'}
  scope :cancelled, -> { where status: 'cancelled'}

  private

  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?
    if end_date < start_date
      errors.add(:end_date, "Start date cannot be before the start date")
    end
  end
end
