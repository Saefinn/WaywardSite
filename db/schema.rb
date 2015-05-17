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

ActiveRecord::Schema.define(version: 20150509115550) do

  create_table "characters", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "nick_name"
    t.string   "title"
    t.text     "description"
    t.string   "traits"
    t.string   "skills"
    t.text     "history"
    t.string   "strength"
    t.string   "vitality"
    t.string   "agility"
    t.string   "dexterity"
    t.string   "intelligence"
    t.string   "mind"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id"

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "quantity"
    t.string   "effect"
    t.integer  "modifier"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "character_id"
  end

  add_index "items", ["character_id"], name: "index_items_on_character_id"

  create_table "statuses", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "statuses", ["user_id"], name: "index_statuses_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.text     "profile_description"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "character_names"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
