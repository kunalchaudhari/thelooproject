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

ActiveRecord::Schema.define(version: 20150418222555) do

  create_table "attachments", force: :cascade do |t|
    t.string   "caption"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  add_index "attachments", ["attachable_id", "attachable_type"], name: "index_attachments_on_attachable_id_and_attachable_type"

  create_table "loos", force: :cascade do |t|
    t.string   "lat"
    t.string   "lng"
    t.string   "name"
    t.text     "description"
    t.string   "open_hours"
    t.string   "closing_hours"
    t.text     "open_closing_note"
    t.string   "managed_by"
    t.string   "genders"
    t.integer  "no_of_toilets"
    t.integer  "no_of_bathrooms"
    t.integer  "no_of_urinals"
    t.boolean  "paid"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "location_name"
    t.string   "loo_type"
  end

end
