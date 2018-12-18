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

ActiveRecord::Schema.define(version: 2018_12_18_015757) do

  create_table "organizations", force: :cascade do |t|
    t.integer "user_org_id"
    t.string "name"
    t.string "website"
    t.text "mission"
    t.string "memberlink"
    t.text "other"
    t.string "city"
    t.text "issues"
    t.string "gender"
    t.string "race"
    t.string "ability"
    t.string "age"
    t.string "religion"
    t.string "class_background"
    t.string "occupation"
    t.string "immigration_status"
    t.string "incarceration_status"
    t.string "housing_status"
    t.string "commitment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_org_id"], name: "index_organizations_on_user_org_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.text "issues"
    t.string "gender"
    t.string "race"
    t.string "ability"
    t.string "age"
    t.string "religion"
    t.string "class_background"
    t.string "occupation"
    t.string "immigration_status"
    t.string "incarceration_status"
    t.string "housing_status"
    t.string "commitment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_orgs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_user_orgs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_orgs_on_reset_password_token", unique: true
  end

end
