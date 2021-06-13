class Price < ApplicationRecord
    belongs_to :stylist
    belongs_to :service

    has_many :appointments

    validates :amount, numericality: {message: 'The value must be a valid price e.g. $9.99'}
end
