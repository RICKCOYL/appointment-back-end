class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :time, :details, :user_id
  belongs_to :user
end
