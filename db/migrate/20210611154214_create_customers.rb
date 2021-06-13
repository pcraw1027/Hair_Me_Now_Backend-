class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :zip_code
      t.string :gender
      t.string :ethnicity
      t.string :image
      t.string :phone_num
      t.string :email

      t.timestamps
    end
  end
end
