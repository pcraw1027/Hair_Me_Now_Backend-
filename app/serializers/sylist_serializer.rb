class SylistSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address_1, :address_2, :city, :zip_code, :gender_service, :ethnicity_service, :image, :phone_num, :email

  belongs_to :user

  has_many :appointments
  has_many :prices
  has_many :customers, through: :appointments
  has_many :productpurchases

  has_one :chair

end
