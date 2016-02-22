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

ActiveRecord::Schema.define(version: 20160222064028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "listings", force: :cascade do |t|
    t.string   "listing_name",                          null: false
    t.text     "listing_description"
    t.integer  "property_type",             default: 0
    t.integer  "room_type",                 default: 0
    t.integer  "accomodates",               default: 1
    t.integer  "bedrooms",                  default: 0
    t.integer  "beds",                      default: 0
    t.integer  "bathrooms",                 default: 0
    t.string   "country"
    t.string   "zip_code"
    t.string   "state"
    t.string   "city"
    t.string   "street_address"
    t.string   "apt_suite_bldg"
    t.integer  "essentials",                default: 0
    t.integer  "tv",                        default: 0
    t.integer  "cable_tv",                  default: 0
    t.integer  "air_conditioning",          default: 0
    t.integer  "heating",                   default: 0
    t.integer  "kitchen",                   default: 0
    t.integer  "internet",                  default: 0
    t.integer  "wireless_internet",         default: 0
    t.integer  "anytime_checkin",           default: 0
    t.integer  "washer",                    default: 0
    t.integer  "pool",                      default: 0
    t.integer  "dryer",                     default: 0
    t.integer  "breakfast",                 default: 0
    t.integer  "free_parking",              default: 0
    t.integer  "gym",                       default: 0
    t.integer  "elevator",                  default: 0
    t.integer  "iron",                      default: 0
    t.integer  "hair_dryer",                default: 0
    t.integer  "laptop_friendly_workspace", default: 0
    t.integer  "smoking_allowed",           default: 0
    t.integer  "pets_allowed",              default: 0
    t.integer  "pets_live",                 default: 0
    t.integer  "wheelchair_accessible",     default: 0
    t.integer  "nightly_price",             default: 0
    t.integer  "weekly_discount",           default: 0
    t.integer  "monthly_discount",          default: 0
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "gender"
    t.string   "phone_number"
    t.text     "address"
    t.string   "provider",               default: "", null: false
    t.string   "uid",                    default: "", null: false
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
