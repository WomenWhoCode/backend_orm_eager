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

ActiveRecord::Schema.define(version: 20160718004826) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comment1s", force: :cascade do |t|
    t.integer  "post1_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comment1s", ["post1_id"], name: "index_comment1s_on_post1_id", using: :btree

  create_table "comment1s_tag1s", id: false, force: :cascade do |t|
    t.integer "comment1_id"
    t.integer "tag1_id"
  end

  add_index "comment1s_tag1s", ["comment1_id"], name: "index_comment1s_tag1s_on_comment1_id", using: :btree
  add_index "comment1s_tag1s", ["tag1_id"], name: "index_comment1s_tag1s_on_tag1_id", using: :btree

  create_table "comment2s", force: :cascade do |t|
    t.integer  "post2_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comment2s", ["post2_id"], name: "index_comment2s_on_post2_id", using: :btree

  create_table "comment2s_tag2s", id: false, force: :cascade do |t|
    t.integer "comment2_id"
    t.integer "tag2_id"
  end

  add_index "comment2s_tag2s", ["comment2_id"], name: "index_comment2s_tag2s_on_comment2_id", using: :btree
  add_index "comment2s_tag2s", ["tag2_id"], name: "index_comment2s_tag2s_on_tag2_id", using: :btree

  create_table "folder3s", force: :cascade do |t|
    t.text     "ancestry"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "folder3s", ["ancestry"], name: "index_folder3s_on_ancestry", using: :btree

  create_table "post1s", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "post2s", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tag1s", force: :cascade do |t|
    t.string "tag"
  end

  create_table "tag2s", force: :cascade do |t|
    t.string "tag"
  end

  add_foreign_key "comment1s", "post1s"
  add_foreign_key "comment1s_tag1s", "comment1s"
  add_foreign_key "comment1s_tag1s", "tag1s"
  add_foreign_key "comment2s", "post2s"
  add_foreign_key "comment2s_tag2s", "comment2s"
  add_foreign_key "comment2s_tag2s", "tag2s"
end
