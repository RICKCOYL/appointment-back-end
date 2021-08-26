class BookingSerializer < ActiveModel::Serializer
  attributes :id, :title, :time, :date, :details
  belongs_to :user
end
