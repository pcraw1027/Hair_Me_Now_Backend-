class CreateStylistAvailabilities < ActiveRecord::Migration[6.1]
  def change
    create_table :stylist_availabilities do |t|
      t.string :day
      t.timestamp :start_time
      t.timestamp :end_time
      t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
