class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :wagoner

  validates :start_at, presence: true

  validate :start_at_cannot_be_in_the_past, :end_at_cannot_be_greater_than_checkout

private
  def start_at_cannot_be_in_the_past
    if self.start_at < Date.today
      errors.add(:start_at, "Can't be in the past")
    end
  end

  def end_at_cannot_be_greater_than_checkout
    if self.start_at > self.end_at
      errors.add(:end_at, "Checkout must be greater than start at")
    end
  end
end
