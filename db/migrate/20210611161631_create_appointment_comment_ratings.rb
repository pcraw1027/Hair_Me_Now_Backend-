class CreateAppointmentCommentRatings < ActiveRecord::Migration[6.1]
  def change
    create_table :appointment_comment_ratings do |t|
      t.integer :rating
      t.text :comment
      t.boolean :pinned
      t.string :image

      t.timestamps
    end
  end
end
