class CreateStylistCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :stylist_calendars do |t|
      t.string :date
      t.timestamp :start_time
      t.timestamp :end_time
      t.references :stylist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
