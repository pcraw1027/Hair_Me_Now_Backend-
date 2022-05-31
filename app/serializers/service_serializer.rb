class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :image

  has_many   :appointmentservices
  
  belongs_to :salon
  belongs_to :stylist

end
