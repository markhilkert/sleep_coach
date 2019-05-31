# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_31_153634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "digestions", force: :cascade do |t|
    t.string "type"
    t.integer "sleep_id"
    t.decimal "amount"
    t.time "time"
    t.boolean "increased_impact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer "sleep_id"
    t.time "time"
    t.decimal "duration"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sleeps", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "good_sleep"
    t.boolean "bath_before_bed"
    t.boolean "dark_room"
    t.boolean "cool_room"
    t.boolean "clock_visible"
    t.boolean "electronics_in_room"
    t.boolean "lie_in_bed"
    t.integer "room_temperature"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "track_alcohols", default: false
    t.boolean "track_caffeines", default: false
    t.boolean "track_exercises", default: false
    t.boolean "track_late_meals", default: false
    t.boolean "track_morning_suns", default: false
    t.boolean "track_naps", default: false
    t.boolean "track_relaxes", default: false
  end

end
