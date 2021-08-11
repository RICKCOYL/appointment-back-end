class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :doctor
  has_one :user
  has_one :booking
end
