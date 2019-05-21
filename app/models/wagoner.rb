class Wagoner < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  has_many :bookings
  validates :description, presence: true
  validates :github_name, uniqueness: true, presence: true
  validates :price, presence: true
end
