class Service < ApplicationRecord
    has_many :prices

    validates :name, :description, presence: true
    validates :name, :description, length: {minimum: 5, message: 'Name and Description must be at least 5 characters long'}
end
