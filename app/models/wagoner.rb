class Wagoner < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :bookings
  validates :description, presence: true
  validates :github_name, uniqueness: true, presence: true
  validates :price, presence: true
end
