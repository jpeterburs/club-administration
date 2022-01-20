# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_01_20_120846) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bank_transactions", force: :cascade do |t|
    t.string "transaction_type"
    t.decimal "amount"
    t.string "purpose"
    t.datetime "transaction_time", precision: 6
    t.integer "transaction_year"
    t.string "sender"
    t.string "receiver"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.date "date_of_birth"
    t.string "occupation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
