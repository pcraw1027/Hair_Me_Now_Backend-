class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.date :date
      t.datetime :time
      t.string :image
      t.boolean :confirmed
      t.boolean :completed
      t.references :customer, null: false, foreign_key: true
      t.references :stylist, null: false, foreign_key: true
      t.references :price, null: false, foreign_key: true

      t.timestamps
    end
  end
end
