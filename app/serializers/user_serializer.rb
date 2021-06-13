class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :user_type, :avatar

  has_one :customer
  has_one :sylist
end
