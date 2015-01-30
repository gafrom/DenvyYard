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

ActiveRecord::Schema.define(version: 20150127151723) do

  create_table "microposts", force: true do |t|
    t.text     "header"
    t.text     "content"
    t.integer  "playground_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["playground_id"], name: "index_microposts_on_playground_id"

  create_table "options", force: true do |t|
    t.text     "header"
    t.text     "content"
    t.text     "header2"
    t.text     "content2"
    t.integer  "playground_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "options", ["playground_id"], name: "index_options_on_playground_id"

  create_table "playgrounds", force: true do |t|
    t.string   "name"
    t.string   "text1"
    t.string   "text2"
    t.string   "text3"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_RU"
    t.string   "text4"
    t.string   "size"
    t.string   "price"
    t.string   "min_price"
  end

end
