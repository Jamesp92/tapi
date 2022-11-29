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

ActiveRecord::Schema[7.0].define(version: 2022_11_29_031626) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inventory_kegs", force: :cascade do |t|
    t.string "style"
    t.string "brand"
    t.string "brewery"
    t.date "date_received"
    t.boolean "priority", default: false
    t.decimal "abv", precision: 8, scale: 2
    t.decimal "price", precision: 8, scale: 2
    t.integer "serving_size"
    t.date "date_tapped"
    t.boolean "partial", default: false
    t.integer "serving_price"
    t.integer "keg_size"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taps", force: :cascade do |t|
    t.string "tap_style"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
