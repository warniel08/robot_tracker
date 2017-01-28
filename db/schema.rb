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

ActiveRecord::Schema.define(version: 20170128231409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.decimal  "height"
    t.decimal  "weight"
    t.integer  "manufacturer_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "model_designation"
    t.string   "price"
  end

  create_table "payments", force: :cascade do |t|
    t.string   "payment_id"
    t.float    "amount"
    t.string   "customer"
    t.string   "currency"
    t.string   "description"
    t.boolean  "paid"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "cardNumber"
    t.integer  "cardCVV"
    t.integer  "cardExpiryMonth"
    t.integer  "cardExpiryYear"
  end

  create_table "robots", force: :cascade do |t|
    t.string   "designation", default: "Unnamed"
    t.boolean  "inventory",   default: false
    t.integer  "model_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_id",     default: 0
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                        null: false
    t.string   "email",                           null: false
    t.string   "password_digest",                 null: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "admin",           default: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

end
