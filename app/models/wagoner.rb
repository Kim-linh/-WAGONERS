class Wagoner < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :bookings
  validates :description, presence: true
  validates :github_name, uniqueness: true, presence: true
  validates :price, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
