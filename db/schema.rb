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

ActiveRecord::Schema.define(version: 20140909062020) do

  create_table "data_rows", force: true do |t|
    t.integer  "sub_data_table_id"
    t.integer  "year"
    t.decimal  "t"
    t.decimal  "i"
    t.decimal  "small_n"
    t.decimal  "big_n"
    t.decimal  "p"
    t.decimal  "r"
    t.decimal  "d"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_tables", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_data_tables", force: true do |t|
    t.integer  "data_table_id"
    t.integer  "time_in_minutes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
