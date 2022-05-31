class CreateAppointmentReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :appointment_reviews do |t|
      t.integer :rating
      t.text :comment
      t.boolean :pinned
      t.string :image
      t.text    :response
      t.references :appointment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
