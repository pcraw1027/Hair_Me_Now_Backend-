class AppointmentCommentRating < ApplicationRecord
    belongs_to :appointment

    validates :rating, presence: {message: 'Must have a rating or comment'}, unless: :comment
    validates :comment, presence: {message: 'Must have a rating or comment'}, unless: :rating
end
