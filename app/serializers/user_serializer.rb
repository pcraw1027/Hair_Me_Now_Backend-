class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_type, :avatar, :user_prices, :user_appointments

  has_one :customer
  has_one :stylist

end
