# rubocop:disable Layout/EndOfLine

class Listing < ApplicationRecord
  validates_presence_of :title, :details, :date, :time
  belongs_to :user
end
# rubocop:enable Layout/EndOfLine
