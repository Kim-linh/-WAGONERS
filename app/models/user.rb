class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :wagoners
  validates :first_name, presence: true
  validates :last_name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader
end
