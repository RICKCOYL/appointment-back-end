# rubocop:disable Layout/EndOfLine
class BookingSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :details
  belongs_to :user
end
# rubocop:enable Layout/EndOfLine
