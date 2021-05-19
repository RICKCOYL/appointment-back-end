class Booking < ApplicationRecord
  belongs_to :user
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
  validates :username, uniqueness: { case_sensitive: false }
end
