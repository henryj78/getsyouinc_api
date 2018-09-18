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

ActiveRecord::Schema.define(version: 2018_09_17_233326) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friends", force: :cascade do |t|
    t.integer "member_id"
    t.string "question1"
    t.string "question2"
    t.string "question3"
    t.string "question4"
    t.string "question5"
    t.string "question6"
    t.string "question7"
    t.string "question8"
    t.string "question9"
    t.string "question10"
    t.string "question11"
    t.string "question12"
    t.string "question13"
    t.string "question14"
    t.string "question15"
    t.string "question16"
    t.string "question17"
    t.string "question18"
    t.string "question19"
    t.string "question20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "member_type"
    t.string "member_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ccardnumber"
    t.string "card_expire_date"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "member_id"
    t.string "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playdates", force: :cascade do |t|
    t.integer "member_id"
    t.string "question1"
    t.string "question2"
    t.string "question3"
    t.string "question4"
    t.string "question5"
    t.string "question6"
    t.string "question7"
    t.string "question8"
    t.string "question9"
    t.string "question10"
    t.string "question11"
    t.string "question12"
    t.string "question13"
    t.string "question14"
    t.string "question15"
    t.string "question16"
    t.string "question17"
    t.string "question18"
    t.string "question19"
    t.string "question20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roommates", force: :cascade do |t|
    t.integer "member_id"
    t.string "question1"
    t.string "question2"
    t.string "question3"
    t.string "question4"
    t.string "question5"
    t.string "question6"
    t.string "question7"
    t.string "question8"
    t.string "question9"
    t.string "question10"
    t.string "question11"
    t.string "question12"
    t.string "question13"
    t.string "question14"
    t.string "question15"
    t.string "question16"
    t.string "question17"
    t.string "question18"
    t.string "question19"
    t.string "question20"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
