class CreateChairs < ActiveRecord::Migration[6.1]
  def change
    create_table :chairs do |t|
      t.integer :chair_num
      t.references :stylist, null: false, foreign_key: true
      t.references :salon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
