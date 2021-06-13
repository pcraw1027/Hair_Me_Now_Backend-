# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_11_170626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointment_comment_ratings", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.boolean "pinned"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.time "time"
    t.string "image"
    t.boolean "confirmed"
    t.boolean "completed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "chairs", force: :cascade do |t|
    t.integer "chair_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "zip_code"
    t.string "gender"
    t.string "ethnicity"
    t.string "image"
    t.string "phone_num"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prices", force: :cascade do |t|
    t.float "amount"
    t.string "image"
    t.string "url"
    t.boolean "current"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_purchases", force: :cascade do |t|
    t.float "amount"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "qr_code"
    t.string "upc_code"
    t.string "corporation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchase_comment_ratings", force: :cascade do |t|
    t.integer "rating"
    t.text "comment"
    t.boolean "pinned"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "salons", force: :cascade do |t|
    t.string "name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "zip_code"
    t.string "gender_service"
    t.string "ethnicity_service"
    t.string "image"
    t.string "url"
    t.string "phone_num"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stylists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address_1"
    t.string "address_2"
    t.string "city"
    t.string "zip_code"
    t.string "gender_service"
    t.string "ethnicity_service"
    t.string "image"
    t.string "url"
    t.string "phone_num"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "user_type"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
