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

ActiveRecord::Schema.define(version: 20170323145248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "humen", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "smile_count"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.integer  "smile_count"
    t.integer  "humen_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["humen_id"], name: "index_transfers_on_humen_id", using: :btree
  end

  add_foreign_key "transfers", "humen", column: "humen_id"
end