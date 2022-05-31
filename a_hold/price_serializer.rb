class PriceSerializer < ActiveModel::Serializer
  attributes :id, :amount, :image, :url, :current, :comment, :price_style

  belongs_to :stylist
  belongs_to :service

  has_many :appointments

end
