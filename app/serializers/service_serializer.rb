class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, description, :image

  has_many :prices
end
