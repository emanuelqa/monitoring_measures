# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160727043227) do

  create_table "measures", force: :cascade do |t|
    t.date     "date"
    t.float    "arm",        limit: 24
    t.float    "waist",      limit: 24
    t.float    "hip",        limit: 24
    t.float    "calf",       limit: 24
    t.float    "thigh",      limit: 24
    t.float    "weigth",     limit: 24
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "measures", ["user_id"], name: "index_measures_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.string   "last_name",    limit: 255
    t.date     "birth_date"
    t.string   "email",        limit: 255
    t.string   "fone",         limit: 255
    t.string   "cell_phone",   limit: 255
    t.string   "street",       limit: 255
    t.string   "neighborhood", limit: 255
    t.string   "city",         limit: 255
    t.string   "state",        limit: 255
    t.string   "zip_code",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_foreign_key "measures", "users"
end
