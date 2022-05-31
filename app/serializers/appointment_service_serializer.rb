class AppointmentServiceSerializer < ActiveModel::Serializer
  attributes :id

belongs_to  :service
belongs_to  :appointment

end
