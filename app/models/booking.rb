class Booking < ApplicationRecord
  belongs_to :user
  has_many :urgents, dependent: :destroy
  scope :ordered_by_most_recent, -> { order(created_at: :desc) }
end
