class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :gender, :ethnicity, :image, :phone_num, :email

  belongs_to :user
  
  has_many :appointments
  has_many :stylists, through: :appointments
end
