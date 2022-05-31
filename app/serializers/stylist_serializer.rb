class StylistSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :address_1, :address_2, :city, :zip_code, :gender_service, :ethnicity_service, :image, :phone_num, :email

  #belongs_to :user

  has_many :appointments, serializer: AppointmentSerializer
  has_many :services, serializer: ServiceSerializer
  has_many :customers, through: :appointments, serializer: CustomerSerializer
  has_many :productpurchases
  has_many :productreviews
  has_many :socialsites, serializer: SocialSiteSerializer
  has_many :stylistavailabilities
  has_many :stylistcalendars

  # has_one :chair

end
