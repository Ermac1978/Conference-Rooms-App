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

ActiveRecord::Schema.define(version: 20141126192247) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "campuses", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.integer  "phone_num"
    t.integer  "zip_code"
    t.string   "street_add"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

# Could not dump table "conf_rooms" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "conference_room_features", force: true do |t|
    t.integer  "conf_room_id"
    t.integer  "feature_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "conference_room_features", ["conf_room_id"], name: "index_conference_room_features_on_conf_room_id"
  add_index "conference_room_features", ["feature_id"], name: "index_conference_room_features_on_feature_id"

  create_table "features", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "feat"
  end

  create_table "reservations", force: true do |t|
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.string   "notes"
    t.string   "event_title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "conf_room_id"
  end

  add_index "reservations", ["conf_room_id"], name: "index_reservations_on_conf_room_id"
  add_index "reservations", ["user_id"], name: "index_reservations_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "role",            limit: 25, default: "student"
    t.integer  "campus_id"
  end

  add_index "users", ["campus_id"], name: "index_users_on_campus_id"

end
