# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_04_124319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boulangeries", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.string "badge"
    t.integer "prix_cr"
    t.integer "prix_pc"
    t.time "time_open"
    t.time "time_close"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "star"
    t.bigint "user_id", null: false
    t.bigint "boulangerie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boulangerie_id"], name: "index_ratings_on_boulangerie_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.date "date"
    t.integer "price"
    t.integer "nb_pc"
    t.integer "nb_cr"
    t.bigint "user_id", null: false
    t.bigint "boulangerie_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["boulangerie_id"], name: "index_reservations_on_boulangerie_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ratings", "boulangeries", column: "boulangerie_id"
  add_foreign_key "ratings", "users"
  add_foreign_key "reservations", "boulangeries", column: "boulangerie_id"
  add_foreign_key "reservations", "users"
end
