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

ActiveRecord::Schema.define(version: 2019_01_31_090135) do

  create_table "debentures", force: :cascade do |t|
    t.date "create_date"
    t.string "locality"
    t.integer "sum"
    t.integer "passport_id"
    t.integer "passport_1_id"
    t.integer "passport_2_id"
    t.index ["passport_1_id"], name: "index_debentures_on_passport_1_id"
    t.index ["passport_2_id"], name: "index_debentures_on_passport_2_id"
    t.index ["passport_id"], name: "index_debentures_on_passport_id"
  end

  create_table "passports", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "middle_name"
    t.string "issue_by"
    t.date "issue_where"
    t.string "serial"
    t.string "number"
    t.date "birth_date"
    t.string "birth_place"
    t.string "address_reg"
    t.string "address_resident"
    t.string "code"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "email"
    t.integer "passport_id"
    t.index ["passport_id"], name: "index_users_on_passport_id"
  end

end
