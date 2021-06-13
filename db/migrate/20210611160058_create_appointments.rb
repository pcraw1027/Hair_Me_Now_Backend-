class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.time :time
      t.string :image
      t.boolean :confirmed
      t.boolean :completed

      t.timestamps
    end
  end
end
