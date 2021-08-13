class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :doctor
  belongs_to :booking
end
