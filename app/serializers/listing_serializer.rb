# rubocop:disable Layout/EndOfLine

class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :details
  has_one :user
end
# rubocop:enable Layout/EndOfLine
