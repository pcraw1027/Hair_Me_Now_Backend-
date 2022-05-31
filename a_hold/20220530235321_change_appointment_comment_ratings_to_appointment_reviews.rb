class ChangeAppointmentCommentRatingsToAppointmentReviews < ActiveRecord::Migration[6.1]
  def change
    rename_table :appointment_comment_ratings, :appointment_reviews
  end
end
