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

ActiveRecord::Schema[7.0].define(version: 2024_10_17_071048) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "movie_show_id", null: false
    t.bigint "seating_id", null: false
    t.date "booking_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["movie_show_id"], name: "index_bookings_on_movie_show_id"
    t.index ["seating_id"], name: "index_bookings_on_seating_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customer_name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.string "address"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.date "date"
    t.text "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_feedbacks_on_customer_id"
  end

  create_table "movie_shows", force: :cascade do |t|
    t.bigint "movie_id", null: false
    t.bigint "theatre_id", null: false
    t.date "date"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_shows_on_movie_id"
    t.index ["theatre_id"], name: "index_movie_shows_on_theatre_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "movie_title"
    t.string "genre"
    t.date "release_date"
    t.string "director"
    t.integer "duration"
    t.string "status"
    t.binary "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.date "date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_notifications_on_customer_id"
  end

  create_table "payments", force: :cascade do |t|
    t.bigint "booking_id", null: false
    t.bigint "snack_order_id", null: false
    t.date "payment_date"
    t.decimal "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["snack_order_id"], name: "index_payments_on_snack_order_id"
  end

  create_table "screens", force: :cascade do |t|
    t.bigint "theatre_id", null: false
    t.string "screen_name"
    t.integer "seat_capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["theatre_id"], name: "index_screens_on_theatre_id"
  end

  create_table "seatings", force: :cascade do |t|
    t.bigint "screen_id", null: false
    t.string "seat_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["screen_id"], name: "index_seatings_on_screen_id"
  end

  create_table "snack_orders", force: :cascade do |t|
    t.bigint "snack_id", null: false
    t.bigint "customer_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_snack_orders_on_customer_id"
    t.index ["snack_id"], name: "index_snack_orders_on_snack_id"
  end

  create_table "snacks", force: :cascade do |t|
    t.string "snack_name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theatres", force: :cascade do |t|
    t.string "theatre_name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "movie_shows"
  add_foreign_key "bookings", "seatings"
  add_foreign_key "feedbacks", "customers"
  add_foreign_key "movie_shows", "movies"
  add_foreign_key "movie_shows", "theatres"
  add_foreign_key "notifications", "customers"
  add_foreign_key "payments", "bookings"
  add_foreign_key "payments", "snack_orders"
  add_foreign_key "screens", "theatres"
  add_foreign_key "seatings", "screens"
  add_foreign_key "snack_orders", "customers"
  add_foreign_key "snack_orders", "snacks"
end
