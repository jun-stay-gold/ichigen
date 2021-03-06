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

ActiveRecord::Schema.define(version: 2019_06_26_113812) do

  create_table "areas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "area"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "campaigns", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "service_id"
    t.text "text"
    t.date "date_for"
    t.date "date_last"
    t.text "conditions"
    t.integer "price_for"
    t.integer "price_last"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "service"
    t.text "text"
    t.text "address"
    t.string "tel"
    t.string "url"
    t.integer "area_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "access"
  end

end
