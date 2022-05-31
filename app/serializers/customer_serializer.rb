class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender, :ethnicity, :image, :phone_num, :email, :customer_appointments

  #belongs_to :user
  
  has_many :appointments, serializer: AppointmentSerializer
  has_many :stylists, through: :appointments, serializer: StylistSerializer
  
end
