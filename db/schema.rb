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

ActiveRecord::Schema.define(version: 20170424070330) do

  create_table "books", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "author",            limit: 255
    t.integer  "genre",             limit: 4
    t.string   "isbn",              limit: 255
    t.integer  "users_id",          limit: 4
    t.integer  "uploaded_by_id",    limit: 4
    t.integer  "shared_for_week",   limit: 4
    t.integer  "WL1_id",            limit: 4
    t.integer  "WL2_id",            limit: 4
    t.integer  "WL3_id",            limit: 4
    t.integer  "borrowed_by_id",    limit: 4
    t.integer  "borrowed_for_week", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "borrow_request_by", limit: 4
    t.boolean  "borrow_status"
    t.integer  "WL1RequestWeeks",   limit: 4
    t.integer  "WL2RequestWeeks",   limit: 4
    t.integer  "WL3RequestWeeks",   limit: 4
    t.date     "bookSharedOn"
    t.date     "bookSharedTill"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "user_id_for",   limit: 4
    t.integer  "book_id",       limit: 4
    t.integer  "notifType",     limit: 4
    t.date     "deadline"
    t.integer  "user_id_about", limit: 4
    t.boolean  "seen"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
    t.string   "address",                limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
