class CreateAppointmentServices < ActiveRecord::Migration[6.1]
  def change
    create_table :appointment_services do |t|
      t.references :service, null: false, foreign_key: true
      t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
