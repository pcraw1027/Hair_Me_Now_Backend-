class UserSerializer < ActiveModel::Serializer
  # attributes :id, :username, :user_type, :avatar, :user_prices, :user_appointments, :user_stylist
  # attributes :id, :username, :user_type, :avatar, :user_stylist, :user_customer, :user_stylist_appointments, :user_customer_appointments
  attributes :id, :username, :user_type, :avatar, :user_stylist, :user_customer


  has_one :customer
  has_one :stylist

end
